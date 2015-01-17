cat > ~/.gitconfig <<EOF

[credential]
	helper = store

[alias]
	st = status
	stat = status

[core]
	excludesfile = /home/vagrant/.gitignore_global

[push]
	default = simple

EOF

cat > ~/.gitignore_global <<EOF
# vim
.*.sw?

# cs3110 cli
_build

# ocaml
*.cmo
*.cma
*.cmi
*.out
*.cmx

# python
*.pyc

# temporary files
*.swp
*~
\#*\#
.DS_Store

# latex
*.acn
*.acr
*.alg
*.aux
*.bbl
*.blg
*.dvi
*.fdb_latexmk
*.glg
*.glo
*.gls
*.idx
*.ilg
*.ind
*.ist
*.lof
*.log
*.lot
*.maf
*.mtc
*.mtc0
*.nav
*.nlo
*.out
*.pdfsync
*.ps
*.snm
*.synctex.gz
*.toc
*.vrb
*.xdy
*.tdo

# sublime
*.sublime-*

EOF

