class CommentsController < ApplicationController
  before_filter :get_post

  def index
    @comments = @post.comments

    if request.xhr?
      render :json => @comments.to_json and return
    end
  end

  def show
    @comment = @post.comments.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @comment = @post.comments.build
  end

  def create
    @comment = @post.comments.build(params[:comment])
    if @comment.save
      redirect_to @post
    else
      render :action => "new"
    end
  end

  def edit
    @comment = @post.comments.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      redirect_to post_comment_url(@post, @comment)
    else
      render :action => "edit"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to post_comments_path(@post) }
      format.xml  { head :ok }
    end
  end

  private

  def get_post
    @post = Post.find(params[:post_id])
  end

end
