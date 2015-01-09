gnuplot-publication-macros
==========================

Macro collection for creating publication ready figures (pdf) with gnuplot and latex

# INSTALL

1. Download the [current release](https://github.com/qua-bla/gnuplot-publication-macros/raw/master/gnuplot-publication-macros.tar).
2. Unpack, for example into your home folder
3. To auto load the macros at gnuplot startup: Add `load "~/gnuplot-publication-macros/gnuplot-publication-macros.gpi"` toi the `~/.gnuplot` file (you may have to create this file).

# Usage

1. Create a folder that will contain your figures
2. Link (`ln -s`) or copy the `gnuplot-single.tex` file into this folder
3. Create a `.tex` file for each plot. Use the `template.tex` for creating your first plot. Load more macros from the list below if you like.
4. You can use the `texall` script to update all of your plots in the folder.

## Customization

If you want to adjust the standards for a series of plots, we recommend to create a `mydefaults.gpi` file inside the plot folder. This could contain something like

```
# adjusts the plot height to 12cm
height=12
# I don't like colors
@set_monochrome
```

while your plotting file contains something like

```
...
\begin{gnuplot}
load 'mydefaults.gpi'
@init_options
...
```

**WARNING:** It seems to be impossible to have an empty line below the `\begin{gnuplot}`! Check this twise if you ran into mysterious LaTeX errors.

## List of Macros

```
@ensure_defaults
@init_options
@set_color_bluegreen
@set_color_bowrain
@set_color_mm
@set_color_rainbow1
@set_color_rainbow2
@set_color_rainbow3
@set_color_red
@set_color_redsafe
@set_color_wild1
@set_color_wild2
@set_inset
@set_lc
@set_lt_alternating
@set_lt_different
@set_lt_identical
@set_monochrome
@set_options
@set_palette_from_lc
@set_xaxis_percent
@set_xaxis_pi
@set_yaxis_percent
@set_yaxis_pi

eval margin(0.4,0.5,0.3,0.3)
eval margin_cm(2,2,2,2)
```

## List of Variables

All colors in upper-case hex-format like *000000* for black.

- *grid_color*, used for border, grid and key box color
- *label_color*, color for labels like xlabel

- *width*, width of the complete output in cm
- *height*, height of the complete output in cm

- *fontsize*, font size for most text in the plot (manly tics and key)
- *label_fontsize*, font size for labels like xlabel
- *fontsize_inset*, undocumented
- *label_fontsize_inset*, undocumented

- *fontspace*, default space calculated for text (integer parameter)

- *line_width*, default line width for plotted lines

- *color1*, color for `linecolor 1`
- *color2*, ...
- *color3*
- *color4*
- *color5*
- *color6*
- *color7*
- *color8*
- *color9*
- *color10*
- *color11*
- *color12*

- *color_monochrome*, color used if monchrome macro is called

- *take_colors*, String of space seperated integers. The integers define the color numbers that are used to define a palette if `@set_palette_from_lc` is called.

- *lt1*, first line type to use by `@set_lt_alternating` and used by `@set_lt_identical`
- *lt2*, second line type to use by `@set_lt_alternating`

- *post_header*, latex code to run before plot creation but after header

- *latex_font*, latex commands to define the font in plot

- *x_decimal_places*, number of decimal places to use for xtics (relevant for `@set_xaxis_percent`, `@set_xaxis_pi`)
- *y_decimal_places*, ...

## Typical adjustments

Key placement
- set key below
- set key outside
- set key right bottom
- ...

Increase Key width
- set key width 2

Move x-label closer to x-axis
- set xlabel offset 0,0.5

Move y-label closer to y-axis
- set ylabel offset 2.5,0

See https://github.com/Gnuplotting/gnuplot-palettes for a collection of nice gnuplot palettes.
