class ApplicationController < ActionController::Base
    def root_redirect
        if user_signed_in?
          redirect_to news_index_path
        else
          redirect_to new_user_session_path
        end
      end
end
