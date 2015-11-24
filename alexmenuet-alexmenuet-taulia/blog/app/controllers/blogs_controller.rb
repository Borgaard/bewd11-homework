class BlogsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @user = current_user
        @search = ""
        p "User_ID"
        p @user.id
        if params[:search]
            @posts = Post.where("post_body LIKE (?)", "%#{params[:search]}%").order('created_at DESC').paginate(:page => params[:page], :per_page => 5,)
        else
            @posts = Post.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 5,)
        end
        p "This is @posts:"
        p @posts
        render "index"
    end
    
    def new
        @user = current_user
        @new_post = Post.new
        render "new_post"
    end
    
    def create
       @user = current_user
       p params
       @new_post = User.find(@user.id).posts.new(post_params)
       @new_post.save
       
       redirect_to blogs_path
    end
    
    def edit
        @user = current_user
        @post = Post.find(params[:id])
        @user_post = @post.user
        render "edit_post"
    end
     def update
         post = Post.find(params[:id]).update_attributes(post_params)
         !show
     end
    
    def show
        if params[:id]
            id = params[:id]
        else
            id = params[:blog_id]
        end
        @post = Post.find(id)
        @user = current_user
        @user_post = @post.user
        @new_comment = Comment.new
        @comments = @post.comments
        render "show_post"
    end
    
    def create_comment
        @new_comment = Post.find(params[:blog_id]).comments.new(comment_params)
        @new_comment.save
        @user = current_user
        @post = Post.find(params[:blog_id])
        @user_post = @post.user
        @new_comment = Comment.new
        @comments = @post.comments
        render "post"
    end
    
    def search
        !index
    end
    
    
private
    def post_params
        params.require(:post).permit(:title, :post_body, :image)
    end
    
    def comment_params
        params.require(:comment).permit(:username, :comment_body)
    end
end
