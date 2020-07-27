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
#binding.pry
end