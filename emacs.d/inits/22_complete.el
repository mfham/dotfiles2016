;; auto-complete
(add-to-list 'load-path "~/.emacs.d/elisp/elpa/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/elpa/ac-dict")
(ac-config-default)

(setq ac-auto-start nil)
(ac-set-trigger-key "TAB")

(add-hook 'auto-complete-mode-hook
          (lambda ()
            (define-key ac-completing-map (kbd "C-n") 'ac-next)
            (define-key ac-completing-map (kbd "C-p") 'ac-previous)))

;; js2-mode
;; https://raw.githubusercontent.com/sandai/dotfiles/master/.emacs.d/ac-dict/js2-mode
