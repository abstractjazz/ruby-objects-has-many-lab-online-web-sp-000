class Author

  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all?
    @@all
  end 


  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def posts
  Post.all.select {|post| post.author == self}
  end


  def self.post_count
    post.all.count
  end
end






# attr_accessor :name, :posts
#
#   @@post_count == 0
#
#   def initialize(name)
#     @name = name
#     @posts = []
#   end
#
# def posts
# Post.all.select {|post| post.author == self}
# end
#
#   def add_post(post)
#     @posts << post
#     post.author = self
#     @@post_count += 1
#   end
#
#   def add_post_by_title(title)
#     post = Post.new(title)
#     add_post(post)
#   end
#
#   def self.post_count
#     @@post_count
#   end
# end
