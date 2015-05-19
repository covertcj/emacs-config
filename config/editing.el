(show-paren-mode 1)
(require 'rainbow-delimiters)
;;(global-rainbow-delimiters-mode)

;; When you visit a file, point goes to the last place where it
;; was when you previously visited the same file.
;; http://www.emacswiki.org/emacs/SavePlace
(require 'saveplace)
(setq-default save-place t)
;; keep track of saved places in ~/.emacs.d/places
(setq save-place-file (concat user-emacs-directory "workspace/places"))

;; Emacs can automatically create backup files. This tells Emacs to
;; put all backups in ~/.emacs.d/backups. More info:
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Backup-Files.html
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "workspace/backups"))))
(setq auto-save-default nil)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/workspace/ac-dict")
(ac-config-default)

(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")
