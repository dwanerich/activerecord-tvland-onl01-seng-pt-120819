class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    self.actors do |t|
     return first_name + " " last_name
    end
  end
  
  
end