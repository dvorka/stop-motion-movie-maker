Analysis and Plans
==================

Stop Motion Movie Maker is a simple tool for building stop-motion
video clips that is based on existing libraries. It's written in C and
GTK+. Basic layout of the main window looks like this:

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

   * Target minimal shippable product for Miky's use case.
