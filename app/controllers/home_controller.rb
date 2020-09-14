class HomeController < ApplicationController
    def ok
        #nil
        #try to render default view
        #views/controllername/index.html.erb
        render plain:"OK"
    end
    def index
        #nil
        #try to render default view
        #views/controllername/index.html.erb
        #render plain:"Index"
        @categories = Category.all.includes(:posts)
        @tags = Tag.all.includes(:posts)
        @posts = Post.includes(:tags).includes(:category).published.order_by_latest
        #@post = ["post1", "post2"]
    end
    def contact
        
    end
    def tag_search
        if params.has_key? (:tag)
            result = Tag.where(name: params[:tag])
            @posts = result.blank? ? [] : result.first.posts
        end

        render "home/index"
    end

    def category_search
        if params.has_key? (:category)
            @posts = Category.where(name: params[:category]).first.posts
        end
        render "home/index"
    end

    def about
        
    end
    def read
        @post = Post.find(params[:id])
    end

end