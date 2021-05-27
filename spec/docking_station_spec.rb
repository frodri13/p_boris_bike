 require 'docking_station'

 describe DockingStation do
    it {is_expected.respond_to?(:release_bike)}
  
    describe '#release_bike' do 
      it 'releases a bike' do 
        
      bike = Bike.new
      subject.dock(bike)
   
      expect(subject.release_bike).to eq bike
    end
  end
  
    it 'doesnt have enough bikes' do 
     
     expect {subject.release_bike }.to raise_error('No bikes available!')
    end
  
    it 'docks something' do
      expect(subject.dock(Bike.new)).to eq([subject.bike_no.first])
    end
    
    it 'returns docked bikes' do
      subject.dock(Bike.new)
  
      expect(subject.bike_no.length).to eq(1)
    end

    it 'has a full docking station' do

        DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new)}
        expect { subject.dock(Bike.new).to raise_error('Docking station full')}
    end

    it 'has a 50 bike capacity when given an argument of 50' do
        docking_station = DockingStation.new(50)
        expect(docking_station.capacity).to eq(50)
    end
  end 