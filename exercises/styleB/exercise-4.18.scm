#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 4.18")

;   Exercise 4.18
;   =============
;   
;   Consider an alternative strategy for scanning out definitions that
;   translates the example in the text to
;   
;   (lambda <vars>
;     (let ((u '*unassigned*)
;           (v '*unassigned*))
;       (let ((a <e1>)
;             (b <e2>))
;         (set! u a)
;         (set! v b))
;       <e3>))
;   
;   Here a and b are meant to represent new variable names, created by the
;   interpreter, that do not appear in the user's program. Consider the
;   solve procedure from section [3.5.4]:
;   
;   (define (solve f y0 dt)
;     (define y (integral (delay dy) y0 dt))
;     (define dy (stream-map f y))
;     y)
;   
;   Will this procedure work if internal definitions are scanned out as
;   shown in this exercise?  What if they are scanned out as shown in the
;   text?  Explain.
;   
;   ------------------------------------------------------------------------
;   [Exercise 4.18]: http://sicp-book.com/book-Z-H-26.html#%_thm_4.18
;   [Section 3.5.4]: http://sicp-book.com/book-Z-H-24.html#%_sec_3.5.4
;   4.1.6 Internal Definitions - p390
;   ------------------------------------------------------------------------