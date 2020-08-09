;; Add support for Fira-code to programming mode

;; (add-hook 'prog-mode-hook 'my-set-fira-code-ligatures)
;; (add-hook 'prog-mode-hook 'linum-mode)

(dolist (attach '(my-set-fira-code-ligatures display-line-numbers-mode yas-minor-mode))
  (add-hook 'prog-mode-hook attach))
