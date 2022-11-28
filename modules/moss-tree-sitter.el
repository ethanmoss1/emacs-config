;;; moss-tree-sitter.el --- Summary

;;; Commentary : ---------------------------------------------------------------

;;; Code : ---------------------------------------------------------------------

(message "[ Moss ] Loading module, tree-sitter  ... ")

(use-package tree-sitter
  :init
  (use-package tree-sitter-langs)
  :config
  (add-hook 'tree-sitter-after-on-hook 'ts-fold-indicators-mode))

(use-package ts-fold
  :straight
  (ts-fold :type git :host github :repo "emacs-tree-sitter/ts-fold")
  :init
  (use-package ts-fold-indicators
    :straight
    (ts-fold-indicators :type git :host github
                        :repo "emacs-tree-sitter/ts-fold"))
  :hook
  (tree-sitter-after-on-hook . (lambda ()
                               (set-fringe-mode
                                (set (make-local-variable 'fringe-mode)
                                     (if ts-fond-indicators-mode '(nil . 0) 0)))))
  )


(provide 'moss-tree-sitter)
;;; moss-tree-sitter.el ends here -----------------------------------------------------
