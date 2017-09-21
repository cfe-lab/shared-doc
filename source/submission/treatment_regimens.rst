.. _treatment_regimens:

Treatment Regimens
==================

..
   TODO(nknight): explanation

If for whatever reason your sample uses a set of standard regimens
that's different from the ones listed below, you can provide a list of
regimens with your data instead of writing them all out long-form.
Contact SHARED to work out the details.


Standard Treatment Regimens
---------------------------

The following standard regimens are from product labels. Standard
regimens can be combined (for example, may drugs are only recommended
with Peg-A or Ribavirin) with the ``&`` symbol. E.g: ``HARVONI &
PEGASYS`` or ``INCIVEK & COPEGUS1000``.

For more a more detailed way to describe regimens, see `Regimen Notation`_ below.

.. csv-table:: Standard Treatment Regimens
   :header-rows: 1
   :widths: auto
   :file: regimens.csv

Regimen Notation
----------------

If you need to report a treatment regimen that isn't included in the
table of standard regimens, you can write out the regimen in detail,
as in the table above. The exact format is:

- The amount of each compound in the treatment joined by a ``+``
  symbol.
- The frequency of the perscriptiong (e.g. ``QD`` for daily, ``BID``
  for twice daily, etc.)
- Combine multiple perscriptions with different frequencies using an
  ``&`` symbol.

Examples:

.. csv-table::
   :header-rows: 1
   :widths: auto

    Perscription,Notation
    60mg of Daclatasvir once a day for 12 weeks,``60mg DAC QD 12 weeks``
    90mg of Ledipasvir and 400mg of Sofosbuvir once a day for 12 weeks,``90mg LDV + 400mg SOF QD 12 weeks``
    750mg of Telaprevir three times a day for 12 weeks and 500mg Ribavirin twice a day for 48 weeks,``750mg TVR TID 12 weeks & 500m RBV BID 48 weeks``

The complete list of compounds and frequencies is listed below. For
more detailed information, see the `regimens submodule`_ of the
``shared_schema`` package.

.. _regimens submodule: https://github.com/neganp/shared-schema/tree/master/shared_schema/regimens


.. csv-table:: Compounds included in treatment regimens
   :header-rows: 1
   :widths: auto
   :file: compounds.csv

.. csv-table:: Dosage Frequencies
   :header-rows: 1
   :widths: auto
   :file: frequencies.csv
