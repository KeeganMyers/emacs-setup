(require 'cider)
(require 'ac-cider)
(require 'cider-grimoire)

(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
;;; is for using autocomplete, not company mode.
;;(add-hook 'cider-mode-hook 'ac-cider-setup)
;;(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
;; (eval-after-load "auto-complete"
;; '(add-to-list 'ac-modes 'cider-mode))

(add-hook 'cider-repl-mode-hook
          (lambda ()
            (cider-turn-on-eldoc-mode)
            (paredit-mode 1)))

(add-hook 'cider-mode-hook
          (lambda ()
            (cider-turn-on-eldoc-mode)
            (paredit-mode 1)))

(setq cider-show-error-buffer t)
(add-to-list 'same-window-buffer-names "*cider*")
(setq cider-repl-use-clojure-font-lock t)
(setq cider-auto-select-error-buffer nil)
(setq cider-repl-use-pretty-printing t)

(defadvice cider-load-current-buffer (after switch-namespace activate compile)
  "switch to namespace"
  (cider-repl-set-ns (cider-current-ns))
  (cider-switch-to-repl-buffer))

(defun cider-grimoire-eww-lookup (symbol)
  "Look up the grimoire documentation for SYMBOL."
  (-if-let (var-info (cider-var-info symbol))
      (let ((name (nrepl-dict-get var-info "name"))
            (ns (nrepl-dict-get var-info "ns")))
        (eww-browse-url (cider-grimoire-url name ns)))
    (message "Symbol %s not resolved" symbol)))

(defun cider-grimoire-eww (query)
  "Open the grimoire documentation for QUERY in the default web browser."
  (interactive "P")
  (cider-read-symbol-name "Symbol: " 'cider-grimoire-eww-lookup query))
