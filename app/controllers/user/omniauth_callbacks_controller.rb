class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
   def facebook
    p "================omniauth facebook  data starts here...."
    p env["omniauth.auth"]
    p "================omniauth facebook  data ends here...."
    #facebook oauth data like  these start here...
   #OmniAuth::AuthHash credentials=#<OmniAuth::AuthHash expires=true expires_at=1434268012 token=\"CAAE92l4oXbUBACeHD8aLPL7ASPYk7PyelpWYwn4jvZAZBjpCntmkZA34FFMAIS1xOFFvqYh1GUq7AcQa1OVmVj4IFAVZCDahpE93YGMiqLI4kpYQMXwHWcUUs8IlYQGV0UjVnyyE2EWwpkCVp2EpKybS8qqRdbpezBKjHXNZBPZCw7ZB9YWaUCxP7qvwdMdVqR90oYdL10ZBzprutPzXakoY\"> extra=#<OmniAuth::AuthHash raw_info=#<OmniAuth::AuthHash email=\"kotesh.rao506@gmail.com\" first_name=\"Koteshwer\" gender=\"male\" id=\"806307989451478\" last_name=\"Ravulapally\" link=\"https://www.facebook.com/app_scoped_user_id/806307989451478/\" locale=\"en_US\" middle_name=\"Rao\" name=\"Koteshwer Rao Ravulapally\" timezone=5.5 updated_time=\"2015-01-18T02:21:25+0000\" verified=true>> info=#<OmniAuth::AuthHash::InfoHash email=\"kotesh.rao506@gmail.com\" first_name=\"Koteshwer\" image=\"http://graph.facebook.com/806307989451478/picture\" last_name=\"Ravulapally\" name=\"Koteshwer Rao Ravulapally\" urls=#<OmniAuth::AuthHash Facebook=\"https://www.facebook.com/app_scoped_user_id/806307989451478/\"> verified=true> provider=\"facebook\" uid=\"806307989451478\"
    ################facebook oauth data like these end here..
     @user = User.find_for_oauth(env["omniauth.auth"])

         if @user.persisted?
          p 11111111111111111
           #sign_in_and_redirect @user, event: :authentication
           sign_in @user
           redirect_to "/"
           #set_flash_message(:notice, :success) if is_navigational_format?
         else
          p 666666666666666
           #session["devise.#{provider}_data"] = env["omniauth.auth"]
           redirect_to new_user_registration_url
         end
  end



