(add-to-list 'load-path "~/.emacs.d")


(put 'erase-buffer 'disabled nil)


(setq inhibit-splash-screen t)
(setq-default indent-tabs-mode 0)
(defalias 'yes-or-no-p 'y-or-n-p)


(setq backup-directory-alist '(("." . ".~" ))) ; instead of (setq backup-inhibited t)


(global-set-key (kbd "C-x C-b") 'bs-show) ; or ibuffer
(iswitchb-mode t)
(global-set-key (kbd "M-/") 'hippie-expand)


(require 'dired-x)
(put 'dired-find-alternate-file 'disabled nil)
(setq dired-recursive-copies t
      dired-recursive-deletes t
      dired-dwim-target t)
(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))
(setq-default dired-omit-files-p t)
(setq dired-listing-switches (concat dired-listing-switches " --group-directories-first -X"))


(delete-selection-mode t)
(global-font-lock-mode t)
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode t)


(require 'magit) ; git support


(require 'color-theme)
(color-theme-initialize)
(require 'zenburn)
(color-theme-zenburn)


(setq viper-mode t)
(require 'viper)


(autoload 'lua-mode "lua-mode" "lua mode." t)
(add-to-list 'auto-mode-alist '("\.lua$" . lua-mode))


(defalias 'perl-mode 'cperl-mode)
(setq cperl-hairy t
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-level 4
      cperl-indent-parens-as-block t
      cperl-tabs-always-indent t)


(autoload 'php-mode "php-mode" "Php mode." t)
(add-to-list 'auto-mode-alist '("/*.\.php[345]?$" . php-mode))


(defun comint-erase-buffer () "Erase buffer of comint based modes."
  (interactive) (erase-buffer) (comint-send-input))
(add-hook 'comint-mode-hook
          '(lambda () (define-key comint-mode-map (kbd "C-l") 'comint-erase-buffer))) 


(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(set-default-font "Terminus 12")


(server-mode 1)

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
