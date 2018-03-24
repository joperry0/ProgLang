;; hextodec . lsp
;; Author : Jo Perry
;; Description : This function accepts a list of hexadecimals and returns the decimal value

(defun hextodec (exp)
	(loop for char in (reverse exp)
		for m from 0
		for y = (* (expt 16 m) 	;; y_m = decm_char_m * 16 ^ m ;
					(cond 		;; decm_char_m = hex_decoder ( char_m  ) 
						((eq char '0) 0)
						((eq char '1) 1)
						((eq char '2) 2)
						((eq char '3) 3)
						((eq char '4) 4)
						((eq char '5) 5)
						((eq char '6) 6)
						((eq char '7) 7)
						((eq char '8) 8)
						((eq char '9) 9)
						((eq char 'a) 10)
						((eq char 'b) 11)
						((eq char 'c) 12)
						((eq char 'd) 13)
						((eq char 'e) 14)
						((eq char 'f) 15)
						(t 0)
					)
				)
		sum y					;; returns sum ( y_m, m = [0, length(exp)] )
	)
)
