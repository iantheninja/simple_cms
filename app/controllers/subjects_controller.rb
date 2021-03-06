class SubjectsController < ApplicationController
  before_action :confirm_logged_in?
  
  def index
    @subjects = Subject.order('position ASC')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
    @subject.pages.build
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      redirect_to subjects_path
    else
      render 'new'
    end
  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update(subject_params)
      redirect_to subject_path(@subject)
    else
      render 'edit'
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])

    @subject.destroy ? redirect_to(subjects_path) : redirect_to(subject_path(@subject))
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :position, :visible, pages_attributes: %i[id name permalink position visible content])
  end
end
