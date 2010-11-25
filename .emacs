(add-to-list 'load-path "~/.emacs.d")


(put 'erase-buffer 'disabled nil)


(setq inhibit-splash-screen t)
(setq-default indent-tabs-mode 0)
(defalias 'yes-or-no-p 'y-or-n-p)


(setq backup-directory-alist '(("." . ".~" ))) ; instead of (setq backup-inhibited t)


(delete-selection-mode t)
(global-font-lock-mode t)
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode t)


(global-set-key (kbd "C-x C-b") 'bs-show) ; or ibuffer
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-m") 'indent-new-comment-line) ; 'reindent-then-newline-and-indent)


(require 'ido) ; insted of iswitchb-mode
(ido-mode t)
(setq ido-enable-flex-matching t)


(add-hook 'dired-load-hook
          (lambda ()
	    (load "dired-x")
	    (setq dired-recursive-copies t)
	    (setq dired-recursive-deletes t)
	    (setq dired-dwim-target t)
	    (setq dired-x-hands-off-my-keys nil)
	    (setq dired-listing-switches (concat dired-listing-switches " --group-directories-first")) ; note --g-d-f does't work for ftp
	    (setq dired-omit-files "^\\.?#\\|^\\.$\\|^\\.[^.].*$")
	    (put 'dired-find-alternate-file 'disabled nil)
	    ))
(add-hook 'dired-mode-hook
	  (lambda ()
	    (dired-omit-mode t)
	    ))


;(add-to-list 'load-path "~/.emacs.d/auto-complete/")
;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict")
;(ac-config-default)
;(setq ac-auto-start nil)
;(ac-set-trigger-key "\M-TAB")


(require 'magit) ; git support


(require 'color-theme)
(color-theme-initialize)
(require 'zenburn)
(color-theme-zenburn)


(setq viper-mode t)
(require 'viper)


(autoload 'lua-mode "lua-mode" "lua mode" t)
(add-to-list 'auto-mode-alist '("\.lua$" . lua-mode))


(defalias 'perl-mode 'cperl-mode)
(setq cperl-hairy t
      cperl-tabs-always-indent t
      cperl-indent-parens-as-block t
      cperl-indent-level 4
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4)
(add-hook 'cperl-mode-hook (lambda () (auto-fill-mode t)))


(autoload 'php-mode "php-mode" "Php mode" t)
(add-to-list 'auto-mode-alist '("/*.\.php[345]?$" . php-mode))
(add-to-list 'load-path "~/.emacs.d/geben")
(autoload 'geben "geben" "PHP Debugger on Emacs" t)


;(load "~/.emacs.d/nxhtml/autostart.el")
;(setq mumamo-chunk-coloring 2)


(defun comint-erase-buffer () "Erase buffer of comint based modes"
  (interactive) (erase-buffer) (comint-send-input))
(add-hook 'comint-mode-hook
          '(lambda () (define-key comint-mode-map (kbd "C-l") 'comint-erase-buffer))) 


(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max) nil))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

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
