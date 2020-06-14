all:
	docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex -V implicit_figures -V lang="es" --metadata-file=metadata.yaml --toc -V colorlinks -V linkcolor=blue -s -o PEC.pdf PEC.md
clean:
	rm PEC.pdf