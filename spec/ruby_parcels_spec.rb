require 'rspec'
require 'ruby_parcels'

describe Parcels do

  it "takes user input for length, width, weight and returns it" do
   test_parcel = Parcels.new(10,10,10,10)
   test_parcel.should be_an_instance_of Parcels
   test_parcel.length.should eq 10
   test_parcel.width.should eq 10
  end

  it "calculates volume based on l * w * h" do
   test_parcel = Parcels.new(10,10,10,10)
   test_parcel.volume.should eq 1000
  end

  it "should calculate cost of shipping based on formula (standard rate * cost per lb(weight/.5+volume/.5))" do
   test_parcel = Parcels.new(2,2,2,2)
   test_parcel.volume.should eq 8
   test_parcel.cost_to_ship.should eq 100
  end
end
