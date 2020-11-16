class PagesController < ApplicationController
  before_action :confirm_logged_in?


  def index
    @pages = Page.order('position ASC')
  end

  def show
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if @page.update(page_params)
      redirect_to page_path(@page)
    else
      render 'edit'
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])

    @page.destroy ? redirect_to(pages_path) : redirect_to(page_path(@page))
  end

  def delete
    @page = Page.find(params[:id])
  end

  private

  def page_params
    params.require(:page).permit(:id, :name, :permalink, :position, :visible, :content)
  end
end