def twitter
    p "================omniauth twitter  data starts here...."
    p env["omniauth.auth"]
    p "================omniauth twitter  data ends here...."
   #===================twitter oauth data like  these start here...#===================
   #OmniAuth::AuthHash credentials=#<OmniAuth::AuthHash secret=\"XSKssRX8iy6E3wJOFr7CNmtFxyGoKUsyGW0teMS954SXk\" token=\"384257187-rNNB0q6Vsruu00ijBTGpnk2Vxa7LaIcPCnTUvZof\"> extra=#<OmniAuth::AuthHash access_token=#<OAuth::AccessToken:0x00000006163b58 @token=\"384257187-rNNB0q6Vsruu00ijBTGpnk2Vxa7LaIcPCnTUvZof\", @secret=\"XSKssRX8iy6E3wJOFr7CNmtFxyGoKUsyGW0teMS954SXk\", @consumer=#<OAuth::Consumer:0x000000061dc030 @key=\"oYaiWz3UUsjYuFXp9cw9g\", @secret=\"lwjkYvWhZ3QvGde2LAFXA25wDjl8qkzyy1FqgUqXMPY\", @options={:signature_method=>\"HMAC-SHA1\", :request_token_path=>\"/oauth/request_token\", :authorize_path=>\"/oauth/authenticate\", :access_token_path=>\"/oauth/access_token\", :proxy=>nil, :scheme=>:header, :http_method=>:post, :oauth_version=>\"1.0\", :site=>\"https://api.twitter.com\"}, @http=#<Net::HTTP api.twitter.com:443 open=false>, @http_method=:post, @uri=#<URI::HTTPS https://api.twitter.com>>, @params={:oauth_token=>\"384257187-rNNB0q6Vsruu00ijBTGpnk2Vxa7LaIcPCnTUvZof\", \"oauth_token\"=>\"384257187-rNNB0q6Vsruu00ijBTGpnk2Vxa7LaIcPCnTUvZof\", :oauth_token_secret=>\"XSKssRX8iy6E3wJOFr7CNmtFxyGoKUsyGW0teMS954SXk\", \"oauth_token_secret\"=>\"XSKssRX8iy6E3wJOFr7CNmtFxyGoKUsyGW0teMS954SXk\", :user_id=>\"384257187\", \"user_id\"=>\"384257187\", :screen_name=>\"KoteshwerraoR\", \"screen_name\"=>\"KoteshwerraoR\"}, @response=#<Net::HTTPOK 200 OK readbody=true>> raw_info=#<OmniAuth::AuthHash contributors_enabled=false created_at=\"Mon Oct 03 11:01:20 +0000 2011\" default_profile=false default_profile_image=false description=\"\" entities=#<OmniAuth::AuthHash description=#<OmniAuth::AuthHash urls=[]>> favourites_count=0 follow_request_sent=false followers_count=36 following=false friends_count=77 geo_enabled=true id=384257187 id_str=\"384257187\" is_translation_enabled=false is_translator=false lang=\"en\" listed_count=0 location=\"Bangalore\" name=\" koteshwerrao.R\" notifications=false profile_background_color=\"000000\" profile_background_image_url=\"http://abs.twimg.com/images/themes/theme1/bg.png\" profile_background_image_url_https=\"https://abs.twimg.com/images/themes/theme1/bg.png\" profile_background_tile=false profile_banner_url=\"https://pbs.twimg.com/profile_banners/384257187/1424535158\" profile_image_url=\"http://pbs.twimg.com/profile_images/569165637902008320/KJPYhXh1_normal.jpeg\" profile_image_url_https=\"https://pbs.twimg.com/profile_images/569165637902008320/KJPYhXh1_normal.jpeg\" profile_link_color=\"4A913C\" profile_location=nil profile_sidebar_border_color=\"000000\" profile_sidebar_fill_color=\"000000\" profile_text_color=\"000000\" profile_use_background_image=false protected=false screen_name=\"KoteshwerraoR\" statuses_count=22 time_zone=nil url=nil utc_offset=nil verified=false>> info=#<OmniAuth::AuthHash::InfoHash description=\"\" image=\"http://pbs.twimg.com/profile_images/569165637902008320/KJPYhXh1_normal.jpeg\" location=\"Bangalore\" name=\" koteshwerrao.R\" nickname=\"KoteshwerraoR\" urls=#<OmniAuth::AuthHash Twitter=\"https://twitter.com/KoteshwerraoR\" Website=nil>> provider=\"twitter\" uid=\"384257187\">    ################facebook oauth data like these end here..
   ######twitter oauth data like these end here..#===================
    @user = User.find_for_oauth(env["omniauth.auth"])

         if @user.persisted?
          p 11111111111111111
           #sign_in_and_redirect @user, event: :authentication
           sign_in @user
           redirect_to "/"
           #set_flash_message(:notice, :success) if is_navigational_format?
         else
          p 666666666666666
           #session["devise.#{provider}_data"] = env["omniauth.auth"]
           redirect_to new_user_registration_url
         end
