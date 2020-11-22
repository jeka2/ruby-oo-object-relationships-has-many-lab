class Post
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author=(author)
        @author = author
        author.posts = self
    end

    def author_name
        if author 
            return author.name
        end
        nil
    end
end