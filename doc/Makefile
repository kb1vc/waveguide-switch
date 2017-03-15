all:  WG3D.pdf

jpgimages:=$(wildcard *.jpg)
pngimages:=$(wildcard *.png)
svgimages:=$(wildcard *.svg)
pdfdrawings:=$(svgimages:.svg=.pdf)

%.pdf : %.svg
	inkscape -z -f $< --export-pdf=$@

WG3D.pdf : WG3D.tex $(jpgimages) $(pngimages) HP6289_inner.scad $(pdfdrawings)
	pdflatex WG3D
	pdflatex WG3D


