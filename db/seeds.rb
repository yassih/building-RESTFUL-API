# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	recipes = Recipe.create([
		{name: 'Baba Ghanoosh',image: 'http://toriavey.com/images/2011/06/Baba-Ghanoush-9-640x408.jpg'},
		{name: 'Spagetti',image: 'https://static01.nyt.com/images/2015/07/27/dining/27SPAGHETTI/27SPAGHETTI-superJumbo.jpg'},
		{name: 'Soba Noodles', image: 'http://farm2.static.flickr.com/1286/1277036228_c8640bc1e6.jpg'},
		{name: 'Eggs',image: 'http://www.seriouseats.com/recipes/assets_c/2014/06/20140622-eggs-benedict-01-thumb-1500xauto-404890.jpg'},
		{name: 'Pizza',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKLbvoxLrrl9EXz5bYzE9n6RoSrcZ-s7Lh6IhxSiwJUtn-Qlwa'},
		{name: 'PizzaSlices',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKLbvoxLrrl9EXz5bYzE9n6RoSrcZ-s7Lh6IhxSiwJUtn-Qlwa',ingredients_attributes: [{name: "eggplants"},
																																							 {name: "tomato"}]}
		])



	categories = Category.create([
		{name: 'Breakfast'},
		{name: 'Lunch'},
		{name: 'Dinner'},
		{name: 'Snack'}])

	ingredients = Ingredient.create([
		{name:"tomato"},
		{name:"spinach"},
		{name:"eggs"}
		])