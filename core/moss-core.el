;;; moss-core --- Summary

;;; Commentary:

;;; Code:

(message "[ Moss ] Loading Core ... ")

(defun display-startup-echo-area-message ()
  "Display startup echo area message."
  (message "Emacs initialized in %s" (emacs-init-time)))

;; Set up load directorys
(defvar moss-core-dir (file-name-directory load-file-name)
  "Core directory for configuration.")

(defvar moss-dir (expand-file-name ".." moss-core-dir)
  "Root directory of configuration files.")

(defvar moss-cache-dir (expand-file-name "cache" user-emacs-directory)
  "Main cache directory which packages should be configured to use.")

(unless (file-exists-p moss-cache-dir)
  (make-directory moss-cache-dir t))

(defun moss-dir (name)
  "Return absolute path to sub-directory NAME under moss-dir."
  (expand-file-name name moss-dir))

(defun moss-cache-dir (name)
  "Return absolute path to sub-directory NAME under moss-cache-dir."
  (expand-file-name name moss-cache-dir))

;; Setup load-path
(add-to-list 'load-path moss-core-dir)

;; Package Manager.
(require 'moss-package-manager)
(require 'moss-performance)
(require 'moss-ui)
(require 'moss-editor)

(require 'moss-modules)

(setq custom-file (moss-cache-dir "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(message "[ Moss ] Moss Configuration loaded successfully!")

(provide 'moss-core)
;;; moss-core.el ends here
