;;; init-edit.el --- Initialize editing configurations -*- lexical-binding: t -*-

;;; Code:

;; Automatically reload files was modified by external program
(use-package autorevert
  :ensure nil
  :diminish
  :hook (after-init . global-auto-revert-mode))

;; Jump to things in Emacs tree-style
(use-package avy
  :bind (("C-'" . avy-goto-char-2)
         ;;("M-g f" . avy-goto-line)
         )
  :hook (after-init . avy-setup-default)
  :config (setq avy-all-windows nil
                avy-all-windows-alt t
                avy-background t
                avy-style 'at-full))

(use-package beginend
  :diminish beginend-global-mode
  :hook (after-init . beginend-global-mode))

;; Evil-nerd-commenter

;; A comprehensive visual interface to diff & patch
(use-package ediff
  :ensure nil
  :hook(;; show org ediffs unfolded
        (ediff-prepare-buffer . outline-show-all)
        ;; restore window layout when done
        ;; (ediff-quit . winner-undo)
        )
  :config
  (setq ediff-window-setup-function 'ediff-setup-windows-plain
        ediff-split-window-function 'split-window-vertically
        ediff-merge-split-window-function 'split-window-vertically))

;; Automatic parenthesis pairing
(use-package elec-pair
  :ensure nil
  :hook (after-init . electric-pair-mode)
  :init (setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit))

;; Increase selected region by semantic units
(use-package expand-region
  :bind ("C-c =" . er/expand-region))

;; Hungry deletion
(use-package hungry-delete
  :diminish
  :hook (after-init . global-hungry-delete-mode)
  :init (setq hungry-delete-except-modes
              '(help-mode minibuffer-mode minibuffer-inactive-mode calc-mode)))

;; Move to the beginning/end of line or code
(use-package mwim
  :bind (([remap move-beginning-of-line] . mwim-beginning-of-code-or-line)
         ([remap move-end-of-line] . mwim-end-of-code-or-line)))

;; Undo-fu
(use-package undo-fu
  :bind
  ("C-/" . undo-fu-only-undo)
  ("C-r" . undo-fu-only-redo)
  ("C-x u" . undo-fu-only-undo)
  ("C-x r" . undo-fu-only-redo))

;; Handling capitalized subwords in a nomenclature
(use-package subword
  :ensure nil
  :diminish
  :hook ((prog-mode . subword-mode)
         (minibuffer-setup . subword-mode)))

(use-package sudo-edit)

(provide 'init-edit)
