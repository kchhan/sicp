#lang simply-scheme

(define (ends-e sent)
  (if (empty? sent)
      '()
      (se (if (word-ends-e (first sent))
              (se (first sent))
              '())
          (ends-e (bf sent)) )))
   

(define (word-ends-e wd)
  (if (empty? (bf wd))
      (if (equal? wd 'e)
          #t
          #f)
      (word-ends-e (bf wd)) ))