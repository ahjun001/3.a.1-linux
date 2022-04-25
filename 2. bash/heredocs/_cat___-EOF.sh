#!/usr/bin/env bash

# <<- will take of all starting tabs, NOT blank spaces
# to convert spaces into tabs:   :set noexpandtab (not the default)  :%retab!  (% is optional)
cat <<- EOF
	    Beginning
	     of some text
		that can
		    be
		     indented
		and stays indented in output
	    the EOF
EOF
