class UsersController < ApplicationController
 def index
    render plain: User.all.map { |user|  user.to_pleasent_string }.join("\n")
 end 
 
 def show
    id = params[:id]
        user = User.find(id)
        render plain: user.to_pleasent_string
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

    resultant_text = "Hello, #{name} we have created a user for you with email: #{email}"
    render plain: resultant_text
  end
end