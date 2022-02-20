(setq user-full-name "Daniele Fongo"
      user-mail-address "danielefongo@gmail.com")

(setq doom-theme 'doom-one
      doom-font (font-spec :family "Hasklig" :size 16)
      doom-big-font (font-spec :family "Hasklig" :size 20))

(setq org-directory "~/org/")

(setq display-line-numbers-type t)

(setq +workspaces-on-switch-project-behavior t)

;; projectile
(setq projectile-project-search-path '(("~/programming" . 3))
      projectile-auto-discover t)

;; PERFORMANCE
;; speed up file open: https://github.com/hlissner/doom-emacs/issues/5823#issuecomment-1003717355
(after! core-editor (add-to-list 'doom-detect-indentation-excluded-modes 'elixir-mode))
;; flycheck
(after! flycheck (setq flycheck-check-syntax-automatically '(idle-change)))
;; debug slow functions
(straight-use-package '(explain-pause-mode :type git :host github :repo "lastquestion/explain-pause-mode"))
