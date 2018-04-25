;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Ministat) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;Mini stat program
;By Aisha Jackson
; November 6, 2014

;Function for sum of a list
(define (lst ls)
  (cond ((null? ls) 0)
        (else (+ (car ls) (lst (cdr ls))))
        )
  )
(display "Sum: " )
(lst '(23 5 4 1 34 8 9 20 33 50))
(newline)

;function for insertion sort
(define (insert x lst)
  (if (null? lst)
      (list x)
      (let ((y (car lst))
            (ys (cdr lst)))
        (if (<= x y)
            (cons x lst)
            (cons y (insert x ys))))))
 
(define (insertion-sort lst)
  (if (null? lst)
      '()
      (insert (car lst)
              (insertion-sort (cdr lst)))))
 (display "Sorted List: ")
(insertion-sort '(23 5 4 1 34 8 9 20 33 50))
(newline)

;Function for finding the max
(display "Max: ")
(apply max '(23 5 4 1 34 8 9 20 33 50))
(newline)

;function for finding the min
(display "Min: ")
(apply min '(23 5 4 1 34 8 9 20 33 50))
(newline)

;function for finding the average
(define (average num-list)
 (/ (apply + num-list) (length num-list)))
(display "Average: ")
(average '(23 5 4 1 34 8 9 20 33 50))

