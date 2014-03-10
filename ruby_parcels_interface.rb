require './lib/ruby_parcels'

@parcels = []

def main_menu
  puts "Press 'a' to add new package"
  puts "Type 'done' to list packages and checkout"
  puts "Press 'x' to exit"
  main_choice = gets.chomp
  if main_choice == 'a'
    add_parcel
  elsif main_choice == 'done'
    parcel_list
  else
    puts "Have a great day!"
  end
end

def add_parcel
  puts "Please enter package dimensions."
  puts "\n"
  puts "Length (inches) :"
  length = gets.chomp.to_i
  puts "Width (inches) :"
  width = gets.chomp.to_i
  puts "Height (inches) :"
  height = gets.chomp.to_i
  puts "Weight (inches) :"
  lb = gets.chomp.to_i
  @parcels << Parcels.new(length,width,height,lb)
  puts "Parcel added.\n\n"
  main_menu
end

def parcel_list
  puts "Here are all of your packages:"
  puts "\n"
  @parcels.each do |stuff|
    puts "Package length (inches):" + stuff.length.to_s
    puts "Package width (inches):" + stuff.width.to_s
    puts "Package height (inches):" + stuff.height.to_s
    puts "Package weight (LBs):" + stuff.length.to_s
    puts "\n"
    puts "Shipping cost is: $" + stuff.cost_to_ship.to_s
    puts "ATTN: Standard rate of $5 per package applies"
  end
  puts "\n"
  main_menu
end

main_menu

