require 'git_hub_authorization'

describe GitHubAuthorization do
  context "for @peeja" do
    subject {
      GitHubAuthorization.from_omniauth({
        "provider" => "github",
        "uid" => 2407,
        "info" => {
          "nickname" => "Peeja",
          "email" => "peter.a.jaros@gmail.com",
          "name" => "Peter Jaros",
          "image" => "https://secure.gravatar.com/avatar/d069ac0170dc6c93bad77734258fadae?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
          "urls" => {
            "GitHub" => "https://github.com/Peeja",
            "Blog" => "http://blog.peeja.com/"
          }
        },
        "credentials" => {
          "token" => "0000000000000000000000000000000000000000",
          "expires" => false
        },
        "extra" => {
          "raw_info" => {
            "location" => "Northampton, MA",
            "type" => "User",
            "events_url" => "https://api.github.com/users/Peeja/events{/privacy}",
            "repos_url" => "https://api.github.com/users/Peeja/repos",
            "subscriptions_url" => "https://api.github.com/users/Peeja/subscriptions",
            "url" => "https://api.github.com/users/Peeja",
            "gravatar_id" => "d069ac0170dc6c93bad77734258fadae",
            "public_repos" => 83,
            "hireable" => false,
            "received_events_url" => "https://api.github.com/users/Peeja/received_events",
            "avatar_url" => "https://secure.gravatar.com/avatar/d069ac0170dc6c93bad77734258fadae?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
            "email" => "peter.a.jaros@gmail.com",
            "starred_url" => "https://api.github.com/users/Peeja/starred{/owner}{/repo}",
            "bio" => "",
            "company" => "",
            "organizations_url" => "https://api.github.com/users/Peeja/orgs",
            "login" => "Peeja",
            "updated_at" => "2013-01-22T17:29:55Z",
            "gists_url" => "https://api.github.com/users/Peeja/gists{/gist_id}",
            "followers" => 24,
            "following" => 11,
            "name" => "Peter Jaros",
            "blog" => "http://blog.peeja.com/",
            "html_url" => "https://github.com/Peeja",
            "followers_url" => "https://api.github.com/users/Peeja/followers",
            "id" => 2407,
            "public_gists" => 34,
            "created_at" => "2008-03-06T16:43:29Z",
            "following_url" => "https://api.github.com/users/Peeja/following"
          }
        }
      })
    }

    its(:uid) { should == 2407 }
    its(:nickname) { should == "Peeja" }
    its(:email) { should == "peter.a.jaros@gmail.com" }
  end
end
