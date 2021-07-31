#lang simply-scheme

(define (make-tester wd)
  (lambda (x) (equal? x wd)) )

(define sicp-author-and-astronomer? (make-tester 'gerry))
