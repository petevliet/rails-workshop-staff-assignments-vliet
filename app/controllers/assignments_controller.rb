class AssignmentsController < ApplicationController

  def index
  end

  def new
    @person = Person.find(params[:person_id])
  end

  def create
  end


end
