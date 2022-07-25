class Public::CalendarsController < ApplicationController
 def index
    @calendar = Carendar.all
 end

  def new
    @bl = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    .create(blog_parameter)
    redirect_to blogs_path
  end


  def update
    
  
  end

  private
def blog_parameter
    params.require(:blog).permit(:title, :content, :start_time)
end
end 
