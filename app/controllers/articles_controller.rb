class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: :index 
  # before_action :authenticate_user!,:only =>[:new , :create,:edit, :update,:destroy  ]

  def index
  
    @article=Article.all
   
  
   
    end
    
  def new
    @article=Article.new
   
  end
  
  def show
    @article=Article.find(params[:id])
   
    # render plain:params[:id]
  end
  
  def create
    # render plain:params[:article].inspect
    @article=Article.new(article_params.merge(user_id:current_user.id))
    authorize! :create, @article
    if @article.save
            redirect_to @article
        else
            render 'new'
        end
        # redirect_to @article
    end
    def update
        @article = Article.find(params[:id])
        authorize! :update, @article
        if @article.update(article_params)
          redirect_to @article
        else
          render 'edit'
        end
      end


    def edit
        @article = Article.find(params[:id])
      end

def destroy
    @article = Article.find(params[:id])
    authorize! :destroy, @article
    @article.destroy
   
    redirect_to articles_path
  end
  private
    def article_params
            params.require(:article).permit(:title,:text)
    end


end
