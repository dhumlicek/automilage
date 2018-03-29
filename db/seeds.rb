# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Vehicle.destroy_all
Milage.destroy_all


due_date = Date.today + 1.year
start_date = Date.today - 6.month
start_miles = rand(10...99) * 1000

#User.create! [
#    { username: 'Fiorina', password_digest: 'alphabet' },
#    { username: 'Trump', password_digest: 'no_idea' },
#    { username: 'Carson', password_digest: 'abc123' },
#    { username: 'Clinton', password_digest: 'password1' }
#]


Vehicle.create! [
    { year: '2015', make: 'Toyota', model: 'Camry', color: 'White', owned: 'true' },
    { year: '2007', make: 'Toyota', model: 'RAV4', color: 'Red', owned: 'true' },
    { year: '2013', make: 'Hyundai', model: 'Genesis Coupe', color: 'White', owned: 'false' }
]


#User.find_by!(username: 'Fiorina').create_profile(first_name: 'Carly', last_name: 'Fiorina', birth_year: 1954, gender: 'female')
#User.find_by!(username: 'Trump').create_profile(first_name: 'Donald', last_name: 'Trump', birth_year: 1946, gender: 'male')
#User.find_by!(username: 'Carson').create_profile(first_name: 'Ben', last_name: 'Carson', birth_year: 1951, gender: 'male')
#User.find_by!(username: 'Clinton').create_profile(first_name: 'Hillary', last_name: 'Clinton', birth_year: 1947, gender: 'female')

vehicles = Vehicle.all
new_date = start_date
new_miles = start_miles


#100.times { |index| Book.create! name: "Book#{index}", author: "Author#{index}" }
#vehicles.each do |vehicle|
#    Milage.create!(vehicle_id: vehicle.id, date: new_date, milage: start_miles, cost: 30.00 )
#    new_date = new_date + 7.day
#    new_miles = new_miles + 300
#
#end

vehicles.each do |vehicle|
    new_miles = rand(10...99) * 1000
    10.times { |index|
        new_cost = rand(10...40)
        Milage.create!(vehicle_id: vehicle.id, date: new_date, milage: new_miles, cost: new_cost )
        new_date = new_date + 7.day
        new_miles = new_miles + 300    
    }
end