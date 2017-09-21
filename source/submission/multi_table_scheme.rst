.. _multi_table_scheme:

Multi-Table Data Submission Scheme
==================================

This scheme is for when there are multiple clinical, behavior, or
treatment records for a single study participant. The data will
consist of multiple CSV or Excel files,

.. table:: Multi-Table Submission Scheme Files

    ===============================     ================
    File name (case insensitive)        Contents
    ===============================     ================
    ``participants``                    Participant ID codes and
                                        demographic data.

    ``behavior``                        Participants behavior factors.

    ``clinical``                        Relevant clinical history and
                                        test results.

    ``ltfu``                            Loss to follow-up.

    ``treatment``                       Treatment and response history.

    ``isolates``                        Participants' viral isolate
                                        data (sequences stored separately).
    ===============================     ================

The expected contents of each file are described below.

.. csv-table:: ``participants.csv``
   :header: Name,Type,Required,Description,Possible Values
   :file: schemes/participants.csv
   :widths: auto

.. csv-table:: ``behavior.csv``
   :header: Name,Type,Required,Description,Possible Values
   :file: schemes/behavior.csv
   :widths: auto

.. csv-table:: ``clinical.csv``
   :header: Name,Type,Required,Description,Possible Values
   :file: schemes/clinical.csv
   :widths: auto

.. csv-table:: ``ltfu.csv``
   :header: Name,Type,Required,Description,Possible Values
   :file: schemes/ltfu.csv
   :widths: auto

.. csv-table:: ``treatment.csv``
   :header: Name,Type,Required,Description,Possible Values
   :file: schemes/treatment.csv
   :widths: auto

.. _multi_table_scheme_isolates:

.. csv-table:: ``isolates.csv``
   :header: Name,Type,Required,Description,Possible Values
   :file: schemes/isolates.csv
   :widths: auto


Anonymous IDs
-------------

Each participant should be given a random alpha-numeric ID (in the
``id`` column of the ``participants`` table), which is then used to
tag other records that pertain to that participant. The exact format
of this field isn't important as long as the key for each participant
is unique and the keys in other files **match**.

Note that keys are compared as **text**, so ``01`` ≠ ``1`` and ``1`` ≠
``1.0``.
