;; memo
;; http://syohex.hatenablog.com/entry/20130123/1358950322
;; http://qiita.com/senda-akiha/items/cddb02cfdbc0c8c7bc2b
;; http://www.flycheck.org/manual/latest/Supported-languages.html

(require 'flycheck)
(setq flycheck-check-syntax-automatically '(mode-enabled save))

;; Ruby
(add-hook 'ruby-mode-hook 'flycheck-mode)

;; PHP
(add-hook 'php-mode-hook 'flycheck-mode)

(add-hook 'php-mode-hook (lambda ()
                           (setq-local flycheck-phpcs-standard "PSR2")))
