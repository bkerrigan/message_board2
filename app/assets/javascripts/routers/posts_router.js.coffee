class MessageBoard2.Routers.Posts extends Backbone.Router
  routes:
    '': 'index'
    'new': 'newPost'
    ':id/edit': 'editPost'

  initialize: () ->
    @posts = new MessageBoard2.Collections.Posts
    @posts.fetch()

  index: ->
    @showHeader()
    new MessageBoard2.Views.PostsIndex collection: @posts
    @posts.fetch()

  newPost: ->
    @showHeader()
    new_post = new MessageBoard2.Views.NewPost collection: @posts
    new_post.render()

  editPost: (post_id) ->
    @showHeader()
    edit_post = new MessageBoard2.Views.EditPost collection: @posts, post_id: post_id
    edit_post.render()

  showHeader: ->
    header = new MessageBoard2.Views.Header()
    header.render()
