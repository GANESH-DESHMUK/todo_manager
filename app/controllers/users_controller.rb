class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
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
      password: password
    )

    resultant_text = " created a user #{name} having email id: #{email}"
    render plain: resultant_text
  end

  def login
    email = params[:email]
    password = params[:password]
    user = User.find_by(email: email, password: password)
    render plain: user.present?
  end
end