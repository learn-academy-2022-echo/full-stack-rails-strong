class BlogPostController < ApplicationController
    def index
        @blogposts = BlogPost.all
    end

    def show
        @blogpost = BlogPost.find(params[:id])
    end
end
