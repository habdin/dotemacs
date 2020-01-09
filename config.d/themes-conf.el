;; Download the themes of choice for Emacs

(use-package solarized-theme
  :ensure t
  :config
  (setq solarized-distinct-fringe-background t)
  (setq solarized-use-variable-pitch nil)
  (setq solarized-high-contrast-mode-line t)
  (setq solarized-use-less-bold t)
  (setq solarized-use-more-italic t)
  (setq solarized-emphasize-indicators t)
  (setq solarized-scale-org-headlines nil)
  (setq solarized-height-minus-1 1.0)
  (setq solarized-height-plus-1 1.0)
  (setq solarized-height-plus-2 1.0)
  (setq solarized-height-plus-3 1.0)
  (setq solarized-height-plus-4 1.0)
  (setq x-underline-at-descent-line t))

(use-package intellij-theme
  :ensure t)

(use-package labburn-theme
  :ensure t)

(use-package abyss-theme
  :ensure t)

(use-package underwater-theme
  :ensure t)

(use-package doom-themes
  :ensure t)
