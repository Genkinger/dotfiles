(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(setq inhibit-startup-message t)
(setq backup-directory-alist `(("." .  (expand-file-name "~/.emacs-backups"))))
(set-face-attribute 'default nil :height 130)
(set-frame-font "BigBlue Terminal 437TT" nil t)
(global-display-line-numbers-mode)
(put 'suspend-frame 'disabled t)
(setq make-backup-files nil)


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://www.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-expand-minimaly t
      use-package-always-ensure t)

(use-package company
  :init (add-hook 'after-init-hook #'global-company-mode))
(use-package company-c-headers
  :after (add-to-list 'company-backends 'company-c-headers))
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-l")
  :hook (
         (c-mode . lsp-deferred)
	 (c++-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)


(use-package lsp-ui :commands lsp-ui-mode)
(use-package which-key
    :config
    (which-key-mode))
(use-package gruber-darker-theme)
(use-package gruvbox-theme)
(load-theme 'gruvbox t)

(use-package clang-format)
(setq clang-format-style "file")

(use-package evil)
(evil-mode 1)

(defun leah/toggle-fold (column)
  (interactive "P")
  (set-selective-display (if selective-display nil (or column 1))))

(global-set-key [f5] 'leah/toggle-fold)
(global-set-key [f6] (lambda () (interactive) (leah/toggle-fold 5)))
(global-set-key [f7] (lambda () (interactive) (leah/toggle-fold 9)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7b8f5bbdc7c316ee62f271acf6bcd0e0b8a272fdffe908f8c920b0ba34871d98" default))
 '(package-selected-packages
   '(gruvbox-theme evil which-key company-c-headers gruber-darker-theme company use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
