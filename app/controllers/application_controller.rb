class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :show_errors

    private 
    def show_errors(exception)
        render json: {message: "Friend could not be found!"}, status: :bad_request
    end
            
end
