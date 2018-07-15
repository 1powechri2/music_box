class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.create(song_params)
    redirect_to song_path(song)
  end

  private

  def song_params
    params.require(:song).permit(:id, :title, :length, :play_count)
  end
end
