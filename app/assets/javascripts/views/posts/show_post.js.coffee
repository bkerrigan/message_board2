class MessageBoard2.Views.ShowPostItem extends Backbone.View
  el: '#app'
  template: JST['posts/show']
  class: "show_post"

  events:
    "click a.remove-post": "remove_post"

  initialize: (options) ->
    @post_id = options.post_id
    @collection = options.collection
    @collection.bind 'reset', @render, @

  render: ->
    @model = @collection.get(@post_id)
    @model.bind 'destroy', @remove, @
    $(@$el).html(@template(post: @model))

  remove_post: ->
    @model.destroy()
