;;; init-evil.el --- Initialize evil settings -*- lexical-binding: t; -*-

(use-package evil
  :init
  (setq
   evil-want-integration t
   evil-want-keybinding nil
   evil-want-C-u-scroll t
   evil-want-C-i-jump nil
   evil-disable-insert-state-bindings t)
  (evil-mode 1)
  :config
  (evil-global-set-key 'insert (kbd "C-g") 'evil-normal-state)

  ;; Visual line motions
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)

  ;; Emacs flavour moving in normal and visual mode
  (evil-global-set-key 'normal (kbd "C-f") 'forward-char)
  (evil-global-set-key 'normal (kbd "C-b") 'backward-char)
  (evil-global-set-key 'normal (kbd "C-n") 'next-line)
  (evil-global-set-key 'normal (kbd "C-p") 'previous-line)
  (evil-global-set-key 'normal (kbd "C-a") 'move-beginning-of-line)
  (evil-global-set-key 'normal (kbd "C-e") 'move-end-of-line)

  (evil-global-set-key 'visual (kbd "C-f") 'forward-char)
  (evil-global-set-key 'visual (kbd "C-b") 'backward-char)
  (evil-global-set-key 'visual (kbd "C-n") 'next-line)
  (evil-global-set-key 'visual (kbd "C-p") 'previous-line)
  (evil-global-set-key 'visual (kbd "C-a") 'move-beginning-of-line)
  (evil-global-set-key 'visual (kbd "C-e") 'move-end-of-line)

  (evil-global-set-key 'insert (kbd "C-u") 'undo))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(provide 'init-evil)
