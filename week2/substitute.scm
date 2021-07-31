#lang simply-scheme

(define (substitute sent old new)
  (if (empty? sent)
      '()
      (se (if (equal? (first sent) old)
              new
              (first sent) )
          (substitute (bf sent) old new) )))