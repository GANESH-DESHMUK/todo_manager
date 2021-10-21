class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        resultant_text = "Below are list of users:"
        render plain: User.all.map { |user| user.to_pleasent_string }.join("\n")
      end
    
      def show
        id = params[:id]
        user = User.find(id)
        render plain: user.to_pleasant_string
      end
    
      def create
        name = params[:name]
        email = params[:email]
        password = params[:password]
    
        new_user = User.create!(
          name: name,
          email: email,
          password: password,
        )
    
        resultant_text = "Hey, #{name} we have created a user for you with email: #{email}"
        render plain: response_text
      end
    
end