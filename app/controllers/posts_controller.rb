class PostsController < ApplicationController
  
  before_filter :authenticate_user! ,except: [:index, :show]
  layout "blog"
  
  
  def index
    @posts = Post.all.paginate :page => params[:page],:per_page=>30
  end

  def new
    @post = current_user.posts.new
  end

  def create
     @post = current_user.posts.build(post_params)
     if @post.save
       flash[:success] = "post created!"
       redirect_to root_url
     else
       render :new
     end
   end
   
   def show
     @post = Post.find(params[:id])
   end 
   
   def edit
      @post = Post.find(params[:id])
    end
    
    def update
       @post = Post.find(params[:id])
        @post = current_user.posts.update_attributes(post_params)
        if @post.save
          flash[:success] = "post created!"
          redirect_to root_url
        else
          render :edit
        end
     end

   def destroy
     @post.destroy
     redirect_to root_url
   end

   private

     def post_params
       params.require(:post).permit(:title, :body)
     end
 
end