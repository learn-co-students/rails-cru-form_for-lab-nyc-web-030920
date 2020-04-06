class GenresController < ApplicationController

    def index 
        @genres = Genre .all 
    end 

    def new 
        @genre = Genre.new 
    end 

    def edit 
        @genre = Genre.find(params[:id])
        @genre.name = params[:name]
    end 



    def show 
        @genre = Genre.find(params[:id])
    end 



    def create 
        @genre = Genre.create(params_path)
        redirect_to genre_path(@genre)
    end 

    def update
        @genre = Genre.find(params[:id])
        @genre.update(params_path)
        redirect_to genre_path(@genre)
    end 

    private 

    def params_path 
        params.require(:genre).permit(:name)
    end 
end
