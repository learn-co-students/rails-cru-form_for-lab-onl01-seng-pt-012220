class GenresController < ApplicationController
def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.create(genre_params(params[:genre]))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = set_genre
  end

  def edit
    @genre = set_genre
  end

  def update
    @genre = set_genre
    @genre.update(genre_params(params[:genre]))
    redirect_to genre_path(@genre)
  end

  

  private
    def set_genre
      Genre.find(params[:id])
    end
    def genre_params(*args)
      params.require(:genre).permit(:name, :bio)
    end
end
