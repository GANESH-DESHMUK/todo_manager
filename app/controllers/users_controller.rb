class UsersController < ApplicationController
    
    def index
      render plain: User.all.map{ |user| user.to_pleasent_string }.join("\n")
    end