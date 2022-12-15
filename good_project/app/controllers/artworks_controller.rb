class ArtworksController < ApplicationController
  def index
    render json: Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])

    if @artwork
      render json: @artwork
    else
      render json: @artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def create
    @artwork = Artwork.new(user_params)

    if @artwork.save
      render json: @artwork
    else
      render json: @artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @artwork = Artwork.find(params[:id])

    if @artwork
      @artwork.update(
        params.require(:artwork).permit(:title, :img_url, :artist_id)
      )

      render json: @artwork
    else
      render json: @artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])

    if @artwork
      @artwork.destroy
    else
      render json: @artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:artwork).permit(:title, :img_url, :artist_id)
  end
end
