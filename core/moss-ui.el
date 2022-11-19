;; Emacs UI configurations

;; [[file:../emacsconfig.org::*Emacs UI configurations][Emacs UI configurations:1]]
(message "[ Moss ] Loading Core Ui Configurations  ... ")

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)

(setq frame-title-format
      '("Emacs - " (:eval (if (buffer-file-name)
                              (abbreviate-file-name (buffer-file-name))
                            "%b"))))

(setq use-dialog-box nil)               ; Dont want GUI popups

;; Startup
(setq inhibit-startup-message t)

;; Cursor Customisations

(setq blink-cursor-delay 0.5)
(setq blink-cursor-interval 0.5)

(setq mouse-wheel-scroll-amount '(1  ; default
                                  ((shift) . 2)             ; shift scroll
                                  ((control) . text-scale))) ; zoooooom
(setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ; scroll window under mouse

;; Scrolling via Keyboard
(setq scroll-margin 5)  ; Scroll when x lines away from window top and bottom.
(setq scroll-step 1)
(setq scroll-conservatively 10000)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; Set up font
(if window-system  ; use terminal font in terminal, quicker loading.
    ;; Set default font based on priority list
    (let* ((families '("Roboto Nerd Font Mono"
                       "Roboto Mono"
                       "Roboto"))
           (family (catch 'found
                     (dolist (f families)
                       (if (member f (font-family-list))
                           (throw 'found f))))))
      (set-face-attribute 'default nil :family family :height 100)))

(if (version< "29" emacs-version)
    (pixel-scroll-precision-mode 1))

(provide 'moss-ui)
;; Emacs UI configurations:1 ends here
