;;; init-ui.el --- Better lookings and appearances. -*- lexical-binding: t -*-

;;; Code:

;; Title
(setq frame-title-format '("Solarion Emacs - %b")
      icon-title-format frame-title-format)

;; Optimization
(setq idle-update-delay 1.0)

(setq-default cursor-in-non-selected-windows nil)
(setq highlight-nonselected-windows nil)

(scroll-bar-mode -1) ;; Disable visible scrollbar
(tool-bar-mode -1) ;; Disable the toolbar
(menu-bar-mode -1) ;; Disable the menu bar
(tooltip-mode -1) ;; Disable tooltips
(set-fringe-mode 10) ;; 左右边框

;; Theme
(use-package doom-themes
  :custom-face
  (doom-modeline-buffer-file ((t (:inherit (mode-line bold)))))
  :custom
  (doom-themes-enable-bold t)
  (doom-themes-enable-italic t)
  :init
  (load-theme 'doom-gruvbox)
  :config
  (doom-themes-visual-bell-config)
  (doom-themes-org-config))

;; Mode-line
(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :diminish)

;; Icons
;; NOTE: Must run `M-x all-the-icons-install-fonts', and install fonts manually on Windows
(use-package all-the-icons
  :if (display-graphic-p)
  :init (unless (or sys/win32p (font-installed-p "all-the-icons"))
          (all-the-icons-install-fonts t)))

(use-package display-line-numbers
  :ensure nil
  :init
  (global-display-line-numbers-mode)
  :config
  (dolist (mode '(org-mode-hook
                  term-mode-hook
                  eshell-mode-hook))
    (add-hook mode (lambda () (display-line-numbers-mode 0)))))

;; Display ugly ^L page breaks as tidy horizontal lines
(use-package page-break-lines
  :diminish
  :hook (after-init . global-page-break-lines-mode))

;; Suppress GUI features
(setq use-file-dialog nil
      use-dialog-box nil
      inhibit-startup-screen t
      inhibit-startup-echo-area-message t)

;; Display dividers between windows
(setq window-divider-default-places t
      window-divider-default-bottom-width 1
      window-divider-default-right-width 1)
(add-hook 'window-setup-hook #'window-divider-mode)

(provide 'init-ui)
