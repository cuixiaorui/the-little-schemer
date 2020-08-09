#lang Racket
; comment

; atom
; string
"atom"
`atom
'atom
`*abc

; number
1

; list
`(1)
`(1 2 3 4 5)
`(atom b c)
`(atom (b c))


; car 取 list 的第一个元素
(car `(1 2 3))


; cdr 取 list 除了第一个元素后面的 list
(cdr `(1 2 3))

; 使用 define 定义列表
(define l `(1,2,3))
(car l)
(cdr l)

; 应该输出 2
(car(cdr l))


;(car ()) car 不能用于空列表


; cons
; 向列表的头部添加一个元素
(define l1 `(1 2 3 4))
(cons 0 l1)


;null
; 检测列表是否为空
(define l2 `())
(null? l1)
(null? l2)

; eq 判断是否相等 2个参数 每个参数都必须是一个非数字的原子
(define s `heiheihei)
(eq? s `heiheihei)
(eq? s `1heiheihei)