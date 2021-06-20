#lang simply-scheme

(define (ordered? nums)
   (if (empty? (bf nums))
       #t
       (if (> (first nums) (first (bf nums))) 
           #f
           (ordered? (bf nums)) )))