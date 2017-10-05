.. _data_submission:

Data Submission
===============

.. toctree::
   :maxdepth: 1
   :caption: Sections:

   flat_scheme
   multi_table_scheme
   coding_tables
   treatment_regimens
   sequence_data_formats

Data Format
-----------

You can send data to the SHARED database for integration using the
`SHARED data submission page`_. You'll be sent a **secure, unique
link** which you can use to submit a **.ZIP file** containing your
data. This mechanism ensures that the data transfer is confidential,
secure, and protected against interference from malicious third
parties.

.. _SHARED data submission page: https://shared.cfenet.ubc.ca/datasubmission/

.. warning:: Don't send data to SHARED via email; we can't guarantee
             the confidentiality of data submitted by email.

Data should be formatted according to one of the **data submission
schemes** documented in this section. It specifies how clinical,
demographic, and viral sequence data should be formatted so that the
SHARED project can merge data efficiently and consistently. For
cases where each study participant only has a **single record**, the
:ref:`flat_scheme` is the simpler way to format your data. For more
detailed studies (e.g. where participants have multiple follow up
results), or if your data is already in a database system, the
:ref:`multi_table_scheme` may be more appropriate.

Examples of properly formatted data in both schemes are `available on
GitHub`_.

.. _available on GitHub: https://github.com/neganp/shared_submission_format_examples

As always, if you have questions about the data schemes or need help
formatting your data, contact the SHARED project.

The whole data submission process is:

1. Format your data using either the :ref:`flat_scheme` or the
   :ref:`multi_table_scheme`.
2. Create a .ZIP file with your tables and sequence data.
3. Get a unique data submission link.
4. Follow your link to the secure data submission page and use it to
   submit your data.

SHARED collects demographic, clinical, and viral sequence data. 

Each column of your data table should have a **header** with the
column name. The order of the columns doesn’t matter. The case of the
filenames and header names also doesn’t matter (they will all be
converted to lower-case before they’re checked and loaded).


Data Types
----------

Each field in a submitted data file will be either a number, a date,
or a string. Fields that are **required** are marked with a bullet (•)
in the data scheme descriptions. Other fields can be left out,
indicating that the data wasn't collected or is unknown. Missing
fields will be set to ``NULL`` in the database. We don't expect that
anyone will have data for every column, so if you don't have data for
a particular column, you should omit it.


.. table:: Submission Data Types

   ======   ===========
   Kind     Description
   ======   ===========
   number   A whole or decimal number. E.g: 1, 7.4, -12

   date     A date in the format YYYY-MM-DD. E.g: 2017-05-17,
            1969-07-20, 1980-05-08

   string   A string of characters. If you need to include commas
            (e.g. in free-form notes) you must enclose the field
            in double-quotes. If you’re using a program like Excel
            or a CSV-specific software (like ``csv`` in the Python
            standard library) this will probably be done
            automatically. E.g: 1a, sufosbuvir, “The truth, the
            whole truth, and nothing but the truth.”.

   bool     True, False, or None (for unknown). True/False can be
            written as "true"/"false", "yes"/"no", "t"/"f", or
            "y"/"n". None can be written as "none" or "null", or
            left blank. All values are case-insensitive.
   ======   ===========


Viral sequence data should be submitted as separate files in a
sub-directory called ``sequences``. Details of the expected sequence
formats are available in :ref:`sequence_data_formats`. The file names
in the examples are just examples; you can use whatever naming
convention works for you, as long as the filenames in your CSV files
match the ones the ``sequences/`` directory.



Anonymous IDs
-------------

Each participant should be given a random alpha-numeric ID (in the
``id`` column of the ``participants`` table), which is then used to
tag other records that pertain to that participant. The exact format
of this field isn't important as long as the key for each participant
is unique, and the keys in other files **match**.

Note that keys are compared as **text**, so ``01`` ≠ ``1`` and ``1`` ≠
``1.0``.

Examples of valid keys:

 - #001
 - 07-172f9
 - tk_421
 - A7eX1Wx

