;;; custom.el --- user customization file    -*- lexical-binding: t no-byte-compile: t -*-

;;; Code:

(setq solarion-full-name "user name"
      solarion-mail-address "user email address"
      solarion-projectile-dir "projectile directory")

(when (display-graphic-p)
  (cond
   ((equal (system-name) "") (setq font-size-factor 3))
   (t (setq font-size-factor 2))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
