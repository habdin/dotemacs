;; Install & Enable `flycheck' as the default syntax checking tool for Emacs

(use-package flycheck
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'flycheck-mode))

;; Configure `flyspell'

(use-package flyspell
  :ensure t
  :config
  (flyspell-mode t))
