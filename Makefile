# Build the SHARED Documentation

# Deps
RST_SOURCE=$(shell find ./source -name '*.rst')

html: $(RST_SOURCE) GENERATED_FILES
	python -m sphinx -a ./source ./build/html

serve: html
	(cd build ; python -m http.server 3000)
	!echo "Serving on localhost:3000"

deploy: html
	rsync -avr build/html/ nknight@shared.cfenet.ubc.ca:manual/ --delete-before
	ssh nknight@shared.cfenet.ubc.ca 'cp -r manual/ /var/www/html/static/'

GENERATED_FILES:
	python -m shared_schema export rst > source/detailed_schema/generated_data_dictionary.inc
	python -m shared_schema sub-scm -y source/submission
	python -m shared_schema regimens regimens > source/submission/regimens.csv
	python -m shared_schema regimens compounds > source/submission/compounds.csv
	python -m shared_schema regimens frequencies > source/submission/frequencies.csv
	python -m shared_schema refseqs > source/detailed_schema/generated_reference_sequences_table.inc
	mkdir -p source/img/
	python -m shared_schema export dot | unflatten | dot -Tsvg > source/img/entity_relations.svg

.PHONY: Makefile GENERATED_FILES serve
