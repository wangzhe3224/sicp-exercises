#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 3.11")

;   Exercise 3.11
;   =============
;   
;   In section [3.2.3] we saw how the environment model described the
;   behavior of procedures with local state.  Now we have seen how internal
;   definitions work.  A typical message-passing procedure contains both of
;   these aspects.  Consider the bank account procedure of section [3.1.1]:
;   
;   (define (make-account balance)
;     (define (withdraw amount)
;       (if (>= balance amount)
;           (begin (set! balance (- balance amount))
;                  balance)
;           "Insufficient funds"))
;     (define (deposit amount)
;       (set! balance (+ balance amount))
;       balance)
;     (define (dispatch m)
;       (cond ((eq? m 'withdraw) withdraw)
;             ((eq? m 'deposit) deposit)
;             (else (error "Unknown request -- MAKE-ACCOUNT"
;                          m))))
;     dispatch)
;   
;   Show the environment structure generated by the sequence of interactions
;   
;   (define acc (make-account 50))
;   
;   ((acc 'deposit) 40)
;   90
;   
;   ((acc 'withdraw) 60)
;   30
;   
;   Where is the local state for acc kept?  Suppose we define another
;   account
;   
;   (define acc2 (make-account 100))
;   
;   How are the local states for the two accounts kept distinct?  Which
;   parts of the environment structure are shared between acc and acc2?
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.11]: http://sicp-book.com/book-Z-H-21.html#%_thm_3.11
;   [Section 3.2.3]: http://sicp-book.com/book-Z-H-21.html#%_sec_3.2.3
;   [Section 3.1.1]: http://sicp-book.com/book-Z-H-20.html#%_sec_3.1.1
;   3.2.4 Internal Definitions - p251
;   ------------------------------------------------------------------------