class MessageBoard2.Views.PostsIndex extends Backbone.View
  el: '#app'
  template: JST['posts/index']

  initialize: ->
    @collection.bind 'reset', @render, @

  render: ->
    $(@el).html(@template())

    @collection.each (post) =>
      view = new MessageBoard2.Views.PostItem model: post
      @$('#posts').append(view.render().el)

    @
