;; lots of packages

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; nice and small font
(add-to-list 'default-frame-alist '(font .  "Bitstream Vera Sans Mono-9" ))
(set-face-attribute 'default t :font  "Bitstream Vera Sans Mono-9" )
(set-frame-font "Bitstream Vera Sans Mono-9")

;; for the Meteor tutorial, 2 space indent
(setq js-indent-level 2)

;; try hard to leave no tabs in files
(setq-default indent-tabs-mode nil)

;; for HTML & JS files at least, remove trailing whitespace on save
;; actually 'html-mode-hook is NIL or something, so do it all the time.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; I always want to see parens get matched visually when I cursor
;; over them.
(show-paren-mode 1)

;; If the paren is off-screen, show info in the little bottom buffer.
    (defadvice show-paren-function
      (after show-matching-paren-offscreen activate)
      "If the matching paren is offscreen, show the matching line in the
        echo area. Has no effect if the character before point is not of
        the syntax class ')'."
      (interactive)
      (let* ((cb (char-before (point)))
             (matching-text (and cb
                                 (char-equal (char-syntax cb) ?\) )
                                 (blink-matching-open))))
        (when matching-text (message matching-text))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
