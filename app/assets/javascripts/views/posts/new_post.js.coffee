class MessageBoard2.Views.NewPost extends Backbone.View
  el: '#app'
  template: JST['posts/new_post']

  events:
    "click #create_post": "create_post"

  render: ->
    $(@$el).html(@template())
    @post_form = new MessageBoard2.Views.PostForm()
    @post_form.render()

  create_post: (e) ->
    e.preventDefault() if e

    data = @post_form.get_post_data()
    @collection.create data,
      success: _.bind(->
        @collection.trigger "sync"
        MessageBoard2.Routers.post_router.navigate("", {trigger: true})
      , @)
