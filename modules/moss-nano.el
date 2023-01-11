;;; nano --- Summary

;;; Commentary:

;;; Code: ------------------------------------------------------------

(message "[ Moss ] Loading module, nano  ... ")

(use-package nano
  :defer t  ; otherwise we load all the lisp files.
  :straight
  (nano :type git :host github :repo "rougier/nano-emacs"
        :fork (:host github :repo "ethanmoss1/nano-emacs"))
  :init
  (setq nano-font-size 10)
  (setq nano-font-family-monospaced "JetBrainsMono Nerd Font Mono"))

;; Set up.












(require 'nano-base-colors)
(require 'nano-faces)
(require 'nano-theme)                   ;
(require 'nano-layout)                  ; Frame, fringe, ui changes
(require 'nano-modeline)                ; Nano Modeline
;; (require 'nano-mu4e)

;; Load Nano
(nano-faces)
(nano-theme)

;; Reset some toolbars(?)
(tool-bar-mode -1)                      ; Gets turned on for some reason?
(scroll-bar-mode -1)                    ; Same as above
(menu-bar-mode -1)

(provide 'moss-nano)
;;; moss-nano.el ends here
