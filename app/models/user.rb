class User < ActiveRecord::Base
  devise :omniauthable, :rememberable

  attr_accessible :nickname, :github_uid, :email, :remember_me

  def self.from_authorization(authorization)
    find_or_create_by_github_uid(authorization.uid,
                                 nickname: authorization.nickname,
                                 email: authorization.email)
  end
end
