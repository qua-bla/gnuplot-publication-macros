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
@set_options
...
```

**WARNING:** It seems to be impossible to have an empty line below the `\begin{gnuplot}`! Check this twise if you ran into mysterious LaTeX errors.

## List of Macros

```
@set_color_bluegreen
@set_color_rainbow
@set_color_wild1
@set_lc
@set_lt_alternating
@set_lt_different
@set_lt_identical
@set_monochrome
@set_options
@set_xaxis_2pi
@set_xaxis_percent
@set_xaxis_pi
@set_yaxis_percent
```

## Typical adjustments

Key placement
- set key below
- set key outside
- set key right bottom
- ...

Increase Key width
- set key width 2



