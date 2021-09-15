;;; init-benchmarking.el --- Measure startup time -*- lexical-binding: t -*-

;;; Code:

(defun solarion/startup-benchmark ()
  "Showing Emacs initializing time, packages loaded and GC"
  (format "Emacs loaded %d packages in %.2f ms with %d garbage collections."
          (- (length load-path) (length (get 'load-path 'initial-value)))
          (* 1000 (float-time (time-subtract after-init-time before-init-time)))
          gcs-done))

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq init-message (solarion/startup-benchmark))
            (message init-message)))

(provide 'init-benchmarking)
