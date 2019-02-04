class Listing
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trip_count
        trips.count
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        trips.map do |trip|
            trip.guest
        end
    end

    def self.find_all_by_city(name)
        arr = []
        self.all.each do |city_name|
            if city_name.name == name
                arr << city_name
            end
        end
        arr
    end

    def self.most_popular
        self.all.each do |location|
            if location.name.count > 1
                location.name
            end
        end
    end

end
