class PagesController < ApplicationController
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
  end

  def delete
  end

  private

  def page_params
    params.require(:page).permit(:id, :name, :permalink, :position, :visible, :content)
  end
end
