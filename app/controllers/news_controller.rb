class NewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
    before_action :ensure_admin, only: [:new, :create, :edit, :update, :destroy]
  
    def index
      if user_signed_in?
        @news = News.all
      else
        redirect_to new_user_session_path
      end
    end
  
    def new
      @news = News.new
    end
  
    def create
      @news = current_user.news.build(news_params)
      if @news.save
        redirect_to @news, notice: 'News was successfully created.'
      else
        render :new
      end
    end
  
    def show
      @news = News.find(params[:id])
    end

    def edit
      @news = News.find(params[:id])
    end
  
    def update
      @news = News.find(params[:id])
      if @news.update(news_params)
        redirect_to @news, notice: 'News was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @news = News.find(params[:id])
      @news.destroy
      redirect_to news_index_path, notice: 'News was successfully destroyed.'
    end
    
  
    private
  
    def news_params
      params.require(:news).permit(:title, :content)
    end
  
    def ensure_admin
      unless current_user&.admin?
        redirect_to authenticated_root_path, alert: "No tienes permiso para realizar esta acción."
      end
    end
  end
  
  