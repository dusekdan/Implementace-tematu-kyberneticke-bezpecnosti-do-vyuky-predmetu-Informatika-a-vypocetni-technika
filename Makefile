all:
	pdflatex xdusek21.tex	# Output will be stored in xdusek21.pdf
	pdflatex xdusek21.tex	# To resolve references and create content table	
	rm xdusek21.aux xdusek21.log xdusek21.toc xdusek21.out