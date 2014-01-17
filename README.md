# FeelMyApp

![Mou icon](http://localhost:3000/images/logo.jpg)

## Overview

**FML**, connecting blog posts to song lyrics.

### What I Learned

I learned too much to even recount from this first project.  I learned also a lot of what I need to learn more of.  Overall, I can see that Rails is my friend.

#### About the code snippet below:

It was exciting to be able to render info through a JSON request followed by another request right after through Httparty.

I know it is not best practice to put this all in my controller file, but it was the best way I could make sense of what was happening where for the first go.


#### Retrieving JSON from the MusixMatch API


```
def create

 		@user = current_user
 		@user.name = current_user.name
 		
 		@artist = params[:artist].gsub(" ", "%20")

	    @title = params[:title].gsub(" ", "%20")
	#this is blog text#	    
	    @text = params[:text]


	    url = "http://api.musixmatch.com/ws/1.1/track.search?apikey=#{ENV['MUSIXMATCH_KEY']}&q_artist=#{@artist}&q_track=#{@title}&format=json&page_size=1&f_has_lyrics=1"

	    music = HTTParty.get(url)
	    saved = JSON.parse(music)

	    @track_id = saved["message"]["body"]["track_list"][0]["track"]["track_id"]

	    @photo = saved["message"]["body"]["track_list"][0]["track"]["album_coverart_100x100"]

	#second url to fetch a snippet

 		url = "http://api.musixmatch.com/ws/1.1/track.snippet.get?apikey=#{ENV['MUSIXMATCH_KEY']}&track_id=#{@track_id}&format=json&page_size=1&f_has_lyrics=1"

 		music = HTTParty.get(url)
	    hash = JSON.parse(music)

		@snippet = hash["message"]["body"]["snippet"]["snippet_body"]


	#creating a new song with the input fields
	
		@song = Song.create!({
			title: @title.gsub("%20", " "),
			artist: @artist.gsub("%20", " "),
			verse: @snippet,
			photo: @photo
		})

	#creating a new post with the input fields

		@post = Post.create!({
			text: @text,
			song_id: @song.id,
			lyric: @snippet,
			user_id: current_user.id,
		})


		render :'posts/show'
 	end
```

#### Links and Email

Contact me <aj.kim84@gmail.com>.
