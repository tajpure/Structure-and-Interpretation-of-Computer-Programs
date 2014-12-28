# Exercise1.1
# 10 12 8 3 6 3 4 19 #f 4 16 6 ?

# Exercise1.2
(/ (+ 5 (/ 1 2) (- 2 (- 3 (+ 6 (/ 1 3)))))
    (* 3 (- 6 2) ( - 2 7)))

# Exercise1.3
(define (square x) (* x x))
(define (square_sum x y) (+ (square x) (square y)))
(define (two_big x y)
  (cond (< x y) y)
        (else x))
(define (two_square_sum a b c)
  (cond ((< a b) (square_sum b (two_big a c)))
        ((< a c) (square_sum a c))
        (else (square_sum a (two_big b c)))))

# Exercise1.4
# If "b" is bigger than zero, "a" will plus b, otherwise minus b.

# Exercise1.5
# Application Order:

# Normal Order:

# Exercise1.6
# So far, I think it will work normally as usual.

# Exercise1.7
# Yes, it does.

# Exercise1.8
(define (good-enough? guess guess-past)
    (< (abs (- guess guess-past)) 0.0001))
(define (improve guess x)
    (/ (+ (/ x (* y y)) (* 2 y)) 3))
(define (cube-iter guess x)
   (cond ((good-enough? guess x) guess)
             (else (cube-iter (improve guess x) x))))

# Exercise1.9
# Resursive? I'm not sure.
# Iterative

# Exercise1.10
# 2^10 2^16 2^16

# Exercise1.10
# recursive:
(define (f n)
        (cond (< n 3) n)
            (else (+ (f (- n 1)) (* (f (- n 2)) 2) (* (f (- n 3)) 3))))
# iterative:
(define (f n) (f-iter n 0))
(define (f-iter n sum)
        (cond (< n 3) n+sum)
            (else (+ (f-iter (- n 1) sum) (* (f-iter (- n 2) sum) 2) (* (f-iter (- n 3) sum) 3) sum)))
