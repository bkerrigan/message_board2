class MessageBoard2.Views.PostItem extends Backbone.View
  template: JST['posts/item']

  events:
    'click a.remove-post': 'remove_post'

  initialize: ->
    @model.bind 'destroy', @remove, @

  render: ->
    $(@el).html(@template(post: @model))
    @

  remove_post: ->
    @model.destroy()
