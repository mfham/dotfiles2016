;; define many keys
(defun define-many-keys (key-map key-table)
  (loop for (key . cmd) in key-table
	do (define-key key-map (read-kbd-macro key) cmd)))

;; basic
(define-many-keys global-map
  '(("C-h"      . delete-backward-char)
    ("M-?"      . help-for-help)
    ("C-z"      . undo)
    ("C-c i"    . indent-region)
    ("C-c C-i"  . hippie-expand)
    ("C-c ;"    . comment-dwim)
    ("C-o"      . toggle-input-method)
    ("M-C-g"    . grep)
    ("M-g"      . goto-line)
    ("C-x C-r"  . query-replace)
    ("C-x n"    . insert-file)))

;; 00_init.el
;; cua-mode
(define-key global-map (kbd "C-c SPC") 'cua-set-rectangle-mark)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-M-Z") 'redo)

;; 40_keybinds.el
;; recentf
(global-set-key (kbd "C-x C-m") 'recentf-open-files)

;; avy
(global-set-key (kbd "C-c C-v") 'avy-goto-char)
