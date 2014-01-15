class PostsController < ApplicationController
	attr_accessible :artist, :title

	def get_track_id(artist, title)
	    @artist = params[:artist]
	    @title = params[:title]

	    url = "http://api.musixmatch.com/ws/1.1/track.search?apikey=#{APIKEY}&q_artist=#{ARTIST}&q_track=#{TRACK}format=json&page_size=1&f_has_lyrics=1"
	    
	    music = HTTParty.get(url)
	    saved = JSON.parse(music)

	    return saved["message"]["body"]["track_list"][0]["track"]["track_id"]

 	end

 	def display_lyrics(track_id)

 		@track_id = params[:track_id]
 		url = http://api.musixmatch.com/ws/1.1/track.lyrics.get?#{APIKEY}&track_id=#{TRACKID}&format=json&page_size=1&f_has_lyrics=1

		music = HTTParty.get(url)
	    hash = JSON.parse(music)

		return hash["message"]["body"]["lyrics"]["lyrics_body"]
 	end

 	def get_snippet(track_id)

 		@track_id = params[:track_id]

 		url = "http://api.musixmatch.com/ws/1.1/track.snippet.get?apikey=#{APIKEY}&track_id=#{TRACKID}format=json&page_size=1&f_has_lyrics=1"

 		music = HTTParty.get(url)
	    saved = JSON.parse(music)

		saved["message"]["body"]["snippet"]["snippet_body"]
	end
end

