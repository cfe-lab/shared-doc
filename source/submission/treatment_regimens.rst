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

The following standard regimens are from product labels.

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

- The amount of each DAA in the treatment joined by a ``+``
  symbol. For clarity, you *may* put parenthesis around a list of DAAs.
  E.g: ``(100mg SOF + 200mg LDV)``.
- The frequency of the perscriptiong. E.g: ``QD`` for daily, ``BID``
  for twice daily, etc.
- Combine multiple drugs with different frequencies using an
  ``&`` symbol.

Examples:

.. csv-table::
   :header-rows: 1
   :widths: auto

    Perscription,Notation
    60mg of Daclatasvir once a day for 12 weeks,``60mg DAC QD 12 weeks``
    90mg of Ledipasvir and 400mg of Sofosbuvir once a day for 12 weeks,``90mg LDV + 400mg SOF QD 12 weeks``
    150 mg of Simeprevir for 12 weeks and 0.180mg of Peg-A and 500mg Ribavirin twice a day for 24 weeks, 150mg SIM QD 12 weeks & 0.180mg PEG QWK + 500Rmg BID 24 weeks

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
