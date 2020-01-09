;;; package --- Summary:
;;; Commentary:

;;; Code:

;;; `use-package' is the package manager

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)
