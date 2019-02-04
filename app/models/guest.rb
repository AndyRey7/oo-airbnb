class Guest
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.pro_traveler
        arr = []
        self.all.each do |customer|
            if customer.name.count > 1
                arr << customer.name
            end
        end
        arr
    end

    def self.find_all_by_name(name)
        self.all.map do |person|
            person.name == name
        end
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def listings
        trips.map do |trip|
            trip.listing
        end
    end

    def trip_count
        trips.count
    end
    
end
