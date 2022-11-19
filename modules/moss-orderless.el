;; Orderless
;; Completion framework

;; [[file:../emacsconfig.org::*Orderless][Orderless:1]]
(message "[ Moss ] Loading Module, Orderless  ... ")

(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(provide 'moss-orderless)
;; Orderless:1 ends here
