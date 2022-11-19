;;; dired --- Summary

;;; Commentary:

;;; Code:

(message "[ Moss ] Loading module, dired  ... ")

(use-package dired
  :straight (:type built-in)
  :defer t
  :config
  (setq dired-listing-switches "-lah --group-directories-first"
        dired-hide-details-mode t))

(provide 'moss-dired)
;;; moss-dired.el ends here
