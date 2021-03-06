class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create(song_params)
    if @song.save
      redirect_to "/songs"
    else
      render :new
    end
  end

  private

  def song_params
    params.require(:song).permit(:id, :title, :length, :play_count)
  end
end
