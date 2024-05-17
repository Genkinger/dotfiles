(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(setq inhibit-startup-message t)
(setq backup-directory-alist `(("." .  (expand-file-name "~/.emacs-backups"))))
(set-face-attribute 'default nil :height 140)
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
(load-theme 'gruber-darker t)

(use-package clang-format)

(setq clang-format-style "file")

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
 '(package-selected-packages
   '(which-key company-c-headers gruber-darker-theme company use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
