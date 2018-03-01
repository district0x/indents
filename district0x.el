(when (not (package-installed-p clojure-mode))
  (package-install clojure-mode))

;; use 2 spaces for tabs
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
 
;; indent any newline
(define-key global-map (kbd "RET") 'newline-and-indent)

;; remove trailing whistespaces on buffer save
(add-hook 'before-save-hook 'whitespace-cleanup)
 
;; list of macros and indentation rules, see https://github.com/clojure-emacs/clojure-mode#indentation-options
(require 'clojure-mode)
(define-clojure-indent
  (defroutes 'defun)
  (GET 2)
  (POST 2)
  (PUT 2)
  (DELETE 2)
  (HEAD 2)
  (ANY 2)
  (OPTIONS 2)
  (PATCH 2)
  (rfn 2)
  (let-routes 1)
  (context 2)
  (wait-for 'defun))
 
