;;; package --- Defines appearance-related things
;;; Commentary:
;;; Code:
;;; You will most likely need to adjust this font size for your system!

(defvar thiago/default-font-size 180)
(defvar thiago/frame-transparency '(90 . 90))

;; Set frame transparency
(set-frame-parameter (selected-frame) 'alpha thiago/frame-transparency)
(add-to-list 'default-frame-alist `(alpha . ,thiago/frame-transparency))
(set-frame-parameter (selected-frame) 'fullscreen 'maximized)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq inhibit-startup-message t)

(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode tooltip-mode))
  (when (fboundp mode) (funcall mode -1)))

(setq frame-title-format "%b - emacs")

(set-fringe-mode 10)      ; Give some breathing room
(global-hl-line-mode t)
(show-paren-mode t)
(column-number-mode t)

;; Set up the visible bell
(setq visible-bell t)

(set-face-attribute 'default nil :font "Fira Code Retina" :height thiago/default-font-size)

(column-number-mode)
(global-display-line-numbers-mode t)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))


(use-package doom-themes
  :init (load-theme 'doom-one t))

(use-package nyan-mode
  :config (nyan-mode t))

(use-package all-the-icons)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(provide 'appearance)

;;; appearance.el ends here
