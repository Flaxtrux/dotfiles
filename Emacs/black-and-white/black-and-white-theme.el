;; black-and-white-theme.el — Spacemacs custom theme
;; Paleta basada en el tema de waybar/nvim

(deftheme black-and-white "Monochrome theme matching waybar palette")

(let ((bg        "#1a1a1a")
      (bg-dark   "#111111")
      (bg-light  "#2e2e2e")
      (fg        "#c0c0c0")
      (fg-dim    "#555555")
      (fg-bright "#d0d0d0")
      (border    "#2e2e2e")
      (keyword   "#C66B25")
      (func      "#7aa2f7")
      (string    "#9ece6a")
      (type      "#ad8ee6")
      (operator  "#c0c0c0")
      (comment   "#555555"))

  (custom-theme-set-faces
   'black-and-white

   ;; Editor base
   `(default                        ((t (:foreground ,fg :background ,bg))))
   `(fringe                         ((t (:background ,bg))))
   `(cursor                         ((t (:background ,fg-bright))))
   `(region                         ((t (:background ,bg-light))))
   `(highlight                      ((t (:background ,bg-light))))
   `(hl-line                        ((t (:background ,bg-light))))
   `(vertical-border                ((t (:foreground ,border))))
   `(minibuffer-prompt              ((t (:foreground ,func :bold t))))
   `(link                           ((t (:foreground ,func :underline t))))

   ;; Line numbers
   `(line-number                    ((t (:foreground ,fg-dim :background ,bg))))
   `(line-number-current-line       ((t (:foreground ,fg-bright :background ,bg :bold t))))

   ;; Mode line
   `(mode-line                      ((t (:foreground ,fg :background ,bg-dark :box (:line-width 1 :color ,border)))))
   `(mode-line-inactive             ((t (:foreground ,fg-dim :background ,bg-dark :box (:line-width 1 :color ,border)))))
   `(mode-line-buffer-id            ((t (:foreground ,func :bold t))))
   `(mode-line-emphasis             ((t (:foreground ,fg-bright :bold t))))

   ;; Syntax
   `(font-lock-comment-face         ((t (:foreground ,comment :italic t))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,comment :italic t))))
   `(font-lock-string-face          ((t (:foreground ,string))))
   `(font-lock-keyword-face         ((t (:foreground ,keyword :bold t))))
   `(font-lock-builtin-face         ((t (:foreground ,keyword))))
   `(font-lock-function-name-face   ((t (:foreground ,func :bold t))))
   `(font-lock-variable-name-face   ((t (:foreground ,fg))))
   `(font-lock-type-face            ((t (:foreground ,type))))
   `(font-lock-constant-face        ((t (:foreground ,fg-bright))))
   `(font-lock-operator-face        ((t (:foreground ,operator))))
   `(font-lock-warning-face         ((t (:foreground ,keyword :bold t))))
   `(font-lock-preprocessor-face    ((t (:foreground ,type))))

   ;; Search
   `(isearch                        ((t (:foreground ,bg :background ,func :bold t))))
   `(isearch-fail                   ((t (:foreground ,bg :background ,keyword))))
   `(lazy-highlight                 ((t (:foreground ,bg :background ,fg-dim))))

   ;; Parens
   `(show-paren-match               ((t (:foreground ,fg-bright :background ,bg-light :bold t :underline t))))
   `(show-paren-mismatch            ((t (:foreground ,bg :background ,keyword))))

   ;; Company (autocomplete)
   `(company-tooltip                ((t (:foreground ,fg :background ,bg-dark))))
   `(company-tooltip-selection      ((t (:foreground ,fg-bright :background ,bg-light :bold t))))
   `(company-tooltip-common         ((t (:foreground ,func :bold t))))
   `(company-tooltip-annotation     ((t (:foreground ,fg-dim))))
   `(company-scrollbar-bg           ((t (:background ,bg-light))))
   `(company-scrollbar-fg           ((t (:background ,fg-dim))))
   `(company-preview-common         ((t (:foreground ,fg-dim))))

   ;; Helm / Ivy
   `(helm-header                    ((t (:foreground ,fg :background ,bg-dark :bold t))))
   `(helm-source-header             ((t (:foreground ,func :background ,bg-dark :bold t))))
   `(helm-selection                 ((t (:background ,bg-light))))
   `(helm-match                     ((t (:foreground ,func :bold t))))
   `(helm-candidate-number          ((t (:foreground ,fg-dim))))
   `(ivy-current-match              ((t (:foreground ,fg-bright :background ,bg-light :bold t))))
   `(ivy-minibuffer-match-face-1    ((t (:foreground ,func :bold t))))
   `(ivy-minibuffer-match-face-2    ((t (:foreground ,string :bold t))))

   ;; Evil
   `(evil-ex-search                 ((t (:foreground ,bg :background ,func))))
   `(evil-ex-lazy-highlight         ((t (:foreground ,bg :background ,fg-dim))))

   ;; Spacemacs specific
   `(spacemacs-normal-face          ((t (:background ,fg-dim))))
   `(spacemacs-insert-face          ((t (:background ,string))))
   `(spacemacs-visual-face          ((t (:background ,func))))
   `(spacemacs-replace-face         ((t (:background ,keyword))))
   `(spacemacs-emacs-face           ((t (:background ,type))))
   `(spacemacs-motion-face          ((t (:background ,fg-dim))))
   `(spacemacs-lisp-face            ((t (:background ,type))))
   `(spacemacs-hybrid-face          ((t (:background ,string))))

   ;; Which-key
   `(which-key-key-face             ((t (:foreground ,func :bold t))))
   `(which-key-group-description-face ((t (:foreground ,keyword))))
   `(which-key-command-description-face ((t (:foreground ,fg))))
   `(which-key-separator-face       ((t (:foreground ,fg-dim))))

   ;; Git gutter / diff
   `(diff-added                     ((t (:foreground ,string))))
   `(diff-removed                   ((t (:foreground ,keyword))))
   `(diff-changed                   ((t (:foreground ,type))))
   `(git-gutter:added               ((t (:foreground ,string))))
   `(git-gutter:deleted             ((t (:foreground ,keyword))))
   `(git-gutter:modified            ((t (:foreground ,type))))

   ;; Org mode
   `(org-level-1                    ((t (:foreground ,func :bold t))))
   `(org-level-2                    ((t (:foreground ,type :bold t))))
   `(org-level-3                    ((t (:foreground ,string))))
   `(org-level-4                    ((t (:foreground ,keyword))))
   `(org-code                       ((t (:foreground ,fg-bright :background ,bg-dark))))
   `(org-block                      ((t (:background ,bg-dark))))
   `(org-block-begin-line           ((t (:foreground ,fg-dim :background ,bg-dark))))
   `(org-block-end-line             ((t (:foreground ,fg-dim :background ,bg-dark))))
   `(org-link                       ((t (:foreground ,func :underline t))))
   `(org-date                       ((t (:foreground ,type))))
   `(org-done                       ((t (:foreground ,string :bold t))))
   `(org-todo                       ((t (:foreground ,keyword :bold t))))

   ;; Flycheck
   `(flycheck-error                 ((t (:underline (:style wave :color ,keyword)))))
   `(flycheck-warning               ((t (:underline (:style wave :color ,string)))))
   `(flycheck-info                  ((t (:underline (:style wave :color ,func)))))

   ;; Treemacs
   `(treemacs-root-face             ((t (:foreground ,func :bold t))))
   `(treemacs-directory-face        ((t (:foreground ,fg-bright :bold t))))
   `(treemacs-file-face             ((t (:foreground ,fg))))
   `(treemacs-git-modified-face     ((t (:foreground ,keyword))))
   `(treemacs-git-added-face        ((t (:foreground ,string))))))

(provide-theme 'black-and-white)
