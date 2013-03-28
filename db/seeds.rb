# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

reviews = Review.create[
	{
		comment: 'Awesome awesome awesome sauce!', 
		product_id: 1, 
		user_id: 1
	}
	{
		comment: 'Cruddy! Do not buy',
		product_id: 1, 
		user_id: 1
	}
	{
		comment: 'Loverly', 
		product_id: 1, 
		user_id: 1
	}
	{
		comment: 'Awesome awesome awesome sauce!', 
		product_id: 1, 
		user_id: 1
	}
	{
		comment: 'Awesome awesome awesome sauce!', 
		product_id: 2, 
		user_id: 1
	}
	{
		comment: 'Cruddy! Do not buy',
		product_id: 2, 
		user_id: 1
	}
	{
		comment: 'Loverly', 
		product_id: 2, 
		user_id: 1
	}
	{
		comment: 'Awesome awesome awesome sauce!', 
		product_id: 3, 
		user_id: 1
	}
]