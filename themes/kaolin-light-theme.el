;;; kaolin-light-theme.el --- Light Kaolin theme variant
;;; Commentary:

;;; Code:
(require 'kaolin-themes)

(define-kaolin-theme light  "Light Kaolin theme variant."
  ;; Palette modification
  (
   ;; TODO: lime color
   (blue         "#5c9499")
   ;; (jade         "#597a6e")
   (dark-blue    "#445588")
   (pink         "#d45589")
   (dark-jade    "#3e594e")
   (light-jade   "#518270")
   (pure-orange  "#d1832e")
   (faded-orange "#c78e6d")
   (red          "#c86d6d")

   (cyan         "#48a9a9")
   (teal         "#6facb3")
   (dark-cyan    "#008b8b")

   ;; Color vars
   (bg0 "#f5f6f5")
   (bg1 "#e9eae7")
   (bg2 "#dcded9")
   (bg3 "#cfd2cb")
   (bg4 "#c5c9c0")

   ;; (bg0 white0)
   ;; (bg1 white0)
   ;; (bg2 white1)
   ;; (bg3 white2)
   ;; (bg4 white3)

   (fg1 dark-jade)
   (fg2 "#3e574d")
   (fg3 "#476257")
   (fg4 "#4f6e62")
   ;; (green "#3f7d7f")
   (green "#5e8475")


   (keyword     jade)
   (second-key  jade)
   (var         lavender)
   (const       faded-blue)
   (builtin     light-jade)
   ;; TODO:
   (comment     "#9aa88c")
   (alt-comment alt-grayish-blue)
   (functions   builtin)
   (str         cyan)
   (str-alt     teal)
   (doc         str-alt)
   (type        faded-orange)
   (num         red)
   (bool        num)
   (prep        dark-blue)
   (warning     orange)
   (err         red)

   (dim-buffer white0)
   (hl         viridian)
   ;; TODO: add colored
   (hl-line    (if kaolin-hl-line-colored bg2 bg2))
   (hl-indent  gray9)
   ;; TODO:
   (selection bg4)
   ;; TODO:
   (pulse teal)

   (todo moderate-pink)

   (tooltip-bg bg2)
   (tooltip-fg gray9)
   (tooltip-hl-bg bg3)
   (tooltip-hl-fg hl)

    ;; TODO:
   (rb1 green)
   (rb2 dark-violet)
   (rb3 moderate-blue)
   (rb4 blue)
   (rb5 green)
   (rb6 moderate-pink)
   (rb7 faded-orange)
   (rb8 jade)
   (rb9 lavender)

   (diff-add    light-jade)
   (diff-change faded-orange)
   (diff-rem    faded-red)

    ;; Mode-line
   (line-fg           fg4)
   (line-bg1          bg2)
   (line-bg2          bg3)
   (line-border       bg3)

   ;; Telephone-line
   (segment-active    gray2)
   (segment-inactive  gray2)
   (evil-normal       green)
   (evil-insert       light-green)
   (evil-visual       orange)
   (evil-replace      red)
   (evil-motion       yellow)
   (evil-operator     evil-normal)
   (evil-emacs        light-yellow)

   (win-border    bg3)
   (line-num-bg   bg1)
   (line-num-fg   grayish-green)
   (line-num-hl   hl)

   (cursor        gray2)

   (ivy1          gray9)
   (ivy2          alt-blue)
   (ivy3          pure-orange)
   (ivy4          red))

  ((link                   (:foreground soft-blue :underline underline))

   (org-level-1            (:foreground green :bold bold :height 1.1))
   (org-level-2            (:foreground faded-blue :bold nil))
   (org-level-3            (:foreground faded-orange :bold nil))
   (org-level-4            (:foreground faded-wheat :bold nil))
   (org-code               (:foreground green))
   (org-verbatim           (:foreground alt-yellow))
   (org-table              (:foreground moderate-blue :bold bold))

   (js2-object-property          (:foreground brown))
   (evil-ex-info                 (:foreground moderate-pink)))


  (when kaolin-git-gutter-solid
    (custom-theme-set-faces
     'kaolin-light
     `(git-gutter:added     ((t (:background ,diff-add :foreground ,diff-add))))
     `(git-gutter:modified  ((t (:background ,diff-change :foreground ,diff-change))))
     `(git-gutter:deleted   ((t (:background ,diff-rem :foreground ,diff-rem)))))))

;;; kaolin-light-theme.el ends here
