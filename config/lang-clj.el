; Paredit
(add-hook 'clojure-mode-hook 'enable-paredit-mode)

; Better syntax highlighting
(require 'clojure-mode-extra-font-locking)

; Syntax highlighting for Midje framework
(add-hook 'clojure-mode-hook
	  (lambda ()
	    (setq inferior-lisp-program "lein repl")
	    (font-lock-add-keywords
	     nil
	     '(("(\\(facts?\\)"
		(1 font-lock-keyword-face))
	       ("(\\(background?\\)"
		(1 font-lock-keyword-face))))
	    (define-clojure-indent (fact 1))
	    (define-clojure-indent (facts 1))))

; Rainbows
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

; cider mode
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(setq cider-repl-pop-to-buffer-on-connect t)

; cider errors
(setq cider-show-error-buffer t)
(setq cider-auto-select-error-buffer t)

; cider history
(setq cider-repl-history-file "~/.emacs.d/workspace/cider-history")
(setq cider-repl-wrap-history t)

; Paredit in cider repl
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

; Extra clojure mode extensions
(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))
(add-to-list 'auto-mode-alist '("lein-env" . clojure-mode))
