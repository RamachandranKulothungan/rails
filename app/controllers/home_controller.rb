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
        @categories = Category.all
        @tags = Tag.all
        @post = ["post1", "post2"]
    end
    def contact
        
    end
    def about
        
    end
end