Stop Motion Movie Maker
=======================

A shell script that creates a stop motion movie from 
a set of photos or images.

Prerequisities
--------------
Dependencies:
* [ImageMagick](http://www.imagemagick.org/)
* [FFmpeg](https://www.ffmpeg.org/)

Creating Movie
--------------
Method:
* Create a directory with a movie name e.g. `my-movie`.
* Copy all photos / images to `my-movie` directory.
* Copy [make-movie.sh](sh/make-movie.sh) shell script to `my-movie` directory.
* Optionally customize the script e.g. file names or movie resolution.
* Run the script and movie file will be created in the directory next
  to `my-movie` and will be named `my-movie.mp4`.
