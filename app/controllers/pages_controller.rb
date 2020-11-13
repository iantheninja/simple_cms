class PagesController < ApplicationController
  def index
    @pages = Page.order('position ASC')
  end

  def show
    @page = Page.find(params[:id])
  end
  
  def update
  end

  def edit
  end

  def destroy
  end

  def delete
  end
end
