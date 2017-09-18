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
