;; evil-leader configuration
;; set the leader key to comma
(setq evil-leader/in-all-states t)
(require 'evil-leader)

(require 'cider-doc)
(require 'clj-refactor)

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

(defvar cider-sub-map
  (let (cider-sub-map)
    (define-prefix-command 'cider-sub-map)
    (define-key cider-sub-map (kbd "G") #'cider-grimoire-eww)
    (define-key cider-sub-map (kbd "n") #'cider-browse-ns)
    (define-key cider-sub-map (kbd "N") #'cider-browse-ns-all)
    (define-key cider-sub-map (kbd "u") #'cider-undef)
    (define-key cider-sub-map (kbd "i") #'cider-inspect)
    (define-key cider-sub-map (kbd "r") #'cider-refresh)
    (define-key cider-sub-map (kbd "R") #'cider-restart)
    (define-key cider-sub-map (kbd "c") #'cider-connect)
    (define-key cider-sub-map (kbd "j") #'cider-jack-in)
    (define-key cider-sub-map (kbd "q") #'cider-quit)
    (define-key cider-sub-map (kbd "v") #'cider-jump-to-var)
    (define-key cider-sub-map (kbd "t") #'cider-toggle-trace-var)
    (define-key cider-sub-map (kbd "f") #'cb-next-cider-window) ;; f=focus.
    (define-key cider-sub-map (kbd "e") #'cider-jump-to-compilation-error) ;;
    cider-sub-map))

(defvar buffer-sub-map
  (let (buffer-sub-map)
    (define-prefix-command 'buffer-sub-map)
    (define-key buffer-sub-map (kbd "w") #'save-buffer)
    (define-key buffer-sub-map (kbd "W") #'save-and-load)
    (define-key buffer-sub-map (kbd "k") #'kill-this-buffer)
    (define-key buffer-sub-map (kbd "b") #'projectile-switch-to-buffer)
    (define-key buffer-sub-map (kbd "o") #'projectile-switch-to-buffer-other-window)
    (define-key buffer-sub-map (kbd "p") #'projectile-ibuffer)
    (define-key buffer-sub-map (kbd "B") #'ibuffer)
    ;; cycle buffers
    (define-key buffer-sub-map (kbd "f") #'cb-next-files-buffer)
    (define-key buffer-sub-map (kbd "n") #'cb-next-buffer-contextual)
    (define-key buffer-sub-map (kbd "N") #'cb-next-all-buffer)
    (define-key buffer-sub-map (kbd "*") #'cb-next-emacs-buffer)
    buffer-sub-map))

;; tab will also invoke yas expansion.
(defvar yasnippet-sub-map
  (let (yasnippet-sub-map)
    (define-prefix-command 'yasnippet-sub-map)
    (define-key yasnippet-sub-map (kbd "d") #'yas-describe-tables)
    (define-key yasnippet-sub-map (kbd "i") #'yas-insert-snippet)
    (define-key yasnippet-sub-map (kbd "e") #'yas-expand-snippet)
    yasnippet-sub-map))

;; M-x describe-mode will help a lot here.

(evil-leader/set-key
  "D" 'describe-mode
  "d" 'cider-doc-map  ;; this is defined by cider but we get ,d ... instead of C-c C-d ...
  ;; a - cider apropos
  ;; A - cider apropos doc
  ;; d - doc
  ;; g - grimoire
  ;; h - grimoire web
  ;; j - javadoc
  "r" 'cider-sub-map  ;; c is used by nerd-commenter. r = repl.
  "b" 'buffer-sub-map  ;; manage buffers.

  ;; Refactoring, code snippets etc.
  ;; clojure refactor key bindings, Also mapped to C-c C-m.
  "R" 'cljr--all-helpers ;; clj-refactor.
  "y" 'yasnippet-sub-map

  "w" 'save-buffer
  "W" 'save-and-load ;; save buffer and load into cider.

  ;;; Finding
  "t" 'find-tag-without-ns  ;; ctags
  "v" 'cider-jump-to-var
  "a" 'projectile-ag
  "s" 'evil-ace-jump-word-mode  ;;  ace jump search

  "g" 'magit-status  ;; magit is git.
  "j" 'dired-jump

  "f" 'ido-find-file
  "O" 'ido-find-file-other-window

  "o" 'projectile-switch-to-buffer-other-window
  "p" 'projectile-switch-to-buffer
  "P" 'projectile-ibuffer
  "B" 'ibuffer

  "x" 'smex  ;; M-x.
  "k" 'kill-this-buffer
  "q" 'kill-this-buffer

  "S" 'cb-next-shell-window

  "F" 'cb-next-files-buffer
  "*" 'cb-next-emacs-buffer
  "n" 'cb-next-buffer-contextual
  "N" 'cb-next-all-buffer

  "e" 'next-error
  "E" 'next-error

  "V" 'undo-tree-visualize

  "0" 'delete-window
  "1" 'delete-other-windows
  "2" 'split-window-below
  "3" 'split-window-right

  "," 'evilnc-comment-operator
  )
