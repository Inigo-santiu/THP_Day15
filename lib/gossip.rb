
require 'csv'

class Gossip
attr_accessor :author, :description,

  def initialize
    @author
    @description
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << ["Mon super auteur", "Ma super description"]
    end
  end
 
end