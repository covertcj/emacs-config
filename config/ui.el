;; Turn of the menu bar
(menu-bar-mode -1)

;; Turn off the tool bar
(tool-bar-mode -1)

;; Show line numbers
(global-linum-mode)

;; Don't show native OS scroll bars for buffers
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; Font size
(set-face-attribute 'default nil :height 140)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)

;; These settings relate to how emacs interacts with your operating system
(setq ;; makes killing/yanking interact with the clipboard
      x-select-enable-clipboard t

      ;; makes yanking interact with the OS selection copy/paste stuff
      x-select-enable-primary t

      ;; Save clipboard strings into kill ring before replacing them.
      ;; When one selects something in another program to paste it into Emacs,
      ;; but kills something in Emacs before actually pasting it,
      ;; this selection is gone unless this variable is non-nil
      save-interprogram-paste-before-kill t

      ;; Shows all options when running apropos. For more info,
      ;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Apropos.html
      apropos-do-all t

      ;; Mouse yank commands yank at point instead of at click.
      mouse-yank-at-point t)

;; No cursor blinking
(blink-cursor-mode 0)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

;; don't pop up font menu
(global-set-key (kbd "s-t") '(lambda () (interactive)))

;; no bell
(setq ring-bell-function 'ignore)
