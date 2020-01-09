;; Use `session' package to save various settings between sessions

(use-package session
  :ensure t
  :init
  (add-hook 'after-init-hook 'session-initialize))
