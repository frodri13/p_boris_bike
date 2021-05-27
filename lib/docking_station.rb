require_relative 'bike'

class DockingStation
    attr_reader :bike_no

    def initialize 
      @bike_no = []
    end
  
    def release_bike
      unless empty?
        fail 'No bikes available!' 
      end
      @bike_no.pop
    end   
  
    def dock(bike)
      raise 'Docking station full' if full?
      @bike_no << bike
    end

    private

    def full?
      @bike_no.length >= 20 ? true : false
    end

    def empty?
      @bike_no.length > 0 ? true : false
    end
  end