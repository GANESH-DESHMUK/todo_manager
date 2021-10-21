require 'active_record'

class User < ActiveRecord::Base

  def to_pleasent_string
    "#{id}. #{name}, #{email}, #{password}"
  end

end