;; ERC configuration file

;; Add `erc-colorize' extension

(use-package erc-colorize
  :defer t
  :config
  (erc-colorize-mode 1))

;; Set user information

(setq erc-nick "Lordveda")
(setq erc-user-full-name "Hassan Abdin")

;; Load user password file

(load "~/.config/emacs/config.d/erc-auth.el")
