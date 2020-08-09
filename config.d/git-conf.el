;; Install and Enable `magit' for managing Git version control system

(use-package magit
  :ensure t)

(use-package magit-gh-pulls
  :ensure t
  :config
  (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls))

(use-package magit-gitflow
  :ensure t)

(use-package magit-imerge
  :ensure t)

(use-package magithub
  :ensure t)
