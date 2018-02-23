# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cases = Case.create([{status: "pending"}, {status: "pending"}, {status: "complete"}])
image1_c1 = Image.create(status: "pending",
	case: cases.first, 
	image_url: "https://s3-us-west-2.amazonaws.com/hobbyfarms.com/wp-content/uploads/2017/02/27200444/parasites_thinkstock.jpg")
image2_c1 = Image.create(status: "pending",
	case: cases.first, 
	image_url: "http://kittenrescue.org/wp-content/uploads/2017/03/KittenRescue_KittenCareHandbook.jpg")
image1_c2 = Image.create(status: "complete",
	case: cases.second, 
	image_url: "https://s3-us-west-2.amazonaws.com/hobbyfarms.com/wp-content/uploads/2017/02/27200444/parasites_thinkstock.jpg")
image2_c2 = Image.create(status: "pending",
	case: cases.second, 
	image_url: "http://kittenrescue.org/wp-content/uploads/2017/03/KittenRescue_KittenCareHandbook.jpg")
image1_c3 = Image.create(status: "pending",
	case: cases.second, 
	image_url: "https://s3-us-west-2.amazonaws.com/hobbyfarms.com/wp-content/uploads/2017/02/27200444/parasites_thinkstock.jpg")
image2_c3 = Image.create(status: "u",
	case: cases.second, 
	image_url: "http://kittenrescue.org/wp-content/uploads/2017/03/KittenRescue_KittenCareHandbook.jpg")
Redaction.create(h:33, w:33, axis: "4px,9px", image_id: image1_c2.id)
Redaction.create(h:25, w:25, axis: "34px,34px", image_id: image1_c2.id)
Redaction.create(h:12, w:12, axis: "134px,205px", image_id: image2_c1.id)
Redaction.create(h:40, w:40, axis: "100px,175px", image_id: image2_c1.id)
Redaction.create(h:65, w:65, axis: "54px,200px", image_id: image1_c3.id)
Redaction.create(h:75, w:75, axis: "107px,75px", image_id: image1_c3.id)