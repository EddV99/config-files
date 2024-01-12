;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
;; ------------------------------------------------------------------------------

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Eduardo Valdivia"
      user-mail-address "eduardo12899@gmail.com")


;; Theme and Font
(setq doom-theme 'doom-gruvbox
      doom-font (font-spec :family "MartianMono Nerd Font" :size 16 :weight 'medium))

;; Custom line number colors
(custom-theme-set-faces! 'doom-gruvbox)
  ;;'(line-number :foreground "#ff69eb")
  ;;'(line-number-current-line :foreground "#ffffff"))

;; ispell let apostrophe be part of words
(setq ispell-local-dictionary-alist
      '((nil "[[:alpha:]]" "[^[:alpha:]]" "['’]" t nil nil utf-8)))


;; Line Numbers
(setq display-line-numbers-type 'relative)

;; Bindings
(evil-define-key 'normal dired-mode-map
  (kbd "h") 'dired-up-directory
  (kbd "l") 'dired-find-file)

(map! :leader
      :map evil-normal-state-map
      (:prefix ("l" . "Language Tools for Grammar")
       :desc "Check the buffer for grammar mistakes"
       "c" #'langtool-check
       :desc "Fix the grammar mistakes"
       "f" #'langtool-correct-buffer))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; latex preview stuff
(setq org-latex-create-formula-image-program 'dvipng)

;; Performance?
;;(setq company-idle-delay nil)
(setq lsp-log-io nil)


;; Vertical Scroll
(setq scroll-step 1)
(setq scroll-margin 8)
(setq scroll-conservatively 101)
(setq scroll-up-aggressively 0.01)
(setq scroll-down-aggressively 0.01)
(setq auto-window-vscroll nil)
(setq fast-but-imprecise-scrolling nil)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
;; Horizontal Scroll
(setq hscroll-step 1)
(setq hscroll-margin 1)

;; Org Agenda
(after! org
  (setq org-log-done 'nil)
  (setq org-todo-keywords '((sequence "TODO(t)" "ASSIGNMENT(a)"
                             "QUIZ(q)" "TEST(e)" "PROJECT(p)" "MEETING(m)" "CLASS(s)" "|" "MISSED(i)" "DONE(d)" "CANCELLED(c)" ))))
