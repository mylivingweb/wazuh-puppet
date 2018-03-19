SHELL=/bin/bash
PP = $(wildcard manifests/*.pp)

validate:
	for file in $(PP); \
	do \
		puppet parser validate --noop $${file}; \
	done

commit:
	git add .
	git commit 
	git push