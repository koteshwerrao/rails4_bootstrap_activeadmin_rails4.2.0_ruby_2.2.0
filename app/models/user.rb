class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
#:timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable, :lockable

devise :omniauthable, :omniauth_providers => [:facebook,:twitter,:linkedin]
attr_accessor :current_password


def self.find_for_oauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  	user.skip_confirmation! 
   p auth.info
  	if auth.provider == "twitter"  or auth.provider == "linkedin"
  		p 1111111111111111111
      auth_email = auth.info.nickname+auth.uid+"@test.com" if auth.provider == "twitter"
      auth_email = auth.info.email if auth.provider == "linkedin"
      auth_prov = auth.provider
      auth_uid = auth.uid
    else
    	p 22222222222222222
  	  auth_email = auth.info.email
  	   auth_prov = auth.info.name 
  	     auth_uid = auth.info.uid  
     end
    user.email = auth_email
    user.password = Devise.friendly_token[0,20]
    user.provider = auth_prov
    user.uid = auth_uid
  end
end

end
