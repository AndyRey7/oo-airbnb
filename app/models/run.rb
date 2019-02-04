require_relative "./guest.rb"
require_relative "./listing.rb"
require_relative "./trip.rb"

require "pry"


guest1 = Guest.new("Luis")
guest2 = Guest.new("Andy")
guest3 = Guest.new("Jeffrey")

listing1 = Listing.new("Japan")
listing2 = Listing.new("Spain")
listing3 = Listing.new("Greece")

trip1 = Trip.new(guest1, listing2, "5 days")
trip2 = Trip.new(guest2, listing1, "4 weeks")
trip3 = Trip.new(guest3, listing1, "1 month")
trip4 = Trip.new(guest2, listing3, "4 days")


binding.pry
0
