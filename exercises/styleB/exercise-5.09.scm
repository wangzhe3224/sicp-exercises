#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 5.09")

;   Exercise 5.9
;   ============
;   
;   The treatment of machine operations above permits them to operate on
;   labels as well as on constants and the contents of registers. Modify the
;   expression-processing procedures to enforce the condition that
;   operations can be used only with registers and constants.
;   
;   ------------------------------------------------------------------------
;   [Exercise 5.9]:  http://sicp-book.com/book-Z-H-32.html#%_thm_5.9
;   5.2.3 Generating Execution Procedures for Instructions - p529
;   ------------------------------------------------------------------------