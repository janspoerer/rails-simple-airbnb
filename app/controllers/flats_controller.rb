class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end

    redirect_to flat_path(@flat)
  end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def method_name

  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
      params.require(:flat).permit(
        :name,
        :address,
        :phone_number,
        :category
      )
  end
end
