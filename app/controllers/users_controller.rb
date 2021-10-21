class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
      render plain: User.all.map { |users| users.to_pleasent_string }.join("\n")
    end
end