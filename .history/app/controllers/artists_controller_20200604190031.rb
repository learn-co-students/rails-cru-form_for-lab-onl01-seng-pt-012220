class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.create(artist_params(params[:artist]))
    redirect_to artist_path(@artist)
  end

  def show
    @artist = set_artist
  end

  def edit
    @artist = set_artist
  end

  def update
    @artist = set_artist
    @artist.update(artist_params(params[:artist]))
    redirect_to artist_path(@artist)
  end

  

  private
    def set_artist
      Artist.find(params[:id])
    end
    def artist_params(*args)
      params.require(:artist).permit(:name, :bio)
    end
end
