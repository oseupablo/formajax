class PeopleController < ApplicationController
  respond_to :js, :html

  def index
    @person = Person.new
    @people = Person.all
  end

  def create
    @person = Person.new(person_params)
    @person.save
  end

  private

  # strong parameters
  def person_params
    params.require(:person).permit(:name, :email)
  end
end