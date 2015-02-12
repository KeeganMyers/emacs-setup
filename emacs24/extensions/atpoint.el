(require 'thingatpt)

(defun find-tag-without-ns (next-p)
  (interactive "P")
  (find-tag (car (last (split-string (symbol-name (symbol-at-point)) "/")))
            next-p))

(defun find-next-tag-without-ns ()
  (interactive)
  (find-tag (car (last (split-string (symbol-name (symbol-at-point)) "/")))
            t))

(defun isearch-yank-symbol ()
  "*Put symbol at current point into search string."
  (interactive)
  (let ((sym (symbol-at-point)))
    (if sym
        (progn
          (setq isearch-regexp t
                isearch-string (concat "\\_<" (regexp-quote (symbol-name sym)) "\\_>")
                isearch-message (mapconcat 'isearch-text-char-description isearch-string "")
                isearch-yank-flag t))
      (ding)))
  (isearch-search-and-update))
