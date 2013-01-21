class User < ActiveRecord::Base
  devise :omniauthable, :rememberable

  attr_accessible :nickname, :github_uid, :email, :remember_me
end
