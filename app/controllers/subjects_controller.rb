class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order('position ASC')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
  end
  
  def create
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
