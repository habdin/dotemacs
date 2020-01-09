(use-package dash)
(use-package dash-functional)

;; The next two functions are used to assign web-mode css/html to their
;; corresponding buffers when opening filenames with corresponding extensions

(defun my-check-extension (extension)
  "Check the file extension for the current buffer filename"
  (string= (file-name-extension buffer-file-name) extension))

(defun my-skewer-enable ()
  "Enables skewer-mode html or css for files with respective file extensions."
  (cond ((my-check-extension "html")
	 (skewer-html-mode 1))
	((my-check-extension "css")
	 (skewer-css-mode 1)))
  )

;; The next two functions configure fira-code font workaround for proper
;; Emacs integration.

(defun my-correct-symbol-bounds (pretty-alist)
  "Prepend a TAB character to each symbol in this alist,
	      this way compose-region called by prettify-symbols-mode
	      will use the correct width of the symbols
	      instead of the width measured by char-width."
  (mapcar (lambda (el)
	    (setcdr el (string ?\t (cdr el)))
	    el)
	  pretty-alist))

(defun my-ligature-list (ligatures codepoint-start)
  "Create an alist of strings to replace with
	      codepoints starting from codepoint-start."
  (let ((codepoints (-iterate '1+ codepoint-start (length ligatures))))
    (-zip-pair ligatures codepoints)))

(setq my-fira-code-ligatures
      (let* ((ligs '("www" "**" "***" "**/" "*>" "*/" "\\\\" "\\\\\\"
		     "{-" "[]" "::" ":::" ":=" "!!" "!=" "!==" "-}"
		     "--" "---" "-->" "->" "->>" "-<" "-<<" "-~"
		     "#{" "#[" "##" "###" "####" "#(" "#?" "#_" "#_("
		     ".-" ".=" ".." "..<" "..." "?=" "??" ";;" "/*"
		     "/**" "/=" "/==" "/>" "//" "///" "&&" "||" "||="
		     "|=" "|>" "^=" "$>" "++" "+++" "+>" "=:=" "=="
		     "===" "==>" "=>" "=>>" "<=" "=<<" "=/=" ">-" ">="
		     ">=>" ">>" ">>-" ">>=" ">>>" "<*" "<*>" "<|" "<|>"
		     "<$" "<$>" "<!--" "<-" "<--" "<->" "<+" "<+>" "<="
		     "<==" "<=>" "<=<" "<>" "<<" "<<-" "<<=" "<<<" "<~"
		     "<~~" "</" "</>" "~@" "~-" "~=" "~>" "~~" "~~>" "%%"
		     "x" ":" "+" "+" "*")))
	(my-correct-symbol-bounds (my-ligature-list ligs #Xe100))))

(defun my-set-fira-code-ligatures ()
  (setq prettify-symbols-alist
	(append my-fira-code-ligatures prettify-symbols-alist))
  (prettify-symbols-mode))
