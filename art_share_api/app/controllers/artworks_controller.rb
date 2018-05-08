class ArtworksController < ApplicationController
  def index
    artworks = Artwork.where(artist_id: params[:user_id])
    current_user = User.find(params[:user_id])
    shared_artworks = current_user.shared_artworks
    render json: {artworks: artworks, shared_artworks: shared_artworks}
  end

  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    artwork = Artwork.find(params[:id])

    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork
  end

private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
