class BlogPostController < ApplicationController
    def index
        @blogposts = BlogPost.all
    end
    #Show
    def show
        @blogpost = BlogPost.find(params[:id])
    end
    #New
    def new 
        @blogpost = BlogPost.new
    end 
    #Create
    def create
        @blogpost = BlogPost.create(
            title: params[:title],
            content: params[:content]
        )
        if @blogpost.valid?
            redirect_to blog_posts_path
        else 
            redirect_to new_blog_post_path
        end
    end 

    def destroy 
        @blogpost = BlogPost.find(params[:id])
        if @blogpost.destroy
            redirect_to blog_posts_path
        end
    end 


end
