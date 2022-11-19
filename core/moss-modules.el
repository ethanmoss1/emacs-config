(message "[ Moss ] Loading Modules ... ")

;; Setting up module load path
(defvar moss-modules-dir (expand-file-name "modules" user-emacs-directory)
  "Main modules directory where package configurations are.")
(add-to-list 'load-path moss-modules-dir)

(require 'moss-gruvbox)

(require 'moss-vertico)
(require 'moss-orderless)
(require 'moss-marginalia)
(require 'moss-consult)
(require 'moss-minions)
(require 'moss-helpful)
(require 'moss-projectile)
(require 'moss-eglot)
(require 'moss-magit)
(require 'moss-dired)

(provide 'moss-modules)
