#lang simply-scheme

(define (switch sentce)
  (se (switch-first (first sentce))
      (switch-rest (bf sentce)) ))
  
(define (switch-first wd)
  (if (equal? wd 'you)
      (se 'i)
      (se wd) ))

(define (switch-rest sent)
  (if (empty? sent)
      '()
      (se (cond ((equal? (first sent) 'i) 'you)
                ((equal? (first sent) 'me) 'you)
                ((equal? (first sent) 'you) 'me)
                (else (first sent)) )
          (switch-rest (bf sent)) )))
  