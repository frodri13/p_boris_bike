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
  
    # it 'docks something' do
    #   bike = Bike.new
    #   expect(subject.dock(bike)).to eq bike
    # end
    
    # it 'returns docked bikes' do
    #   bike = Bike.new
    #   subject.dock(bike)
  
    #   expect(subject.bike).to eq bike
    # end

    it 'has a full docking station' do

        DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new)}
        expect { subject.dock(Bike.new).to raise_error('Docking station full')}
    end
  end 