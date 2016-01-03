;; https://github.com/shibayu36/emacs/blob/2ae74fa62cec2da9e831fcb5f1086dc7963ce46d/emacs.d/inits/40-recentf.el
;; http://qiita.com/catatsuy/items/f9fad90fa1352a4d3161
(when (require 'recentf nil t)
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer
	(run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1)
  (require 'recentf-ext))

