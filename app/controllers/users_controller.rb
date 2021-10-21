class UsersController < ApplicationController
 def index
    render plain: User.all.map { |user|  user.to_pleasent_string }.join("\n")
 end 
 
 def show
    id = params[:id]
        user = User.find(id)
        render plain: user.to_pleasent_string
 end
end