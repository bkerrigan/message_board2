class MessageBoard2.Views.PostItem extends Backbone.View
  template: JST['posts/item']
  class: "post_item"

  events:
    'click a.remove-post': 'remove_post'

  initialize: ->
    @model.bind 'destroy', @remove, @
    $(@el).attr 'class', @class

  render: ->
    $(@el).html(@template(post: @model))
    @

  remove_post: ->
    @model.destroy()
