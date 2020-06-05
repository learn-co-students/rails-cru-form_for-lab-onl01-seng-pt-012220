class SongsController < ApplicationController
def new
    @song = Song.new
  end
  
  def create
    @song = Song.create(song_params(params[:song]))
    redirect_to song_path(@song)
  end

  def show
    @song = set_song
  end

  def edit
  end

  def update
    @song = set_song
    @song.update(song_params(params[:song]))
    redirect_to song_path(@song)
  end

  

  private
    def set_song
      Song.find(params[:id])
    end
    def song_params(*args)
      params.require(:song).permit(:name, :bio)
    end
end
