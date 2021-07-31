#lang simply-scheme

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

(define (sum a b)
  (accumulate +
              0
              (lambda (x) x)
              a
              (lambda (x) (+ x 1))
              b))

(define (factorial n)
  (accumulate *
              1
              (lambda (x) x)
              1
              (lambda (x) (+ x 1))
              n))