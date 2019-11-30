# frozen_string_literal: true

class TattoosController < ApplicationController
  before_action :set_tattoo, only: %i[update destroy]

  # GET /tattoos
  def index
    @tattoos = Tattoo.all

    render json: @tattoos
  end

  # GET /tattoos
  def index_my
    @tattoos = current_user.tattoos

    render json: @tattoos
  end

  # GET /tattoos/1
  def show
    render json: Tattoo.find(params[:id])
  end

  # POST /tattoos
  def create
    @tattoos = current_user.tattoos.build(tattoo_params)

    if @tattoo.save
      render json: @tattoo, status: :created, location: @tattoo
    else
      render json: @tattoo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tattoos/1
  def update
    if @tattoo.update(tattoo_params)
      render json: @tattoo
    else
      render json: @tattoo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tattoos/1
  def destroy
    @tattoo.destroy

    head :no_content
  end

  def set_tattoo
    @tattoo = current_user.tattoos.find(params[:id])
  end

  def tattoo_params
    params.require(:tattoo).permit(:title,
                                   :picture,
                                   :description,
                                   :date,
                                   :artist_name,
                                   :artist_instagram,
                                   :location,
                                   :ink_brand,
                                   :user_id)
  end

  private :set_tattoo, :tattoo_params
end
