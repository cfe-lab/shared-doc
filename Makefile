# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = python -msphinx
SPHINXPROJ    = SHARED
SOURCEDIR     = source
BUILDDIR      = build

# Find dependencies
INCLUDE_FILES = source/detailed_schema/generated_data_dictionary.inc

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile $(INCLUDE_FILES)

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile $(INCLUDE_FILES)
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# Generate include files from shared_schema
$(INCLUDE_FILES):
	python -m shared_schema export rst > source/detailed_schema/generated_data_dictionary.inc || exit 1

# Figures
source/img/entity_relations.svg:
	mkdir -p source/img/
	python -m shared_schema export dot | unflatten | dot -Tsvg > source/img/entity_relations.svg
