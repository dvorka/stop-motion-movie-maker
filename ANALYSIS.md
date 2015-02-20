Analysis and Plans
==================

Stop Motion Movie Maker is a simple tool for building stop-motion
video clips that is based on existing libraries. It's written in C and
Qt. It has CLI and GUI mode. 

CLI
---

Project file is based on DSL internal in YAML:

``` yaml
---
project:
  name: My Movie Project
  # SMMM looks for all JPG/jpg/PNG/png/GIF/gif files
  # and it uses alphabetical sorting
  images-directory: /home/dvorka/miky/my-movie
  # Movie name is created from the name property above
  # and generated with a default width and height
...
``` 
You may be more precise in the specificatin of details:

``` yaml
---
project:
  name: My Movie Project
  image-files: 
    - /home/dvorka/miky/my-movie/3.jpg
    - /home/dvorka/miky/my-movie/1.png
    - /home/dvorka/miky/my-movie/2.png
  transition:
    frames: 3
  movie-size:
    width: 320
    height: 200
  movie-format: AVI
  movie-file-name: my-movie.avi
...
```


GUI
---
Basic layout of the main window looks like this:

```
 ___________________________________________________
|                                                   |
| New  Open  Add Images  Build Movie  Export Movie  |
|___________________________________________________|
|  ___________________    ______   ______   ______  |
| |                   |  |      | |      | |      | |
| |                   |  | Img  | | Img  | | Img  | |
| |                   |  |______| |______| |______| |
| |      Video        |                             |
| |                   |  ...                        |
| |                   |                             |
| |                   |                             |
| |___________________|                             |
|                                                   | 
|        <| > |>                                    |
|                                                   |
|___________________________________________________|

```


Plan
----
Step by step:

   * Target minimal shippable product for Miky's use case - CLI
   * Tool to have CLI `smmm -arg1 ... -argN` and GUI `smmm` mode.
   * CLI:
      * Tool gets parameters and generates movie.
      * Target `AVI` and `GIF` formats first.
      * Test it on existing Miky movies.
      * Create SMMM YouTube channel and link it from project homepage.
   * CLI w/ config:
      * Tool gets YAML configuration file i.e. project files. Such files can 
        be stored around file system in directories with images, and generates 
        movie: `smmm --project MyMovie.smmm`
   * GUI:
      * Tool basically creates YAML project and then calls CLI to build video clip.
      * Written in Ubuntu SDK - (instead of Qt) - [instead of GTK+](http://www.wikivs.com/wiki/GTK_vs_Qt)
      * Consider use of Glade and [GtkBuilder](https://developer.gnome.org/gtk3/stable/GtkBuilder.html)
   * Release headless version first and GUI version next.
   * Consider Android application.