class ArtistsController < ApplicationController

    def index 
        @artists = Artist.all
    end 

    def new 
        @artist = Artist.new
    end 

    def show 
        @artist = Artist.find(params[:id])
    end 

    def edit 
        @artist = Artist.find(params[:id])
        @artist.name = params[:name]
        @artist.bio = params[:bio]


    end 



    def create 
        @artist = Artist.create(params_path)
        redirect_to artist_path(@artist)
    end 

    def update
        @artist = Artist.find(params[:id])
        @artist.update(params_path)
        redirect_to artist_path(@artist)
    end 

    private 

    def params_path 
        params.require(:artist).permit(:name, :bio)
    end 


end
