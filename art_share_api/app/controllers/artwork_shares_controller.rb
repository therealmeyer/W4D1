class ArtworkSharesController < ApplicationController
  def create
    art_share = ArtworkShare.new(artwork_share_params)
    if art_share.save
      render json: art_share
    else
      render json: art_share.errors.full_messages, status: 422
    end
  end

  def destroy
    art_share = ArtworkShare.find(params[:id])
    art_share.destroy
    render json: art_share
  end

  def artwork_share_params
    params.require(:artshares).permit(:artwork_id, :viewer_id)
  end
end
