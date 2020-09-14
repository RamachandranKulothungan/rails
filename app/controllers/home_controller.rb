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
        #views/controllername/insdex.html.erb
        #render plain:"Index"
        @categories = Category.all.includes(:posts)
        @tags = Tag.all
        @post_p = Post.published.order_by_latest
        #@post = ["post1", "post2"]
    end
    def contact
        
    end
    def about
        
    end
    def read
        @post = Post.find(params[:id])
    end

end