puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese' }
trio_express = { name: 'Trio Express', address: 'ave Laurier, Montreal', category: 'japanese' }
nanami_sushi = { name: 'Nanami Sushi', address: 'rue Jean Talon, Montreal', category: 'japanese' }
stella = { name: 'Stella', address: 'avenue Laurier, Montreal', category: 'italian' }
new_china = { name: 'New China', address: 'Grenoble, France', category: 'chinese' }
quartier_general = { name: 'Quartier General', address: 'rue Gilford', category: 'french' }
baraque_a_frites = { name: 'Baraque à frites', address: 'Bruxelles, Belgique', category: 'belgian' }
ithq = { name: 'ITHQ', address: 'rue Sherbrooke', category: 'french' }
momo_sushi = { name: 'Momo Sushi', address: 'rue Sherbrooke', category: 'japanese' }
le_chien_fumant = { name: 'Le Chien Fumant', address: 'rue Gilford, Montreal', category: 'french' }

[dishoom, trio_express, nanami_sushi, stella, new_china, quartier_general, baraque_a_frites, ithq, momo_sushi, le_chien_fumant].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
