(message "[ Moss ] Loading Modules ... ")

;; Setting up module load path
(defvar moss-modules-dir (expand-file-name "modules" user-emacs-directory)
  "Main modules directory where package configurations are.")
(add-to-list 'load-path moss-modules-dir)

;; Built in modules ------------------------------------------------------------
(require 'moss-dired)
(require 'moss-recentf)
(require 'moss-savehist)
(require 'moss-display-fill-column)

;; External Packages -----------------------------------------------------------

;; Main Theme
(require 'moss-base16)
;; (require 'moss-gruvbox)

;; Additional Theming
;; (require 'moss-nano)                    ; makes emacs more elegant
(require 'moss-alltheicons)             ; Icons for modules
;; (require 'moss-solaire)
(require 'moss-personal-themeing)

;; Documentation
;; (require 'moss-hydra)
(require 'moss-helpful)

;; Completion interfaces
(require 'moss-vertico)
(require 'moss-orderless)
(require 'moss-marginalia)
(require 'moss-consult)
;; (require 'moss-mini-frame)

;; Editing
(require 'moss-rainbow)
(require 'moss-buffer-move)
(require 'moss-shell-pop)

;; Version Control
(require 'moss-magit)

;; Project
(require 'moss-projectile)

;; LSP
(require 'moss-eglot)
(require 'moss-company)
(require 'moss-tree-sitter)

;; Filetype specific
;; (require 'moss-pdf-tools)

;; Languages

;; Email client
;; (require 'moss-mu4e)
;; (require 'moss-mu4e-dashboard)

;; Modeline
(require 'moss-minions)

(provide 'moss-modules)
