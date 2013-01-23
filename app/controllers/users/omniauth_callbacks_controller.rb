require_dependency 'git_hub_authorization'

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    authorization = GitHubAuthorization.from_omniauth(request.env["omniauth.auth"])
    user = User.from_authorization(authorization)
    sign_in_and_redirect user, :event => :authentication
  end

  private

  def after_omniauth_failure_path_for(scope)
    root_path
  end
end
