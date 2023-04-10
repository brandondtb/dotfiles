(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; Basic settings

;; No startup screen
(setq inhibit-startup-screen t)

;; Remove window decorations
(scroll-bar-mode -1)
(tool-bar-mode -1)
;; (menu-bar-mode -1)

;; Numbering, file size
(global-hl-line-mode +1)
(line-number-mode +1)
(global-display-line-numbers-mode 1)
(column-number-mode t)
(size-indication-mode t)

;; No tabs
(setq tab-width 2
      indent-tabs-mode nil)

;; Set the font
(set-frame-font "Source Code Pro 12" nil t)

;; No backup files
(setq make-backup-files nil)

;; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

(setq echo-keystrokes 0.1
      use-dialog-box nil
      visible-bell t)

;; Show matching parens
(show-paren-mode t)

;; Revert a file if it is edited outside of emacs
(global-auto-revert-mode t)

;; Clean up whitespace on save
(add-hook 'before-save-hook 'whitespace-cleanup)


;; Packages
(use-package all-the-icons
  :ensure t)

(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  )

(use-package treemacs
  :ensure t)

(use-package company
  :ensure t
  :diminish company-mode
  :config
  (add-hook 'after-init-hook #'global-company-mode))

(use-package flycheck
  :ensure t
  :diminish flycheck-mode
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t)
  (doom-themes-visual-bell-config)
  (setq doom-themes-treemacs-theme "doom-colors")
  (doom-themes-treemacs-config))

;; Generated
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
