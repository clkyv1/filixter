class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @section = Section.new
    @lesson = Lesson.new
    @course = Course.find(params[:id])
  end

  # def image
  #   @course = Course.params.required(:course).permit(:title,:cost,:description,:image)
  # end
end
