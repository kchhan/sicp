#lang simply-scheme

(define (filtered-accumulate filter combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((filter a)
         (combiner (term a)
                (filtered-accumulate filter
                                     combiner
                                     null-value
                                     term
                                     (next a)
                                     next
                                     b)))
        (else (filtered-accumulate filter
                                   combiner
                                   null-value
                                   term
                                   (next a)
                                   next
                                   b)) ))

(define (sum-prime a b)
  (filtered-accumulate prime?
                       +
                       1
                       (lambda (x) x)
                       a
                       (lambda (x) (+ x 1))
                       b))

(define divides?
  (lambda (a b)
    (= (remainder a b) 0)))

(define (square x) (* x x))

(define prime?
  (lambda (n)
    (cond ((or (= n 1) (= n 0)) #f)
      ((= n 2) #t)
      ((even? n) #f)
      (else (let prime-test ( (d 3) )
          (cond ((> (square d) n) #t)
            ((divides? n d) #f)
            (else (prime-test (+ d 2)))))))))