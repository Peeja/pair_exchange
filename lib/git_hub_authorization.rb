class GitHubAuthorization
  attr_reader :uid, :nickname, :email

  def initialize(omniauth_hash)
    @uid = omniauth_hash.fetch("uid")
    @email = omniauth_hash.fetch("info").fetch("email")
    @nickname = omniauth_hash.fetch("info").fetch("nickname")
  end

  def self.from_omniauth(omniauth_hash)
    new(omniauth_hash)
  end
end
