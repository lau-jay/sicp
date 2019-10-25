#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0)
       +
       -) a b))

;; (if (> b 0) + -)
;; 操作允许为表达式，所以这里通过表达式的求值来
;; 决定操作符
;; 等价替换为这个可能会更好理解
(define (op b)
  (if ( > b 0)
      +
      -
   ))
(define (a-plus-abs-b2 a b)
  ((op b) a b))

(a-plus-abs-b 1 -2)
(a-plus-abs-b2 1 -2)
