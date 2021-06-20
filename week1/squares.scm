#lang simply-scheme

(define (squares nums)
  (if (empty? nums)
      '()
      (se (square (first nums))
	  (squares (bf nums)) )))

(define (square x) (* x x))