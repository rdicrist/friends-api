class Api::V1::FriendsController < ApplicationController
    # list all available friends 
    def index
        friends = Friend.all 

        if friends 
            render json: {status: "SUCCESS", message: "Fetched all the friends successfully!", data: friends}, status: :ok
        else
            render json: friends.errors, status: :bad_request
        end
    end

    def create
        friend = Friend.new(friend_params)

        if friend.save 
            render json: {status: "SUCCESS", message: "Friend was created successfully!", data: friend}, status: :created
        else 
            render json: friend.errors, status: :unprocessable_entity
        end
    end

    def show 
        friend = Friend.find(params[:id]) # not found error handled in Application Controller
        render json: {status: "SUCCESS", message: "Friend was successfully found!", data: friend}, status: :ok
    end

    def update
        friend = Friend.find(params[:id]) # not found error handled in Application Controller
        if friend.update!(friend_params) 
            render json: {status: "SUCCESS", message: "Friend was successfully updated!", data: friend}, status: :ok
        else 
            render json: {message: "Friend could not be updated!"},
            status: :unprocessable_entity
        end 
    end

    def destroy
        friend = Friend.find(params[:id]) # not found error handled in Application Controller
        friend.destroy
        render json: {status: "SUCCESS", message: "Friend was siccessfully deleted!"}, status: :ok
    end


    private
    def friend_params
        params.require(:friend).permit(:name, :location, :email, :twitter, :phone)
    end

end
