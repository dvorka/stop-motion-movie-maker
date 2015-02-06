Analysis and Plans
==================

Stop Motion Movie Maker is a simple tool for building stop-motion
video clips that is based on existing libraries. It's written in C and
GTK+. It has CLI and GUI mode. 

CLI
---

Project file is based on DSL internal in YAML:

```
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
  images-files: 
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

Project
-------

CLI


Plan
----
Step by step:

   * Target minimal shippable product for Miky's use case.
   * Tool to have CLI `smmm -arg1 ... -argN` and GUI `smmm` mode.
   * CLI:
      * Tool gets parameters OR YAML configuration file i.e. project created in GUI `smmm --project MyMovie.smmm`
   * GUI:
      * Tool basically creates YAML project and then calls CLI to build video clip.
      * Consider use of Glade and [GtkBuilder](https://developer.gnome.org/gtk3/stable/GtkBuilder.html)
   * Release headless version first and GUI version next.