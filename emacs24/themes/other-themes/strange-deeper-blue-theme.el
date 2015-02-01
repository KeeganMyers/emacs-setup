(deftheme strange-deeper-blue
  "deeper-blue than deeper blue.")

(custom-theme-set-variables
 'strange-deeper-blue
 '(ansi-color-names-vector ["#002b36" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(sclang-auto-scroll-post-buffer t)
 '(sclang-eval-line-forward nil))

(custom-theme-set-faces
 'strange-deeper-blue
 '(default ((((class color) (min-colors 89)) (:background "#080a16" :foreground "gray70"))))
 '(diff-added ((((class color) (min-colors 89)) (nil))))
 '(diff-removed ((((class color) (min-colors 89)) (nil))))
 '(ediff-even-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-even-diff-B ((((class color) (min-colors 89)) (:background "Grey50" :foreground "White"))))
 '(ediff-odd-diff-A ((((class color) (min-colors 89)) (:background "Grey50" :foreground "White"))))
 '(ediff-odd-diff-B ((((class color) (background dark)) (:background "dark red"))))
 '(eval-sexp-fu-flash ((((class color) (background dark)) (:background "grey15" :foreground "DeepPink3"))))
 '(mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black"))))
 '(Info-title-1-face ((((class color) (min-colors 89)) (:family "helv" :weight bold :height 1.728))))
 '(Info-title-2-face ((((class color) (min-colors 89)) (:family "helv" :weight bold :height 1.44))))
 '(Info-title-3-face ((((class color) (min-colors 89)) (:family "helv" :weight bold :height 1.2))))
 '(Info-title-4-face ((((class color) (min-colors 89)) (:family "helv" :weight bold))))
 '(compilation-column-number ((((class color) (min-colors 89)) (:foreground "LightGreen"))))
 '(compilation-error ((((class color) (min-colors 89)) (:foreground "Red1"))))
 '(compilation-info ((((class color) (min-colors 89)) (:weight normal :foreground "LightSkyBlue"))))
 '(compilation-line-number ((((class color) (min-colors 89)) (:foreground "LightGreen"))))
 '(compilation-mode-line-exit ((((class color) (min-colors 89)) (:foreground "blue4"))))
 '(cperl-array-face ((((class color) (min-colors 89)) (:foreground "yellow2"))))
 '(cperl-hash-face ((((class color) (min-colors 89)) (:foreground "coral1"))))
 '(cursor ((((class color) (min-colors 89)) (:background "green"))))
 '(diff-changed ((((class color) (min-colors 89)) (nil))))
 '(diff-context ((((class color) (min-colors 89)) (:foreground "seashell4"))))
 '(diff-file-header ((((class color) (min-colors 89)) (:background "grey60"))))
 '(diff-function ((((class color) (min-colors 89)) (:inherit diff-header))))
 '(diff-header ((((class color) (min-colors 89)) (:background "grey45"))))
 '(diff-hunk-header ((((class color) (min-colors 89)) (:inherit diff-header))))
 '(diff-index ((((class color) (min-colors 89)) (:inherit diff-file-header))))
 '(diff-indicator-added ((((class color) (min-colors 89)) (:foreground "white" :background "darkolivegreen"))))
 '(diff-indicator-changed ((((class color) (min-colors 89)) (:foreground "white" :background "dodgerblue4"))))
 '(diff-indicator-removed ((((class color) (min-colors 89)) (:foreground "white" :background "indianred4"))))
 '(diff-refine-change ((((class color) (min-colors 89)) (:background "skyblue4"))))
 '(dired-marked ((((class color) (min-colors 89)) (:background "dodgerblue3" :foreground "white"))))
 '(ediff-current-diff-A ((((class color) (min-colors 89)) (:background "green4" :foreground "white"))))
 '(ediff-current-diff-B ((((class color) (min-colors 89)) (:background "darkorange3" :foreground "white"))))
 '(ediff-fine-diff-A ((((class color) (min-colors 89)) (:background "skyblue4" :foreground "white"))))
 '(ediff-fine-diff-B ((((class color) (min-colors 89)) (:background "cyan4" :foreground "white"))))
 '(error ((((class color) (min-colors 89)) (:foreground "red"))))
 '(flymake-errline ((((class color) (min-colors 89)) (:background nil :underline "red"))))
 '(flymake-warnline ((((class color) (min-colors 89)) (:background nil :underline "magenta3"))))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#88DDBB"))))
 '(font-lock-comment-delimiter-face ((((class color) (min-colors 89)) (:foreground "gray50"))))
 '(font-lock-comment-face ((((class color) (min-colors 89)) (:foreground "gray50"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "DarkOliveGreen3"))))
 '(font-lock-doc-face ((((class color) (min-colors 89)) (:foreground "moccasin"))))
 '(font-lock-doc-string-face ((((class color) (min-colors 89)) (:foreground "moccasin"))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "goldenrod"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:foreground "#2aa198"))))
 '(font-lock-preprocessor-face ((((class color) (min-colors 89)) (:foreground "gold"))))
 '(font-lock-reference-face ((((class color) (min-colors 89)) (:foreground "LightCoral"))))
 '(font-lock-regexp-grouping-backslash ((((class color) (min-colors 89)) (:weight bold))))
 '(font-lock-regexp-grouping-construct ((((class color) (min-colors 89)) (:weight bold))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "burlywood"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "CadetBlue1"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "SeaGreen2"))))
 '(fringe ((((class color) (min-colors 89)) (:background "black"))))
 '(highlight ((((class color) (min-colors 89)) (:background "#102030"))))
 '(ido-first-match ((((class color) (min-colors 89)) (:weight normal :foreground "orange"))))
 '(ido-only-match ((((class color) (min-colors 89)) (:foreground "green"))))
 '(ido-subdir ((((class color) (min-colors 89)) (:foreground nil :inherit font-lock-keyword-face))))
 '(info-header-node ((((class color) (min-colors 89)) (:foreground "DeepSkyBlue1"))))
 '(info-header-xref ((((class color) (min-colors 89)) (:foreground "SeaGreen2"))))
 '(info-menu-header ((((class color) (min-colors 89)) (:family "helv" :weight bold))))
 '(info-node ((((class color) (min-colors 89)) (:foreground "DeepSkyBlue1"))))
 '(info-xref ((((class color) (min-colors 89)) (:foreground "SeaGreen2"))))
 '(isearch ((((class color) (min-colors 89)) (:background "coral2" :foreground "white"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:background "cadetblue" :foreground "white"))))
 '(match ((((class color) (min-colors 89)) (:background "DeepPink4"))))
 '(minibuffer-prompt ((((class color) (min-colors 89)) (:foreground "CadetBlue1"))))
 '(mode-line ((((class color) (min-colors 89)) (:background "#667799" :foreground "black" :box (:line-width 1 :color "#99AACC")))))
 '(mode-line-buffer-id ((((class color) (min-colors 89)) (:weight bold :background nil :foreground "#102030"))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:background "#334466" :foreground "black" :box (:line-width 1 :color "#99AACC" :style nil)))))
 '(outline-1 ((((class color) (min-colors 89)) (:foreground "SkyBlue1"))))
 '(outline-2 ((((class color) (min-colors 89)) (:foreground "CadetBlue1"))))
 '(outline-3 ((((class color) (min-colors 89)) (:foreground "LightSteelBlue1"))))
 '(outline-4 ((((class color) (min-colors 89)) (:foreground "turquoise2"))))
 '(outline-5 ((((class color) (min-colors 89)) (:foreground "aquamarine1"))))
 '(primary-selection ((((class color) (min-colors 89)) (:background "blue3"))))
 '(region ((((class color) (min-colors 89)) (:background "#403070" :foreground "grey80"))))
 '(show-paren-match ((((class color) (min-colors 89)) (:background "dodgerblue1" :foreground "white"))))
 '(show-paren-mismatch ((((class color) (min-colors 89)) (:background "red1" :foreground "white"))))
 '(success ((((class color) (min-colors 89)) (:foreground "SeaGreen2"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "Yellow"))))
 ;; rainbow-delimiters
 '(rainbow-delimiters-depth-1-face (((( class color) (min-colors 89)) (:foreground "#707183"))))
 '(rainbow-delimiters-depth-2-face (((( class color) (min-colors 89)) (:foreground "#7388d6"))))
 '(rainbow-delimiters-depth-3-face (((( class color) (min-colors 89)) (:foreground "#909183"))))
 '(rainbow-delimiters-depth-4-face (((( class color) (min-colors 89)) (:foreground "#709870"))))
 '(rainbow-delimiters-depth-5-face (((( class color) (min-colors 89)) (:foreground "#907373"))))
 '(rainbow-delimiters-depth-6-face (((( class color) (min-colors 89)) (:foreground "#6276ba"))))
 '(rainbow-delimiters-depth-7-face (((( class color) (min-colors 89)) (:foreground "#858580"))))
 '(rainbow-delimiters-depth-8-face (((( class color) (min-colors 89)) (:foreground "#80a880"))))
 '(rainbow-delimiters-depth-9-face (((( class color) (min-colors 89)) (:foreground "#887070"))))
 '(rainbow-delimiters-depth-10-face (((( class color) (min-colors 89)) (:foreground "#3071f3"))))
 '(rainbow-delimiters-depth-11-face (((( class color) (min-colors 89)) (:foreground "#a34806"))))
 '(rainbow-delimiters-depth-12-face (((( class color) (min-colors 89)) (:foreground "#a0a173"))))
 '(rainbow-delimiters-unmatched-face (((( class color) (min-colors 90)) (:foreground  "#88090b"))))

 '(rainbow-delimiters-depth-1-face (((( class color) (min-colors 89)) (:foreground "#707183"))))
 '(rainbow-delimiters-depth-2-face (((( class color) (min-colors 89)) (:foreground "#53e8f6"))))
 '(rainbow-delimiters-depth-3-face (((( class color) (min-colors 89)) (:foreground "#c08133"))))
 '(rainbow-delimiters-depth-4-face (((( class color) (min-colors 89)) (:foreground "#70a870"))))
 '(rainbow-delimiters-depth-5-face (((( class color) (min-colors 89)) (:foreground "#a09850"))))
 '(rainbow-delimiters-depth-6-face (((( class color) (min-colors 89)) (:foreground "#4276ca"))))
 '(rainbow-delimiters-depth-7-face (((( class color) (min-colors 89)) (:foreground "#858580"))))
 '(rainbow-delimiters-depth-8-face (((( class color) (min-colors 89)) (:foreground "#80c880"))))
 '(rainbow-delimiters-depth-9-face (((( class color) (min-colors 89)) (:foreground "#a34806"))))
 '(rainbow-delimiters-depth-10-face (((( class color) (min-colors 89)) (:foreground "#5071b3"))))
 '(rainbow-delimiters-depth-11-face (((( class color) (min-colors 89)) (:foreground "#a34806"))))
 '(rainbow-delimiters-depth-12-face (((( class color) (min-colors 89)) (:foreground "#a0a173"))))
 '(rainbow-delimiters-unmatched-face (((( class color) (min-colors 90)) (:foreground  "#88090b"))))
                                        ; '(rainbow-delimiters-depth-1-face (((( class color) (min-colors 89)) (:foreground "#8071d3"))))
                                        ; '(rainbow-delimiters-depth-2-face (((( class color) (min-colors 89)) (:foreground "#53e8f6"))))
                                        ; '(rainbow-delimiters-depth-3-face (((( class color) (min-colors 89)) (:foreground "#c08133"))))
                                        ; '(rainbow-delimiters-depth-4-face (((( class color) (min-colors 89)) (:foreground "#bb2820"))))
 ;; '(rainbow-delimiters-depth-5-face (((( class color) (min-colors 89)) (:foreground "#9348f6"))))
                                        ; '(rainbow-delimiters-depth-6-face (((( class color) (min-colors 89)) (:foreground "#30d093"))))
                                        ; '(rainbow-delimiters-depth-7-face (((( class color) (min-colors 89)) (:foreground "#a09850"))))
                                        ; '(rainbow-delimiters-depth-8-face (((( class color) (min-colors 89)) (:foreground "#cc560a"))))
                                        ; '(rainbow-delimiters-depth-9-face (((( class color) (min-colors 89)) (:foreground "#2ca61d"))))
                                        ; '(rainbow-delimiters-depth-10-face (((( class color) (min-colors 89)) (:foreground "#3071f3"))))
                                        ; '(rainbow-delimiters-depth-11-face (((( class color) (min-colors 89)) (:foreground "#a34806"))))
                                        ; '(rainbow-delimiters-depth-12-face (((( class color) (min-colors 89)) (:foreground "#a0a173"))))
                                        ; '(rainbow-delimiters-unmatched-face (((( class color) (min-colors 90)) (:foreground  "#88090b"))))

 '(git-gutter:added ((((class color) (min-colors 89)) (:background "#080a16" :foreground "seagreen2"
                                                                   :weight bold))))
 '(git-gutter:deleted ((((class color) (min-colors 89)) (:background "#080a16" :foreground "indianred4"
                                                                     :weight bold))))
 '(git-gutter:modified ((((class color) (min-colors 89)) (:background "#080a16" :foreground "Skyblue1"
                                                                      :weight bold))))
 '(git-gutter:unchanged ((((class color) (min-colors 89)) (:background "#080a16"
                                                                       :foreground "#102030"
                                                                       :weight bold))))

 )

(provide-theme 'strange-deeper-blue)
