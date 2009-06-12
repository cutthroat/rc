(add-to-list 'load-path "/home/dimitar/local/share/emacs/site-lisp")

;;;
(menu-bar-mode 0)
(tool-bar-mode 0)

;;; code goodies
(global-font-lock-mode 1)

(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)


;;; VI VI VI
(setq viper-mode t)
(setq viper-ex-style-editing nil)
(require 'viper)


;;; one Haskell to rule then all
(load-library "haskell-site-file")
(setq auto-mode-alist
      (append auto-mode-alist
              '(("\\.[hg]s$"  . haskell-mode)
                ("\\.hi$"     . haskell-mode)
                ("\\.l[hg]s$" . literate-haskell-mode))))
(autoload 'haskell-mode "haskell-mode" t)
(autoload 'literate-haskell-mode "haskell-mode" t)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)


;;; scheme setup
;(setq scheme-program-name "mzscheme")
;(require 'quack)


;;; color themes
(require 'color-theme)
(color-theme-initialize)
(color-theme-montz)
;(color-theme-dark-blue)
;(color-theme-arjen)
