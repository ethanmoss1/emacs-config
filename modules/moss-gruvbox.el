;; Gruvbox
;; The best theme, IMO.

;; [[file:../emacsconfig.org::*Gruvbox][Gruvbox:1]]
(message "[ Moss ] Loading Module, Theme-Gruvbox ... ")

;; Favourite theme by far.
(use-package gruvbox-theme
  :init (load-theme 'gruvbox t)
  :config
  ;; (set-face-attribute hl-line-face nil :inherit default :background "#3c3836")

  ;; depending on whats loaded, we make some modifications.
  (with-eval-after-load "org"
    (set-face-attribute 'org-level-1 nil :height 1.5)
    (set-face-attribute 'org-level-2 nil :height 1.2)
    (set-face-attribute 'org-block-end-line nil :foreground "#282828")
    (set-face-attribute 'org-block-begin-line nil :foreground "#282828"))
  (with-eval-after-load "tree-sitter-langs"
    (set-face-attribute 'tree-sitter-hl-face:function.call nil
                        :inherit font-lock-function-name-face)))

(provide 'moss-gruvbox)
;; Gruvbox:1 ends here
