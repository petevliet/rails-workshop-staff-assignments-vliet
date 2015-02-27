class AssignmentsController < ApplicationController

  def index
  end

  def new
    @person = Person.find(params[:person_id])
    @assignment = @person.assignments.new
  end

  def create
    @person = Person.find(params[:person_id])

    @assignment = @person.assignments.new(assignment_params)
    # binding.pry

    if @assignment.save
      redirect_to @person, notice: 'Assignment created'
    else
      render :new
    end

  end

  def assignment_params
    params.require(:assignment).permit(:role, :person_id, :location_id)
  end


end
