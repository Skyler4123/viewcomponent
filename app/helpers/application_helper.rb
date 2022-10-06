module ApplicationHelper
    def current_user
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
    end

    def signed_in?
        !!current_user
    end

    def current_company
        if signed_in?
            @current_company = current_user.company
        end
    end

    def authorized
        if !signed_in?
            redirect_to signin_path
        end
    end
end
