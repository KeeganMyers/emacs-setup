;; evil-leader configuration
;; set the leader key to comma
(setq evil-leader/in-all-states t)
(require 'evil-leader)

(global-evil-leader-mode)

(defun save-and-load ()
  (save-buffer)
  (cider-load-buffer))

(evil-leader/set-leader ",")

;; this is supposed to work, but doesn't.
;; for some reason evil leader doesn't like two character maps.
;; (evil-leader/set-key
;;   "ci" 'evilnc-comment-or-uncomment-lines
;;   "cl" 'evilnc-comment-or-uncomment-to-the-line
;;   "cc" 'evilnc-copy-and-comment-lines
;;   "cp" 'evilnc-comment-or-uncomment-paragraphs
;;   "cr" 'comment-or-uncomment-region)

;; this is from the evilnc autoload.. so this is what we have.
;; (progn
;;   (define-key evil-normal-state-map ",ci" 'evilnc-comment-or-uncomment-lines)
;;   (define-key evil-normal-state-map ",cl" 'evilnc-quick-comment-or-uncomment-to-the-line)
;;   (define-key evil-normal-state-map ",ll" 'evilnc-quick-comment-or-uncomment-to-the-line)
;;   (define-key evil-normal-state-map ",cc" 'evilnc-copy-and-comment-lines)
;;   (define-key evil-normal-state-map ",cp" 'evilnc-comment-or-uncomment-paragraphs)
;;   (define-key evil-normal-state-map ",cr" 'comment-or-uncomment-region)
;;   (define-key evil-normal-state-map ",cv" 'evilnc-toggle-invert-comment-line-by-line))

(evil-leader/set-key
  "d" 'cider-doc
  "G" 'cider-grimoire-eww
  "c" 'cider-apropos
  "D" 'cider-apropos-documentation

  "w" 'save-buffer
  "t" 'find-next-tag-without-ns
  "a" 'projectile-ag
  "g" 'magit-status
  "j" 'dired-jump

  "f" 'ido-find-file
  "F" 'cb-next-files-buffer

  "O" 'ido-find-file-other-window
  "o" 'projectile-switch-to-buffer-other-window
  "b" 'projectile-switch-to-buffer

  "P" 'projectile-ibuffer
  "B" 'ibuffer

  "x" 'smex  ;; M-x.
  "k" 'kill-this-buffer
  "q" 'kill-this-buffer
  "S" 'cb-next-shell-window
  "s" 'evil-ace-jump-word-mode
  "W" 'save-and-load ;; save buffer and load into cider.
  "n" 'cb-next-buffer-contextual
  "N" 'cb-next-all-buffer

  "e" 'next-error
  "E" 'next-error

  "r" 'cb-next-cider-window ;; cider connect or focus on cider window.
  "R" 'cider-restart
  "C" 'cider-connect
  "Q" 'cider-quit
  "V" 'undo-tree-visualize
  "v" 'cider-jump-to-var

  "0" 'delete-window
  "1" 'delete-other-windows
  "2" 'split-window-below
  "3" 'split-window-right

  "," 'evilnc-comment-operator
  )
