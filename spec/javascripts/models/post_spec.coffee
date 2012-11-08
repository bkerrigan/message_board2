describe "Post Model", ->
  it "should exist", ->
    expect(MessageBoard2.Models.Post).toBeDefined()

  describe "Attributes", ->
    it "should have default attributes", ->
      post = new MessageBoard2.Models.Post
      expect(post.attributes.name).toBeDefined()
      expect(post.attributes.title).toBeDefined()
      expect(post.attributes.message).toBeDefined()

    it "should initalize attributes", ->
      name = "Timmy Tester"
      title = "Test title"
      message = "Testing post attributes"
      post = new MessageBoard2.Models.Post
        title: title
        name: name
        message: message

      expect(post.get('name')).toEqual(name)
      expect(post.get('title')).toEqual(title)
      expect(post.get('message')).toEqual(message)

