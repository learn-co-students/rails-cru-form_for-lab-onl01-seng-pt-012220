class ArtistsController < ApplicationController
  def create
  end

  def update
  end

  def show

  end

  private
    def set_artist
      Artist.find(params[:id])
    end
    def artist_params(*args)
      params.require(:artist).permit(:name, :bio)
    end
end
