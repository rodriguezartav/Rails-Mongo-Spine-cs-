class Bee extends Spine.Model
	@configure "Bee", 
							"name" ,"password", "email" , "username" ,"interests"


module.exports = Bee
Bee.extend(Spine.Model.Ajax)
