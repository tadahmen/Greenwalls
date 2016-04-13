# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

PlantsContainer.destroy_all
PlantsContainer.create ([
  {name: "little garden"},
  {name: "kitchen garden"}
])

Plant.destroy_all
Plant.create ([
  {name: "Rose", picture: "https://c7.staticflickr.com/4/3017/2618479990_26451c14d9_b.jpg"},
  {name: "Thyme", picture:"http://healthimpactnews.com/wp-content/uploads/sites/2/2014/05/Thyme-leaves.jpg"},
  {name: "Hyacinth", picture: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR6BtX2baeseES00IcH74kzqdUHh1qNaRuP4M_tKfQqZZcvnx1Cmw"},
  {name: "Bird!", picture: "https://upload.wikimedia.org/wikipedia/commons/b/b3/Hyacinth_Macaw.jpg"},
  {name: "A fish", picture: "http://www.precut.nl/afbeeldingen-G/Goudvissen/goudvis4.png"}, 
  {name: "Tuinkabouter", picture: "https://bestel.nl/media/catalog/product/cache/1/image/500x500/9df78eab33525d08d6e5fb8d27136e95/Outdoor/zombie_tuinkabouter/Zombie_Tuinkabouter500.jpg"}
])

PlantSpot.destroy_all
testspot1=PlantSpot.create ({x_position: 0, plants_container: PlantsContainer.first, plant: Plant.first})
testspot2=PlantSpot.create ({x_position: 1, plants_container: PlantsContainer.first})
testspot3=PlantSpot.create ({x_position: 2, plants_container: PlantsContainer.first, plant: Plant.where(name:"Hyacinth").first})
testspot4=PlantSpot.create ({x_position: 0, plants_container: PlantsContainer.where(name:"kitchen garden").first, plant: Plant.where(name:"Thyme").first})
