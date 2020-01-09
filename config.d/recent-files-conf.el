;; Configure `recentf' behaviour

(use-package recentf
  :config
  (progn
    ;; save every 60 minutes
    (run-at-time nil (* 60 60) 'recentf-save-list)
    (setq recentf-max-saved-items 1000
	  recentf-auto-cleanup 'never
	  recentf-exclude '("/ssh:"))
    (recentf-mode t)))
