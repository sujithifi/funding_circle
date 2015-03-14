iPrime Number Table Generator
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

* `bin/rspec --format doc`

Notes
-----

* Complexity:  O(n<sup>2</sup>). We are generating a 2D multiplication matrix and are computing values for each of the `n x n` cells.
* Scalability: The program can print multiplication matrix for any n prime number keeping the complexity factor the same.

Further Improvements
--------------------

* Since the multiplication table is a symmetrix matrix, the number of calculations can be halved by storing the multiplication results. There will be a trade off between memory consumption and compute power.
* The method `is_prime?` that detects if a number is prime or not, can be further optimized. As an example a "primality regex" can be used to detect primality of a number discussed [here](http://montreal.pm.org/tech/neil_kandalgaonkar.shtml)

