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
(setq inhibit-startup-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t
      initial-scratch-message nil)

;; Cursor Customisations
(setq blink-cursor-delay 0.5)
(setq blink-cursor-interval 0.5)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))  ; default
(setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ; scroll window under mouse

;; Scrolling via Keyboard
(setq scroll-margin 14)  ; Scroll when x lines away from window top and bottom.
(setq scroll-step 0)  ; scroll amount
(setq scroll-conservatively most-positive-fixnum)  ; dont want to jumps around
(setq maximum-scroll-margin 0.3)

;; Set up font
(if window-system  ; use terminal font in terminal, quicker loading.
    ;; Set default font based on priority list
    (let* ((families '("JetBrains Mono"
                       "Roboto Nerd Font Mono"
                       "Roboto Mono"
                       "Roboto"))
           (family (catch 'found
                     (dolist (f families)
                       (if (member f (font-family-list))
                           (throw 'found f))))))
      (set-face-attribute 'default nil
                          :family family :height 100)))

(provide 'moss-ui)
;; Emacs UI configurations:1 ends here
