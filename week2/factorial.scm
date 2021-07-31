#lang simply-scheme

(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
           (product term (next a) next b))))

(define (inc x) (+ x 1))

(define (factorial b)
  (product (lambda (x) x) 1 inc b))
        