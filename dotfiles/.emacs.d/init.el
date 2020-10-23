;;; package -- SUMMARY
;;; Commentary:
;;; Code:
(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode 1)
(show-paren-mode 1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs-saves"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(cond
 ((eq system-type 'windows-nt) (set-frame-font "Cascadia Mono-14"))
 ((eq system-type 'gnu/linux) (set-frame-font "Ubuntu Mono-14"))
 )

(require 'ido)
(ido-mode 1)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(use-package attrap
  :straight t
  )

(use-package dante
  :straight t
  :after haskell-mode
  :commands 'dante-mode
  :init
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  (add-hook 'haskell-mode-hook 'dante-mode)
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  :config
  (flycheck-add-next-checker 'haskell-dante '(info . haskell-hlint))
  (add-to-list 'company-backends 'dante-company)
  )

(use-package company
  :straight t
  :config
  (setq company-idle-delay 0.1)
  (global-company-mode)
  )

(use-package smex
  :straight t
  :config
  (smex-initialize)
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  )	     

(use-package gruber-darker-theme
  :straight t
  )
