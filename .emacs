;; added by Custom
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (undo-tree markdown-mode ivy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; disable menu bar
(menu-bar-mode -1)

;; enable ivy mode
(ivy-mode 1)

;; enable undo-tree mode
(undo-tree-mode 1)

;; indents consist of spaces instead of tabs
(add-hook 'prog-mode-hook (lambda () (setq indent-tabs-mode nil)))

;; toggle word wrapping for markdown files
(add-hook 'markdown-mode-hook (lambda () (toggle-word-wrap)))

;; fix '400 bad request' issues with package downloads
(add-hook 'package-mode-hook (lambda () (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")))
