(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda-input-user-translations '(("o-" "⟜")))
 '(magit-todos-insert-after '(bottom) nil nil "Changed by setter of obsolete option `magit-todos-insert-at'")
 '(org-agenda-files
   '("/Users/stevenschaefer/org/research/cats+bb/cats+bb-prelim.org" "/Users/stevenschaefer/org/research/LLM_ITP/LLM_ITP.org" "/Users/stevenschaefer/org/research/semester.org" "/Users/stevenschaefer/org/research/regexp.org" "/Users/stevenschaefer/org/research/recent_accomplishments.org" "/Users/stevenschaefer/org/research/Cats+bb-prelim.org" "/Users/stevenschaefer/org/misc/OPLSS/statement_of_motivation.org" "/Users/stevenschaefer/org/misc/letter_for_max.org" "/Users/stevenschaefer/org/journal/09-09-2-23.org" "/Users/stevenschaefer/org/notes.org" "/Users/stevenschaefer/org/journal.org" "/Users/stevenschaefer/org/journal/01-08-2025.org"))
 '(package-selected-packages '(mastodon)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'pyenv-mode-set 'disabled t)

(setq snax-root "~/OPLSS/pfenning/snax/src/")
(load (concat snax-root "snax.el"))
(setq auto-mode-alist (cons '("\\.adj.?$" . snax-mode) auto-mode-alist))

(setq forester-root "~/forest/")
(load (concat forester-root "forester.el"))

(defun opam-env ()
  (interactive nil)
  (dolist (var (car (read-from-string (shell-command-to-string "opam config env --sexp"))))
    (setenv (car var) (cadr var))))

(opam-env)
(put 'customize-option 'disabled nil)
(put 'customize-group 'disabled nil)
(load-file (let ((coding-system-for-read 'utf-8))
             (shell-command-to-string "agda-mode locate")))
