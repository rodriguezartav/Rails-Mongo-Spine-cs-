Bee = require("models/bee")

class Bees extends Spine.Controller

	elements:
		".content" : "content"


	events:
		"click .btn_save" : "on_save"
		"click .btn_delete" : "on_delete"
		"click .btn_edit" : "on_edit"
		"click .btn_new" : "on_new"
		"click .btn_cancel" : "on_cancel"

	constructor: ->
		super
		@content.html require("views/bees/loading")
		Bee.bind("change refresh create" , @on_list)
		Bee.bind("ajaxError", @on_error)

		Bee.fetch()
		$(".button").removeClass("active")
		$(".dynamic").addClass("active")


	on_error: (record, xhr, settings, error) ->
		alert settings

	on_list: =>
		bees = Bee.all()
		@content.html require("views/bees/list")
		@content.find('ul').append require("views/bees/list_item")(bees)
		

	on_save: (event) =>
		target = $(event.target).parent().parent().parent()
		item = target.item()
		
		txt_name = @content.find("#txt_name").val()
		txt_username = @content.find("#txt_username").val()
		txt_email = @content.find("#txt_email").val()
		txt_password = @content.find("#txt_password").val()
		
		if item
			item.name = txt_name
			item.username = txt_username
			item.email = txt_username
			item.password = txt_password
			item.save()
		else
			Bee.create({name: txt_name, username: txt_username , email: txt_email , password: txt_password, interests: ["movies","music","movies"] })

	on_delete: (event) ->
		target = $(event.target)
		item = target.item()
		item.destroy()

	on_new: (event) ->
		@content.html require("views/bees/new")

	on_edit: (event) ->
		item = $(event.target).item()
		@content.html require("views/bees/new")(item)


	on_cancel: (event) ->
		@on_list()

module.exports = Bees