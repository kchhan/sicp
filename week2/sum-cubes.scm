#lang simply-scheme

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (inc n) (+ n 1))

(define (cube x) (* x x x))

(define (sum-cubes a b)
  (sum cube a inc b))