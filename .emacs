;; begin
(add-to-list 'load-path "~/.emacs.d")

;; splash screen
(setq inhibit-splash-screen t)

;; no tabs please
(setq-default indent-tabs-mode nil)

;; backup to .~
(setq backup-directory-alist '(("." . ".~" ))) ; instead of (setq backup-inhibited t)

;; nicer buffer list
(global-set-key (kbd "C-x C-b") 'bs-show)

;; dired
(require 'dired-x)
(setq-default dired-omit-files-p t)
(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))
(setq dired-listing-switches (concat dired-listing-switches " --group-directories-first -X"))
(put 'dired-find-alternate-file 'disabled nil)

;; minor modes
(delete-selection-mode 1)

(global-font-lock-mode 1)

(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

;; color themes
(require 'color-theme)
(color-theme-initialize)

;; zenburn
(require 'zenburn)
(color-theme-zenburn)

;;; vi vi vi
(setq viper-mode t)
(require 'viper)

;;; lang support

;; lua
(autoload 'lua-mode "lua-mode" "lua mode." t)
(add-to-list 'auto-mode-alist '("\.lua$" . lua-mode))

;; perl
(defalias 'perl-mode 'cperl-mode)
(setq cperl-hairy t)

(setq cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-level 4
      cperl-indent-parens-as-block t
      cperl-tabs-always-indent t)

;; python
(autoload 'python-mode "python-mode" "Python mode." t)
(add-to-list 'auto-mode-alist '("/*.\.py$" . python-mode))

;; php
(autoload 'php-mode "php-mode" "Php mode." t)
(add-to-list 'auto-mode-alist '("/*.\.php[345]?$" . php-mode))


;; gui
(menu-bar-mode nil)
(tool-bar-mode nil)

(set-default-font "Terminus 12")

;; old stuff

;; window management
;(define-prefix-command 'window-map)
;(define-key window-map (kbd "o") 'other-window)
;(define-key window-map (kbd "c") 'delete-window)
;(define-key window-map (kbd "M-c") 'delete-other-windows)
;(define-key window-map (kbd "d") 'dired-other-window)
;(define-key window-map (kbd "k") 'kill-buffer-and-window)
;(define-key window-map (kbd "^") 'enlarge-window)
;(define-key window-map (kbd "}") 'enlarge-window-horizontally)
;(define-key window-map (kbd "f") 'find-file-other-window)
;(define-key window-map (kbd "s") 'split-window-horizontally)
;(define-key window-map (kbd "M-s") 'split-window-vertically)
;(define-key global-map (kbd "C-w") 'window-map)


;(color-theme-montz)
;(color-theme-dark-blue)
;(color-theme-arjen)