end


  def linkedin
    p "================omniauth linkedin  data starts here...."
    p env["omniauth.auth"]
    p "================omniauth linkedin  data ends here...."
    # redirect_to "/"
    #===================linkedin oauth data like  these start here...#===================
    #OmniAuth::AuthHash credentials=#<OmniAuth::AuthHash secret="339eaa74-f6b7-4a55-b800-72641835801a" token="58eca09c-f690-4203-8f5a-db28f04bc093"> extra=#<OmniAuth::AuthHash access_token=#<OAuth::AccessToken:0x00000006dd2830 @token="58eca09c-f690-4203-8f5a-db28f04bc093", @secret="339eaa74-f6b7-4a55-b800-72641835801a", @consumer=#<OAuth::Consumer:0x000000084185b8 @key="78pxg7ne04w5ry", @secret="RSW9mIblCxkhMYs5", @options={:signature_method=>"HMAC-SHA1", :request_token_path=>"/uas/oauth/requestToken", :authorize_path=>"/oauth/authorize", :access_token_path=>"/uas/oauth/accessToken", :proxy=>nil, :scheme=>:header, :http_method=>:post, :oauth_version=>"1.0", :site=>"https://api.linkedin.com", :authorize_url=>"https://www.linkedin.com/uas/oauth/authenticate"}, @http=#<Net::HTTP api.linkedin.com:443 open=false>, @http_method=:post, @uri=#<URI::HTTPS https://api.linkedin.com>>, @params={:oauth_token=>"58eca09c-f690-4203-8f5a-db28f04bc093", "oauth_token"=>"58eca09c-f690-4203-8f5a-db28f04bc093", :oauth_token_secret=>"339eaa74-f6b7-4a55-b800-72641835801a", "oauth_token_secret"=>"339eaa74-f6b7-4a55-b800-72641835801a", :oauth_expires_in=>"5183999", "oauth_expires_in"=>"5183999", :oauth_authorization_expires_in=>"5183999", "oauth_authorization_expires_in"=>"5183999"}, @response=#<Net::HTTPOK 200 OK readbody=true>> raw_info=#<OmniAuth::AuthHash emailAddress="kotesh.rao506@gmail.com" firstName="Koteshwerrao" headline="Software Engineer at Heurion Limited" id="BwHVtwUcoC" industry="Information Technology and Services" lastName="Ravulapally" location=#<OmniAuth::AuthHash country=#<OmniAuth::AuthHash code="in"> name="Bengaluru Area, India"> pictureUrl="https://media.licdn.com/mpr/mprx/0_NFyu8TJYcj4gZhiqqQpx8iagvgytN_tqn5e18GxTEZe_wF5N43u8aCI7U1puckP4vXYt75DzTS0r" publicProfileUrl="https://www.linkedin.com/in/koteshwarrao">> info=#<OmniAuth::AuthHash::InfoHash description="Software Engineer at Heurion Limited" email="kotesh.rao506@gmail.com" first_name="Koteshwerrao" headline="Software Engineer at Heurion Limited" image="https://media.licdn.com/mpr/mprx/0_NFyu8TJYcj4gZhiqqQpx8iagvgytN_tqn5e18GxTEZe_wF5N43u8aCI7U1puckP4vXYt75DzTS0r" industry="Information Technology and Services" last_name="Ravulapally" location="Bengaluru Area, India, IN" name="Koteshwerrao Ravulapally" nickname="Koteshwerrao Ravulapally" phone=nil urls=#<OmniAuth::AuthHash public_profile="https://www.linkedin.com/in/koteshwarrao">> provider="linkedin" uid="BwHVtwUcoC"
   ######linkedin oauth data like these end here..#===================
   @user = User.find_for_oauth(env["omniauth.auth"])
   if @user.persisted?
          p 11111111111111111
           #sign_in_and_redirect @user, event: :authentication
           sign_in @user
           redirect_to "/"
           #set_flash_message(:notice, :success) if is_navigational_format?
         else
          p 666666666666666
           #session["devise.#{provider}_data"] = env["omniauth.auth"]
           redirect_to new_user_registration_url
         end
  end
  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when omniauth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end



end
