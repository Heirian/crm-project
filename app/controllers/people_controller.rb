# frozen_string_literal: true

class PeopleController < ApplicationController
  before_action :set_person, only: %I[show edit update destroy]
  before_action :new_person, only: %I[new new_company new_individual]
  def index
    @people = Person.all
  end

  def new; end

  def new_company; end

  def new_individual; end

  def create
    @person = Person.new(person_params)
    return render 'new' unless @person.save
    redirect_to people_path
  end

  def edit; end

  def update
    return render 'edit' unless @person.update(person_params)
    redirect_to people_path
  end

  def destroy
    @person.destroy
    redirect_to people_path
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def new_person
    @person = Person.new
  end

  def person_params
    params.require(:person).permit(:name, :type, :inscricao_estadual, :trading_name, :cnpj,
                                   :cpf, :rg, :birthday, :marital_status, :gender)
  end
end
