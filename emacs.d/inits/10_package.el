;; http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0
(require 'cl)

(defvar installing-package-list
  '(
    auto-complete
    redo+
    js2-mode
    php-mode
    ruby-mode
    ruby-block
    ruby-end
    rspec-mode
    yasnippet
    quickrun
    popwin
    flycheck
    recentf-ext
    swiper
    counsel
    rainbow-delimiters
    project-explorer
    which-key
    material-theme
    markdown-mode
    avy
    ))

(let ((not-installed (loop for x in installing-package-list
			   when (not (package-installed-p x))
			   collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
