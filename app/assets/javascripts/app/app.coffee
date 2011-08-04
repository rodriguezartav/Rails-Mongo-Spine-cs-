require("spine")
require("spine.route")
require("spine.tmpl")
require("spine.manager")
require("spine.local")

Bee         = require("models/bee")

Bees            = require("controllers/bees")


class App extends Spine.Controller
	elements:
		"#bee" : "beeEl"

	constructor: ->
		super
		@bees = new Bees(el: @beeEl)

module.exports = App