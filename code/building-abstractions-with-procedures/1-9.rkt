#lang sicp
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

; 代换过程如下
; (+ 4 5)
; (inc (+ 3 5))
; (inc (inc (+ 2 5)))
; (inc (inc (inc (+ 1 5))))
; (inc (inc (inc (inc (+ 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9
; 能够很清晰的看出, 先展开再收缩的过程
; 是递归的

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
; (+ 4 5)
; (+ (dec 4) (inc 5))
; (+ (dec 3) (inc 6))
; (+ (dec 2) (inc 7))
; (+ (dec 1) (inc 8))
; (+ (dec 0) (inc 9))
; (+ 0 9)
; 9

; 以上的过程是迭代的
