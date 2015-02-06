(require 'cider)
(require 'ac-cider)

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
