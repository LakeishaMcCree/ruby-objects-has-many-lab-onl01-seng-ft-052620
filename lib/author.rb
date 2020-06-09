class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all
    end

    def add_post(post)
        Post.all.each do |post|
            post.author = self
        end
    end

    def add_post_by_title(post_title)
        t = Post.new(post_title)
        add_post(t)
    end

    def self.post_count
        Post.all.count 
    end
end