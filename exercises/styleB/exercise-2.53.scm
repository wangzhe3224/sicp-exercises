#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 2.53")

;   Exercise 2.53
;   =============
;   
;   What would the interpreter print in response to evaluating each of the
;   following expressions?
;   
;   (list 'a 'b 'c)
;   
;   (list (list 'george))
;   (cdr '((x1 x2) (y1 y2)))
;   
;   (cadr '((x1 x2) (y1 y2)))
;   (pair? (car '(a short list)))
;   (memq 'red '((red shoes) (blue socks)))
;   
;   (memq 'red '(red shoes blue socks))
;   
;   ------------------------------------------------------------------------
;   [Exercise 2.53]: http://sicp-book.com/book-Z-H-16.html#%_thm_2.53
;   2.3.1 Quotation - p144
;   ------------------------------------------------------------------------