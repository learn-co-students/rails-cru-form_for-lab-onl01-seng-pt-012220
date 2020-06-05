class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
    
    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new
        @song.name = params[:song][:name]
        @song.artist_id = Artist.find(params[:song][:artist_id]).id
        @song.genre_id = Genre.find(params[:song][:genre_id]).id
        @song.save
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end
    
    def update
        @song = Song.find(params[:id])
        @song.update(name: params[:song][:name], artist_id: Artist.find(params[:song][:artist_id]).id, genre_id: Genre.find(params[:song][:genre_id]).id)
        redirect_to song_path(@song)
    end
end
