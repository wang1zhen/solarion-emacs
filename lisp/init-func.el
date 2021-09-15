;;; init-func.el --- Useful functions are defined here -*- lexical-binding: t -*-

;;; Code:

(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))

(global-set-key [f12] 'indent-buffer)

(provide 'init-func)
