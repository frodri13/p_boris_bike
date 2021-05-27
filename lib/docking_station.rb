require_relative 'bike'

class DockingStation
    attr_reader :bike_no

    def initialize 
      @bike_no = []
    end
  
    def release_bike
      unless @bike_no.length > 0
        fail 'No bikes available!' 
      end
      @bike_no.pop
    end   
  
    def dock(bike)
      raise 'Docking station full' if @bike_no.length >= 20
      @bike_no << bike
    end
  end