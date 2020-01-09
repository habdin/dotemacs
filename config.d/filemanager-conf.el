(use-package neotree
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  :bind
  ([f3] . neotree-toggle))
