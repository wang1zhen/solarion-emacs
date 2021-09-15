;;; init-package.el --- Initialize package configurations -*- lexical-binding: t -*-

;;; Code:

;; Uncomment for mirrors in China
;; (setq package-archives '(("elpa" . "https://elpa.emacs-china.org/gnu/")
;;           ("melpa" . "https://elpa.emacs-china.org/melpa/")
;;                          ("org" . "https://elpa.emacs-china.org/org/")))

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Initialize packages
(unless (bound-and-true-p package--initialized) ; To avoid warnings in 27
  (setq package-enable-at-startup nil)          ; To prevent initializing twice
  (package-initialize))

;; Setup `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Should set before loading `use-package'
(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-expand-minimally t)
  (setq use-package-enable-imenu-support t))

(eval-when-compile
  (require 'use-package))

;; Required by `use-package'
(use-package diminish)
(use-package bind-key)

;; Update GPG keyring for GNU ELPA
(use-package gnu-elpa-keyring-update)

;; Auto update packages
(use-package auto-package-update
  :init
  (setq auto-package-update-delete-old-versions t
        auto-package-update-hide-results t
        auto-package-update-interval 7
        auto-package-update-prompt-before-update t)
  (defalias 'upgrade-packages #'auto-package-update-now))

(provide 'init-package)
