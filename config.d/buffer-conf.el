;; Hide Emacs Startup screen

(setq inhibit-startup-screen t)

;; Define and Load a custom file where different customizations written by
;; Emacs custmization tool.

(setq custom-file "~/.config/emacs/custom.el")
(load custom-file)

;; Disable Toolbar, Menubar and ScrollBar

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(line-number-mode 1)

;; Load the desired emacs theme

(load-theme 'doom-gruvbox)

;; Define default Emacs environment settings

(set-language-environment "utf-8")
(set-default-coding-systems 'utf-8)

;; Highlight current line globally

(global-hl-line-mode)

;; Show line numbers

(global-linum-mode)

;; Defines the needed ligatures to accurately show Fira Code Font
;; that will be defined in `Appearance' section.

(add-hook 'after-init-hook 'my-set-fira-code-ligatures)

;; Set the default font for Emacs

(add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")))
(add-to-list 'default-frame-alist
	     '(font . "Fira Code-11"))

;; Always indicate empty lines within files and buffers

(setq default-indicate-empty-lines t)

;; Change Default yes-or-no-p to a shorter prompt

(fset 'yes-or-no-p 'y-or-n-p)

;; Make the Editor aware of disk changes for any file opened within Emacs

(global-auto-revert-mode 1)


;; Use `whitespace' to visualise whitespace

(use-package whitespace
  :diminish whitespace-mode)

;; Turn off highlight long lines

(setq whitespace-line-column 10000)

;; Use `volatile-highlights' to highlight changes from pasting, ...etc.

(use-package volatile-highlights
  :diminish volatile-highlights-mode
  :config
  (volatile-highlights-mode t))

;; rainbow-mode - colourise colours in the buffer
(use-package rainbow-mode)

;; rainbow-delimiters - show matching brackets etc
(use-package rainbow-delimiters
  :config
  (setq global-rainbow-delimiters-mode 1))

;; show page breaks
(use-package page-break-lines
  :diminish page-break-lines-mode
  :config
  (global-page-break-lines-mode 1)
  (setq page-break-lines-modes '(emacs-lisp-mode lisp-mode scheme-mode compilation-mode outline-mode help-mode org-mode ess-mode latex-mode)))

;; scroll buffer if cursor is this many lines from the top or bottom
(setq scroll-margin 3)

;; Use `uniquify' to give meaningful names for buffers with the same name

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*") ;; don't muck with special buffers

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)

(setq frame-title-format
      '("" invocation-name " - "
	(:eval (if (buffer-file-name)
		   (abbreviate-file-name (buffer-file-name))
		 "%b"))))
