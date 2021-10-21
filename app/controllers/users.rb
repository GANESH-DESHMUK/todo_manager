class User < ActiveRecord::Base

    def index
        response_text = "List of Users"
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
    
        response_text = "Hey, #{name} we have created a user for you with email: #{email}"
        render plain: response_text
      end
    

end