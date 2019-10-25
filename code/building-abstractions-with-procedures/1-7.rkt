#lang sicp
(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square x) (* x x))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))


(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.0001)
;; 0.03230844833048122
;; 值应该是0.01
;; 其原因如题目，所说，当guess的平方与x之差
;; 算术运算是会有精度误差的


(define (good-enough? old-guess new-guess)
    (> 0.01
       (/ (abs (- new-guess old-guess))
          old-guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (sqrt-iter (improve guess x)
                 x)))

;; 改成题目建议的就好了
