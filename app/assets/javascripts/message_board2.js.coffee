window.MessageBoard2 =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    MessageBoard2.Routers.post_router = new MessageBoard2.Routers.Posts
    Backbone.history.start()

$(document).ready ->
  MessageBoard2.initialize()
