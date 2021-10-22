class User < ActiveRecord::Base

  def to_pleasent_string
    "#{id}. #{name}, #{email}"
  end

end