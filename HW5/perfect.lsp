;; perfect . lsp
;; Author : Jo Perry
;; Description : This function accepts a positive integer and returns a list of its divisors if it
;;		is a perfect number or nil otherwise.

(defun perfect (n)
	(cond 
		((= (loop for x in 
				(setq b (loop for m from 1 to (- n 1)	;; build a list, b, of positive divisors of n
							for y = (mod n m)
						when (= y 0)					;; collect divisor m only when n % m = 0
							collect m))
			sum x) n) b)	;; return sum of valid divisors as x, compare it to n, return b if so
		(t nil)				;; return nil if n is not a perfect number
	)
)
