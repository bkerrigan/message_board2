class MessageBoard2.Views.EditPost extends Backbone.View
  el: '#app'
  template: JST['posts/edit_post']

  events:
    "click #save_post": "save_post"

  initialize: (options) ->
    @collection = options.collection
    @post_id = options.post_id
    @collection.bind 'reset', @render, @

  render: ->
    @post = @collection.get(@post_id)
    $(@$el).html(@template())
    data =
      name: @post.get("name")
      title: @post.get("title")
      message: @post.get("message")

    @post_form = new MessageBoard2.Views.PostForm(data: data)
    @post_form.render()

  save_post: (e) ->
    e.preventDefault() if e

    data = @post_form.get_post_data()
    @post.save data
    MessageBoard2.Routers.post_router.navigate("", {trigger: true})
