;; ERC configuration file

;; Add `erc-colorize' extension

(use-package erc
  :defer t
  :config
  ;; Set user information
  (setq erc-nick "Lordveda")
  (setq erc-user-full-name "Hassan Abdin")
  ;; Load user password file
  (load (concat user-emacs-directory "config.d/erc-auth.el")))

(use-package erc-colorize
  :defer t
  :config
  (erc-colorize-mode 1))
