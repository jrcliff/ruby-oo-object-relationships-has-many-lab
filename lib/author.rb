class Author
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all.select {|post| post.author == self}
        #iterates through the class variable @@all for Post class 
        # if post.author equals this author self.posts will return those posts 
    end

    def add_post(post)
        @posts << post 
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        Post.all.count 
    end


end