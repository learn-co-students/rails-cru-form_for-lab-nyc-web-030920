class SongsController < ApplicationController

    def index 
        @songs = Song.all
    end 

    def new 
        @song = Song.new 
    end 

    def show 
        @song = Song.find(params[:id])
    end 

    def edit 
        @song = Song.find(params[:id])
        @song.name = params[:name]
    end 



    def create 
        @song = Song.create(params_path)
        redirect_to song_path(@song)
    end 

    def update
        @song = Song.find(params[:id])
        @song.update(params_path)
        redirect_to song_path(@song)
    end 

    private 

    def params_path 
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end 
end
