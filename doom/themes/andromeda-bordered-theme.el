
;; If you are distributing this theme, please replace this comment
;; with the appropriate license attributing the original VS Code
;; theme author.

(deftheme andromeda-bordered "A nice dark theme.")


(let (
(color0 "#262A33")
(color1 "#D5CED9")
(color2 "#3a3e47")
(color3 "#FFF")
(color4 "#3D4352")
(color5 "#3f434c")
(color6 "#373a42")
(color7 "#e9e2ed")
(color8 "#4b4e56")
(color9 "#fdf6ff")
(color10 "#00e8c6")
(color11 "#71757e")
(color12 "#FFE66D")
(color13 "#ee5d43")
(color14 "#c74ded")
(color15 "#96E072")
(color16 "#746f77")
(color17 "#353942")
(color18 "#e4dde8")
(color19 "#31353e")
(color20 "#e0d9e4"))


(custom-theme-set-faces
'andromeda-bordered


;; BASIC FACES
`(default ((t (:background ,color0 :foreground ,color1 ))))
`(hl-line ((t (:background ,color2 ))))
`(cursor ((t (:foreground ,color3 ))))
`(region ((t (:background ,color4 ))))
`(secondary-selection ((t (:background ,color5 ))))
`(fringe ((t (:background ,color0 ))))
`(mode-line-inactive ((t (:background ,color6 :foreground ,color7 ))))
`(mode-line ((t (:background ,color8 :foreground ,color9 ))))
`(minibuffer-prompt ((t (:background ,color0 :foreground ,color10 ))))
`(vertical-border ((t (:foreground ,color11 ))))


;; FONT LOCK FACES
`(font-lock-builtin-face ((t (:foreground ,color12 ))))
`(font-lock-constant-face ((t (:foreground ,color13 ))))
`(font-lock-function-name-face ((t (:foreground ,color12 ))))
`(font-lock-keyword-face ((t (:foreground ,color14 ))))
`(font-lock-string-face ((t (:foreground ,color15 ))))
`(font-lock-variable-name-face ((t (:foreground ,color10 ))))


;; linum-mode
`(linum ((t (:foreground ,color16 ))))
`(linum-relative-current-face ((t (:foreground ,color16 ))))


;; display-line-number-mode
`(line-number ((t (:foreground ,color16 ))))
`(line-number-current-line ((t (:foreground ,color16 ))))


;; THIRD PARTY PACKAGE FACES


;; doom-modeline-mode
`(doom-modeline-bar ((t (:background ,color8 :foreground ,color9 ))))
`(doom-modeline-inactive-bar ((t (:background ,color6 :foreground ,color7 ))))


;; web-mode
`(web-mode-string-face ((t (:foreground ,color15 ))))
`(web-mode-html-tag-face ((t (:foreground ,color14 ))))
`(web-mode-html-tag-bracket-face ((t (:foreground ,color14 ))))


;; company-mode
`(company-tooltip ((t (:background ,color17 :foreground ,color18 ))))


;; org-mode
`(org-block ((t (:background ,color19 :foreground ,color20 ))))))


(custom-theme-set-variables
  'andromeda-bordered
  '(linum-format " %3i "))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


;;;###autoload
(defun andromeda-bordered-theme()
  "Apply the andromeda-bordered-theme."
  (interactive)
  (load-theme 'andromeda-bordered t))


(provide-theme 'andromeda-bordered)


;; Local Variables:
;; no-byte-compile: t
;; End:


;; Generated using https://github.com/nice/themeforge
;; Feel free to remove the above URL and this line.
