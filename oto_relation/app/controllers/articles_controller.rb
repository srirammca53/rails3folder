class ArticlesController < ApplicationController
def create
    @user = User.find(params[:user_id])
    @article = @user.articles.create(params[:article]) 
    
    redirect_to user_path(@user)
  end

 def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
     
    end
  end
end
