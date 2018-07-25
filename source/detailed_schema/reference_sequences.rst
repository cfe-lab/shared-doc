.. _ref-reference-sequences:

Reference Sequences
===================

As of the first data merge, the database contains 21 reference
sequences, each corresponding to the NS3, NS5a, or NS5b gene of one of
the genotypes or subgenotypes the database can contain. These are the
sequences used by `Nucamino <https://github.com/hivdb/nucamino>`_, the
aligner that is used to detect substitutions during data ingestion.

.. csv-table::
   :header-rows: 1
   :file: ./generated_reference_sequences_table.inc
   :widths: auto


Where:

**Genotype**
    is the genotype of the reference sequence.

**Subgenotype**
    is the subgenotype that this reference sequence is used for, if applicable.
    A blank field indicates that this sequence is used for all of this
    genotype's subtenotypes.

**Gene**
    is the name of the gene this reference sequence covers.

**SHARED ID**
    is the UUID of this reference sequence in the SHARED database.

**Genbank Accession Number**
    is the accession number of this reference sequence in Genbank, which
    contains the raw nucleotide sequence and more details about its provenance.

**Start Position**
    Indicates the (1-indexed) nucleotide position of the start of this gene.

**End Position**
    Indicates the (1-indexed, inclusive) nucleotide position of the end of this
    gene.
