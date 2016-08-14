class User < ActiveRecord::Base

  enum authorization: { root_user: 0, member: 1 }
  enum enabled: { deleted: 0, active: 1 }

  def self.find_or_create_user(auth_hash_info)
    email = auth_hash_info['email']
    user_image_url = auth_hash_info[:image]
    login_id = email.split('@', 2).first

    active.find_or_create_by(login_id: login_id) do |user|
      user.nickname = "#{auth_hash_info['last_name']}　#{auth_hash_info['first_name']}"
      user.user_image_url = user_image_url
      user.authorization = 1
      user.enabled = 1
    end
  end

end
