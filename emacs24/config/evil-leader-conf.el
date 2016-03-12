;;; package --- evil-leader-conf
;;; Commentary:

;; evil-leader configuration
;; set the leader key to comma

;;; Code:

(require 'evil-leader)
(require 'cider-doc)
(require 'clj-refactor)

;; (require 'google-translate)
;; (require 'ispell)
;; (require 'flyspell)
;; (require 'langtool)


(setq evil-leader/in-all-states t)

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
    (define-key cider-sub-map (kbd "v") #'cider-find-var)
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


(defvar language-sub-map
  (let (language-sub-map)
    ;;; Ispell - fly spell.
    (define-prefix-command 'language-sub-map)
    (define-key language-sub-map (kbd "s") #'ispell-word)
    (define-key language-sub-map (kbd "S") #'flyspell-check-next-highlighted-word)

    ;;; Lang Tool
    (define-key language-sub-map (kbd "C") #'langtool-check-buffer)
    (define-key language-sub-map (kbd "c") #'langtool-check)
    (define-key language-sub-map (kbd "b") #'langtool-correct-buffer)
    (define-key language-sub-map (kbd "m") #'langtool-show-message-at-point)
    (define-key language-sub-map (kbd "l") #'langtool-switch-default-language)
    (define-key language-sub-map (kbd "d") #'langtool-check-done)
  ;;; get smooth Google translate for cusor point.
  ;;; - highlight what you want if more than one word.
    (define-key language-sub-map (kbd "t") #'google-translate-smooth-translate-sentence-at-point)
    (define-key language-sub-map (kbd "T") #'google-translate-smooth-translate)
    (define-key language-sub-map (kbd "i") #'set-input-and-dictionary)
    (define-key language-sub-map (kbd "D") #'describe-input-method)
    (define-key language-sub-map (kbd "R") #'reset-language-environment)
    ;;(define-key language-sub-map (kbd "I") #'set-input-method)  ;;  French-prefix, etc.
    (define-key language-sub-map (kbd "f") #'french-input-dict)  ;;  French-prefix, etc.
    (define-key language-sub-map (kbd "e") #'english-input-dict)  ;;  French-prefix, etc.
    (define-key language-sub-map (kbd "I") #'toggle-input-method) ;; C-\ by default.
    language-sub-map))

;; doing it the hard way.
(defvar clj-refactor-sub-map
  (let (clj-refactor-sub-map)
    (define-prefix-command 'clj-refactor-sub-map)
    (define-key clj-refactor-sub-map (kbd "ad") #'cljr-add-declaration)
    (define-key clj-refactor-sub-map (kbd "ai") #'cljr-add-import-to-ns)
    (define-key clj-refactor-sub-map (kbd "am") #'cljr-add-missing-libspec)
    (define-key clj-refactor-sub-map (kbd "ap") #'cljr-add-project-dependency)
    (define-key clj-refactor-sub-map (kbd "ar") #'cljr-add-require-to-ns)
    (define-key clj-refactor-sub-map (kbd "au") #'cljr-add-use-to-ns)
    (define-key clj-refactor-sub-map (kbd "cc") #'cljr-cycle-coll)
    (define-key clj-refactor-sub-map (kbd "ci") #'cljr-cycle-if)
    (define-key clj-refactor-sub-map (kbd "cn") #'cljr-clean-ns)
    (define-key clj-refactor-sub-map (kbd "cp") #'cljr-cycle-privacy)
    (define-key clj-refactor-sub-map (kbd "cs") #'cljr-change-function-signature)
    (define-key clj-refactor-sub-map (kbd "ct") #'cljr-cycle-thread)
    (define-key clj-refactor-sub-map (kbd "dk") #'cljr-destructure-keys)
    (define-key clj-refactor-sub-map (kbd "ef") #'cljr-extract-function)
    (define-key clj-refactor-sub-map (kbd "ec") #'cljr-extract-constant)
    (define-key clj-refactor-sub-map (kbd "ed") #'cljr-extract-def)
    (define-key clj-refactor-sub-map (kbd "ef") #'cljr-extract-function)
    (define-key clj-refactor-sub-map (kbd "el") #'cljr-expand-let)
    (define-key clj-refactor-sub-map (kbd "fe") #'cljr-create-fn-from-example)
    (define-key clj-refactor-sub-map (kbd "fu") #'cljr-find-usages)
    (define-key clj-refactor-sub-map (kbd "hd") #'cljr-hotload-dependency)
    (define-key clj-refactor-sub-map (kbd "il") #'cljr-introduce-let)
    (define-key clj-refactor-sub-map (kbd "is") #'cljr-inline-symbol)
    (define-key clj-refactor-sub-map (kbd "mf") #'cljr-move-form)
    (define-key clj-refactor-sub-map (kbd "ml") #'cljr-move-to-let)
    (define-key clj-refactor-sub-map (kbd "pc") #'cljr-project-clean)
    (define-key clj-refactor-sub-map (kbd "pf") #'cljr-promote-function)
    (define-key clj-refactor-sub-map (kbd "rf") #'cljr-rename-file-or-dir)
    (define-key clj-refactor-sub-map (kbd "rf") #'cljr-rename-file)
    (define-key clj-refactor-sub-map (kbd "rl") #'cljr-remove-let)
    (define-key clj-refactor-sub-map (kbd "rr") #'cljr-remove-unused-requires)
    (define-key clj-refactor-sub-map (kbd "rs") #'cljr-rename-symbol)
    (define-key clj-refactor-sub-map (kbd "ru") #'cljr-replace-use)
    (define-key clj-refactor-sub-map (kbd "sn") #'cljr-sort-ns)
    (define-key clj-refactor-sub-map (kbd "sc") #'cljr-show-changelog)
    (define-key clj-refactor-sub-map (kbd "sp") #'cljr-sort-project-dependencies)
    (define-key clj-refactor-sub-map (kbd "sr") #'cljr-stop-referring)
    (define-key clj-refactor-sub-map (kbd "tf") #'cljr-thread-first-all)
    (define-key clj-refactor-sub-map (kbd "th") #'cljr-thread)
    (define-key clj-refactor-sub-map (kbd "tl") #'cljr-thread-last-all)
    (define-key clj-refactor-sub-map (kbd "ua") #'cljr-unwind-all)
    (define-key clj-refactor-sub-map (kbd "up") #'cljr-update-project-dependencies)
    (define-key clj-refactor-sub-map (kbd "uw") #'cljr-unwind)
    (define-key clj-refactor-sub-map (kbd "?") #'cljr-describe-refactoring)
    (define-key clj-refactor-sub-map (kbd "hh") #'hydra-cljr-help-menu/body)
    (define-key clj-refactor-sub-map (kbd "hn") #'hydra-cljr-ns-menu/body)
    (define-key clj-refactor-sub-map (kbd "hc") #'hydra-cljr-code-menu/body)
    (define-key clj-refactor-sub-map (kbd "hp") #'hydra-cljr-project-menu/body)
    (define-key clj-refactor-sub-map (kbd "hs") #'hydra-cljr-toplevel-form-menu/body)
    clj-refactor-sub-map))

;; M-x describe-mode will help a lot here.
(evil-leader/set-key
  "D" 'describe-mode
  "d" 'cider-doc-map  ;; this is defined by cider but we get ,d ... instead of C-c C-d ...
  ;; a - cider apropos
  ;; A - cider apropos doc
  ;; d - doc
  ;; g - grimoire
  ;; h - grimoire web
  ;; j - Java doc
  "r" 'cider-sub-map  ;; c is used by nerd-commenter. r = repl.
  "b" 'buffer-sub-map  ;; manage buffers.


  ;; Refactoring, code snippets etc.
  ;; clojure refactor key bindings, Also mapped to C-c C-m.
  "R" 'clj-refactor-sub-map ;;'cljr--all-helpers ;; clj-refactor.
  "y" 'yasnippet-sub-map

  "w" 'save-buffer
  "W" 'save-and-load ;; save buffer and load into cider.

  "l" 'language-sub-map


  ;;; Finding
  "t" 'find-tag-without-ns  ;; ctags
  "v" 'cider-find-var
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

  "," 'evilnc-comment-operator)



(provide 'evil-leader-conf)
;;; evil-leader-conf.el ends here.
