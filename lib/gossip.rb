#require 'pry'
require 'csv'

class Gossip
attr_accessor :author, :description

  def initialize(author, description)
    @author = author
    @description = description
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @description]
    end
  end

  def self.all
    all_gossips = [] #This starts the empty array
    CSV.read("./db/gossip.csv").each do |csv_line|  #Creates the gossips, line by line
      all_gossips << Gossip.new(csv_line[0], csv_line[1]) # gossips that have just been created
    end
    return all_gossips
  end
#binding.pry
end

#REMEMBER : To activate 'self' in the pry, type Gossip.all
#This is because 'self' is the same as the class name, and '.all' is the 
# method that acts on the class.