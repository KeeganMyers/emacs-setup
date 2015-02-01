;;
;;
;;; Turn on Vi mode.
(evil-mode t)

(global-hl-line-mode 1)

;;; Great for smaller screens.
;;(golden-ratio-mode)

;;(global-undo-tree-mode)

;; Split some windows.
(balance-windows)
(split-window-horizontally)
(split-window-below)


;;; terminal settings...

;;; You may want to run this to make sure the terminfo is available.
;;; this is the OS X version. which may not be necessary on other systems.
;;; basically make sure you have emacs eterm-color entry in your terminfo.
;;mkdir ~/.terminfo
;;tic -o ~/.terminfo /Applications/Emacs.app/Contents/Resources/etc/e/eterm-color.ti

;; pick up said terminfo entry.
(setq system-uses-terminfo nil)

(setq explicit-shell-file-name "/bin/zsh")
(setq multi-term-program "/bin/zsh")

;; increase the history size.
(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 10000)))

;;;;;;;;;;;;;;;;;;;;;;;;
;; Start up a shell.  Pick your poison.
;;(ansi-term)
;;(term)
;;(shell)
;;(eshell)
(multi-term)
(setq term-default-fg-color (face-foreground 'default))
(setq term-default-bg-color (face-background 'default))
(setq cb-shell-command 'multi-term)
