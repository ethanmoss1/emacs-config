;; Helpful

;; [[file:../emacsconfig.org::*Helpful][Helpful:1]]
(message "[ Moss ] Loading module, Helpful  ... ")

(use-package helpful
  :bind
  ;; Note that the built-in 'describe-function' includes both functions
  ;; and macros. 'helpful-function' is functions only, so we provide
  ;; 'helpful-callable' as a drop-in replacement.
  ("C-h f" . helpful-callable)
  ("C-h v" . helpful-variable)
  ("C-h k" . helpful-key)
  ("C-h h" . helpful-at-point))

(provide 'moss-helpful)
;; Helpful:1 ends here
