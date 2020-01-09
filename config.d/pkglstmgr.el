;;; package --- Summary:
;;; Commentary:

;;; Code:

;; Enable and configure `paradox' as the package list manager

(use-package paradox
  :defer t
  :config
  (progn
    (load (locate-user-emacs-file "paradox-token") :noerror :nomessage))
  (paradox-enable))

(provide 'pkglstmgr)
;;; pkglstmgr.el ends here
