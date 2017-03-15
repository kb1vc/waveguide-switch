all:  WG3D.pdf

jpgimages:=$(wildcard *.jpg)
pngimages:=$(wildcard *.png)

WG3D.pdf : WG3D.tex $(jpgimages) $(pngimages) HP6289_inner.scad
	pdflatex WG3D
	pdflatex WG3D


