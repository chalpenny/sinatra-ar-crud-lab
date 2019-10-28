#Placeholder for a model

class Article < ActiveRecord::Base
    #attr_accessor :title, :content

    # @@all = []

    # def self.all
    #     @@all << self
    # end

    def initialize(title, content)
        binding.pry
        @title = title
        @content = content
    end
    
end