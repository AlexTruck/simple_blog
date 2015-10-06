class HomeController < ApplicationController
  def index
    @posts = Post.all({:select => 'posts.*, COUNT(comments.id) as comments_count', :joins => [:comments], :group => 'posts.id', :order => 'comments_count DESC', :limit => 3})
  end
end
