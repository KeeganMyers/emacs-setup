;; evil-leader configuration
;; set the leader key to comma
(setq evil-leader/in-all-states t)
(require 'evil-leader)

(global-evil-leader-mode)

(defun save-and-load ()
  (save-buffer)
  (cider-load-buffer))

(evil-leader/set-leader ",")

(evil-leader/set-key
  "w" 'save-buffer
  "a" 'projectile-ag
  "g" 'magit-status
  "j" 'dired-jump
  "f" 'find-file
  "F" 'fiplr-find-file
  "b" 'projectile-switch-to-buffer
  "B" 'ibuffer
  "x" 'smex
  "d" 'kill-this-buffer
  "q" 'cb-kill
  "s" 'cb-next-shell-window
  "n" 'cb-next-buffer-contextual
  "N" 'cb-next-all-buffer
  "c" 'save-and-load
  "t" 'find-next-tag-without-ns
  "e" 'next-error
  "E" 'next-error
  "v" 'cider-jump-to-var)
