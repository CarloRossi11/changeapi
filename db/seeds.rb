# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
    Opp.create(
        title: Faker::TvShows::TwinPeaks.quote,
        opp_type: Faker::Movies::StarWars.character,
        opp_description: Faker::Movies::StarWars.quote,
        more_info: Faker::PhoneNumber.cell_phone
    )
end