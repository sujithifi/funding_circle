Prime Number Table Generator
============================

This program prints out a multiplication table of the first 10 prime numbers.
The program runs from the command line and print one table to STDOUT.
The first row and column of the table has the 10 primes, with each cell containing the product of the primes for the corresponding row and column.

Run Program
-----------

* `bundle install --binstubs`
* `./run`   ( for multiplication table with 10 prime numbers )
* `./run n` ( for multiplication table with n  prime numbers )

Run Tests
---------

* `bin/rspec --format doc` ( test cases written as a part of BDD )

Output
------

           2     3     5     7    11    13    17    19    23    29
     2     4     6    10    14    22    26    34    38    46    58
     3     6     9    15    21    33    39    51    57    69    87
     5    10    15    25    35    55    65    85    95   115   145
     7    14    21    35    49    77    91   119   133   161   203
    11    22    33    55    77   121   143   187   209   253   319
    13    26    39    65    91   143   169   221   247   299   377
    17    34    51    85   119   187   221   289   323   391   493
    19    38    57    95   133   209   247   323   361   437   551
    23    46    69   115   161   253   299   391   437   529   667
    29    58    87   145   203   319   377   493   551   667   841


Notes
-----

* Complexity:  O(n<sup>2</sup>). We are generating a 2D multiplication matrix and are computing values for each of the `n x n` cells.
* Scalability: The program can print multiplication matrix for first n prime numbers keeping the complexity factor the same.

Further Improvements
--------------------

* Since the multiplication table is a symmetrix matrix, the number of calculations can be halved by storing the multiplication results. There will be a trade off between memory consumption and compute power.
* The method `is_prime?` that detects if a number is prime or not, can be further optimized. As an example a "primality regex" can be used to detect primality of a number as discussed [here.](http://montreal.pm.org/tech/neil_kandalgaonkar.shtml)

