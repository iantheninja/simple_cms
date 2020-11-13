class PagesController < ApplicationController
  def index
    @pages = Page.order('position ASC')
  end

  def new
  end
  
  def create
  end

  def show
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
