class TagsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tag, only: [:show, :destroy, :edit, :update]
  def index
    @tags = Tag.all
    if params[:format] == "html"
    elsif params[:format] == "json"
        render json: @tags
    end
  end

  def show
    #@tag = Tag.find(params[:id])
    
  end

  def new
    @tag = Tag.new
  end

  def create
    p params
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path,notice: "Tag was successfully added"
    else
      render :new 
    end
  end
  def edit
    
  end

  def update

    if @tag.update(tag_params)
      redirect_to tags_path,notice: "Tag was successfully updated"
    else
      render :edit 
    end
  end
  def destroy
    #@tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path, notice: "Tag was successfully deleted"
  end
  private 
  def set_tag
    @tag = Tag.find(params[:id])
    
  end
  def tag_params
    params.require(:tag).permit(:name)
    
  end
end
