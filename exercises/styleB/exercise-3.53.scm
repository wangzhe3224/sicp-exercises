#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 3.53")

;   Exercise 3.53
;   =============
;   
;   Without running the program, describe the elements of the stream defined
;   by
;   
;   (define s (cons-stream 1 (add-streams s s)))
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.53]: http://sicp-book.com/book-Z-H-24.html#%_thm_3.53
;   3.5.2 Infinite Streams - p330
;   ------------------------------------------------------------------------