;; Memo
;; http://www.emacswiki.org/emacs/EmacsCrashCode

;; disable menu bar
;; http://www.emacswiki.org/emacs/MenuBar
(menu-bar-mode -1)

;; yes or no -> y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; not create backup(***~)
(setq make-backup-files nil)

;; soft tab
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; enable Ctrl-k include Line break
(setq kill-whole-line t)

;; add new line to the end of file
(setq require-final-newline t)

;; prohibit adding newline when at buffer end
(setq next-line-add-newlines nil)

;; file name completion case-insensitive
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; display candidate in mini buffer
(icomplete-mode 1)

;; spell check
;; (setq-default flyspell-mode t)
;; (setq ispell-dictionary "american")

;; rectangular selection
;; http://qiita.com/yyamamot/items/7efcbfdcccdb5fa45ebe
(cua-mode t)
(setq cua-enable-cua-keys nil)

;; strengthen buffer
;; http://dev.ariel-networks.com/wp/documents/aritcles/emacs/part11
(require 'ibuffer)

;; redo+.el
(require 'redo+)
(setq undo-no-redo t)

;; add pair like () automatically
(electric-pair-mode t)

;; fix indent when do line break
(electric-indent-mode t)

;; fix something when do line break
(electric-layout-mode t)

;; scroll 1 line
(setq scroll-step 1)
