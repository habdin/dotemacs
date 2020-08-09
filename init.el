;; Emacs configuration file written in Org-mode

;; (package-initialize)

(setq gc-cons-threshold most-positive-fixnum)
(setq package-enable-at-startup nil)
(advice-add #'package--ensure-init-file :override #'ignore)
;;(org-babel-load-file (expand-filename "config.org" (file-name-directory load-file-name)))
(org-babel-load-file (concat user-emacs-directory "config.org"))
