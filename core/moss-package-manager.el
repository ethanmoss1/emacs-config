;; Straight Package management with use-package
;; Easy, and reproducable Emac configuration with straight and use-package

;; [[file:../emacsconfig.org::*Straight Package management with use-package][Straight Package management with use-package:1]]
(message "[ Moss ] Loading Package manager, Straight ... ")

;; Make sure we use 'Use-Package'
(setq straight-use-package-by-default t)

;; Script that sets up Straight if not on the system already
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; set up use-package to wrap packages nicely.
(straight-use-package 'use-package)

;; Set up keybinding helper
(use-package general)

(provide 'moss-package-manager)
;; Straight Package management with use-package:1 ends here
