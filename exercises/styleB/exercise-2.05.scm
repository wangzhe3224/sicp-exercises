#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 2.05")

;   Exercise 2.5
;   ============
;   
;   Show that we can represent pairs of nonnegative integers using only
;   numbers and arithmetic operations if we represent the pair a and b as
;   the integer that is the product 2^a 3^b.  Give the corresponding
;   definitions of the procedures cons, car, and cdr.
;   
;   ------------------------------------------------------------------------
;   [Exercise 2.5]:  http://sicp-book.com/book-Z-H-14.html#%_thm_2.5
;   2.1.3 What Is Meant by Data? - p92
;   ------------------------------------------------------------------------