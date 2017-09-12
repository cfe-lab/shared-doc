.. _ref-data-types:

Data Types
==========

.. table:: Data Types

   ========================     ===============
   Data Type                    Description
   ========================     ===============
   ``integer``                  A whole number.
   ``float``                    A decimal number.
   ``string``                   A piece of text.
   ``date``                     A calendar date (YYYY-MM-DD).
   ``uuid``                     An arbitrary unique identifier (e.g.
                                ``cf66f56d-5bd0-477c-bca9-0fb712cf8753``).
   ``bool``                     ``True``, ``False``, or ``Null`` (for unknown).
   ``enum(...)``                One of a set of values. For example,
                                ethnicity might be represented by
                                ``enum(caucasian, latino, asian
                                black, indigenous-american)``.
   ``foreign key (...)``        A link to a different table. For example,
                                a viral isolate's record might include a
                                ``foreign key (Person)`` field to link it
                                to the participant it came from.
   ========================     ===============
