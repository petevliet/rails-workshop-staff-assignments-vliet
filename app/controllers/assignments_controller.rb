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

  def edit
    @person = Person.find(params[:person_id])
    @assignment = @person.assignments.find(params[:id])
  end

  def update
    @person = Person.find(params[:person_id])
    @assignment = @person.assignments.find(params[:id])
    if @assignment.update(assignment_params)
      redirect_to @person, notice: 'Assignment created'
    else
      render :new
    end
  end

  def destroy
    @person = Person.find(params[:person_id])

    @assignment = @person.assignments.find(params[:id])
    @assignment.destroy
    redirect_to person_path(@person), notice: 'Assignment deleted'
  end

  def assignment_params
    params.require(:assignment).permit(:role, :person_id, :location_id)
  end


end
