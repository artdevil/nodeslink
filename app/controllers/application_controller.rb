class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
    def after_sign_in_path_for(users)
      users_path
    end
    
    def after_sign_out_path_for(users)
      root_path
    end
    
    def stored_location_for(user)
      root_path
    end
end
