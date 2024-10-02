(add-to-list 'load-path "~/.emacs.d/mode/")

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(set-frame-font "Iosevka 16" nil t)

(setq inhibit-startup-screen t) 
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

(global-set-key (kbd "M-x") 'smex)

(electric-pair-mode 1)

(require 'ido-completing-read+)

(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)

(require 'evil)
(evil-mode 1)

(require 'gruber-darker-theme)
(load-theme 'gruber-darker t)

(setq-default c-basic-offset 4
              c-default-style '((other . "bsd")))

(add-hook 'c-mode-hook (lambda ()
                         (interactive)
                         (c-toggle-comment-style -1)))

(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))
