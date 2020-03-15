class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def self.actors_list
    # full names of each actor associated with show
    actors.map do |t|
      t.actors
    end
  end
  
  
end