SHELL := /bin/bash

# Retrieves todo items from LaTeX file and prints them (+ their count)
define get_todo_items
	@allTodoItems=$$(grep -i '% todo' xdusek21.tex | wc -l); echo -e "\n\e[33mFound \e[91m$$allTodoItems \e[33mTODO items:\n"
	@grep -i '% todo' xdusek21.tex | while read -r line ; do echo -e "\t \e[92m$$line\n" ; done ; echo -e "\e[39m" 
endef


all:
	pdflatex xdusek21.tex	# Output will be stored in xdusek21.pdf
	pdflatex xdusek21.tex	# To resolve references and create content table	
	rm xdusek21.aux xdusek21.log xdusek21.toc xdusek21.out

commit:
	git add xdusek21.pdf xdusek21.tex
	git commit -m "Autosave - More content added"

todo:
	$(call get_todo_items)

presentation:
	pdflatex xdusek21-IdentityTheft.tex
	rm xdusek21-IdentityTheft.aux xdusek21-IdentityTheft.log
