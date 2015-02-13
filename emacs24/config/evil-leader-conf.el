;; evil-leader configuration
;; set the leader key to comma
(setq evil-leader/in-all-states t)
(require 'evil-leader)

(global-evil-leader-mode)

(defun save-and-load ()
  (save-buffer)
  (cider-load-buffer))

(evil-leader/set-leader ",")

;; (evil-leader/set-key
;;   "ci" 'evilnc-comment-or-uncomment-lines
;;   "cl" 'evilnc-comment-or-uncomment-to-the-line
;;   "cc" 'evilnc-copy-and-comment-lines
;;   "cp" 'evilnc-comment-or-uncomment-paragraphs
;;   "cr" 'comment-or-uncomment-region)

(evil-leader/set-key
  "w" 'save-buffer
  "a" 'projectile-ag
  "g" 'magit-status
  "j" 'dired-jump
  "f" 'ido-find-file
  "b" 'projectile-switch-to-buffer
  "B" 'ibuffer
  "x" 'smex
  "d" 'kill-this-buffer
  "q" 'cider-quit
  "s" 'cb-next-shell-window
  "W" 'save-and-load
  "n" 'cb-next-buffer-contextual
  "N" 'cb-next-all-buffer
  "c" 'evilnc-copy-and-comment-lines
  "l" 'evilnc-comment-or-uncomment-lines
  "p" 'evilnc-comment-or-uncomment-paragraphs
  "t" 'find-next-tag-without-ns
  "e" 'next-error
  "E" 'next-error
  "r" 'cider-jack-in
  "R" 'cider-connect
  "V" 'undo-tree-visualize
  "v" 'cider-jump-to-var
  )
