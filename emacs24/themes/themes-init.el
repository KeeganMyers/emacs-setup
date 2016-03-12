(require 'bytecompiledir)
;;(byte-compile-directory "~/emacs24/themes/palette-themes")
;;(byte-compile-directory "~/emacs24/themes/other-themes")


(add-to-list 'custom-theme-load-path "~/emacs24/themes/other-themes")
(add-to-list 'custom-theme-load-path "~/emacs24/themes/deviant")
(add-to-list 'custom-theme-load-path "~/emacs24/themes/color-themes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(setq custom-safe-themes t)

