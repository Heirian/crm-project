# frozen_string_literal: true

class PeopleController < ApplicationController
  before_action :set_person, only: %I[show edit update destroy]
  before_action :new_person, only: %I[new new_company new_individual]
  before_action :authenticate_user!
  def index
    @people = Person.all
  end

  def company_index
    @people = Company.all
  end

  def individual_index
    @people = Individual.all
  end

  def show; end

  def new; end

  def new_company; end

  def new_individual; end

  def create
    @person = Person.new(person_params)
    unless @person.save
      flash[:danger] = @person.errors.full_messages
      return render 'new_company' if @person.type == 'Company'
      return render 'new_individual'
    end
    flash[:success] = I18n.t(:person_register_add_success)
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
    params.require(:person).permit(:name, :type, :inscricao_estadual, :company_name, :cnpj,
                                   :cpf, :rg, :birthday, :marital_status, :gender)
  end
end
