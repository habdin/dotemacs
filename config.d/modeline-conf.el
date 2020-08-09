;; Use `diminish' to diminish minor modes from mode line to save space

(use-package diminish
  :diminish abbrev-mode
  :diminish auto-fill-function)

;; Use a more intelligent modeline utility `smart-mode-line'

;;(use-package smart-mode-line
;;  :ensure t
;;  :config
;;  (setq sml/no-confirm-load-theme t)
;;  (setq sml/theme 'respectful)
;;  (sml/setup))

(use-package doom-modeline
	     :ensure t
	     :init (doom-modeline-mode 1))
