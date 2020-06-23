class ArtistsController < ApplicationController
    def index
        @artist = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new 
        @artist = Artist.new
    end

    def create
		@artist = Artist.new(artists_params(:name, :bio))
  		@artist.save
  		redirect_to artist_path(@artist)
    end

    def update
		@artist = Artist.find(params[:id])
 	 	@artist.update(artists_params(:name))
  		redirect_to artist_path(@artist)
	end

	def edit
	  @artist = Artist.find(params[:id])
	end
    
    private
 
	def artists_params(*args)
		params.require(:artist).permit(*args)
	end
end
