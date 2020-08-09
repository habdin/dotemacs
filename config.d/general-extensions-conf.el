;; Always reveal the pairing symbol (brackets mainly +/- others)

(show-paren-mode t)

;; Enable entering brackets, quotes, double-quotes and other symbols in pairs

(electric-pair-mode t)

;; Use `all-the-icons' package and its daughter packages for showing icons for files within dired and File navigation pane (neotree or treemacs)

(use-package all-the-icons
  :ensure t)

(use-package all-the-icons-dired
  :ensure t
  :after all-the-icons
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

(use-package all-the-icons-ivy
  :ensure t
  :init (add-hook 'after-init-hook 'all-the-icons-ivy-setup))

