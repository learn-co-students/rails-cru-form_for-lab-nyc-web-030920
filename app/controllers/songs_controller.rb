class SongsController < ActionController::Base
    def index 
        @songs = Song.all
    end

    def new 
        @song = Song.new 
    end

    def create 
        song = Song.new(song_params)
        song.save
        redirect_to song
    end

    def show
        @song = Song.find(params[:id])
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        song = Song.update(song_params)
        redirect_to song
    end



    private 

    def song_params
        params.require(:song).permit(:name,:genre_id,:artist_id)
    end
end