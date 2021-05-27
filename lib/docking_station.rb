require_relative 'bike'



class DockingStation
    attr_reader :bike_no, :capacity
    
    DEFAULT_CAPACITY = 20
    
    def initialize(capacity = DEFAULT_CAPACITY)
      @capacity = capacity
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
      @bike_no.length >= DEFAULT_CAPACITY ? true : false
    end

    def empty?
      @bike_no.length > 0 ? true : false
    end
  end