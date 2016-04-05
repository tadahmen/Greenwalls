# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

PlantsContainer.destroy_all
PlantsContainer.create ([
  {name: "little garden"}
])

PlantSpot.destroy_all
testspot1=PlantSpot.create ({x_position: 0, plants_container: PlantsContainer.first})
testspot2=PlantSpot.create ({x_position: 1, plants_container: PlantsContainer.first})
testspot3=PlantSpot.create ({x_position: 2, plants_container: PlantsContainer.first})

Plant.destroy_all
Plant.create ([
  {name: "Rose", picture: "https://c7.staticflickr.com/4/3017/2618479990_26451c14d9_b.jpg", },
  {name: "Thyme", picture:"http://healthimpactnews.com/wp-content/uploads/sites/2/2014/05/Thyme-leaves.jpg"},
  {name: "Hyacinth", picture: "https://upload.wikimedia.org/wikipedia/commons/b/b3/Hyacinth_Macaw.jpg"}
])
