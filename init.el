(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(package-selected-packages
   (quote
    (org git-gutter-fringe+ package-utils wc-mode iedit wgrep org-autolist org-ref-bibtex ivy-rich transpose-frame discover mic-paren org-ref adaptive-wrap visual-fill-column aggressive-indent projectile yasnippet bookmark+ bm embrace flyspell-correct counsel-projectile flyspell-correct-ivy avy beacon ivy ivy-bibtex ivy-hydra company company-statistics company-shell counsel easy-kill fix-word org-mode emms key-chord golden-ratio use-package diminish auctex pdf-tools singular dired-x smartparents zone-nyan xah-lookup xah-find whitespace-cleanup-mode which-key volume use-package-chords undo-tree spinner smex smartparens smart-mode-line nyan-mode multiple-cursors magit ibuffer-vc ibuffer-projectile hydra goto-chg expand-region emms-mode-line-cycle emms-mark-ext emms-info-mediainfo ebib dired+ darktooth-theme company-math company-auctex color-theme chess cdlatex bongo auto-compile ace-window)))
 '(safe-local-variable-values (quote ((eval brust-wc-save-words)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:box (:line-width 2 :color "red" :style released-button) :height 2.0 :color "red" :inherit ace-jump-face-foreground))))
 '(comint-highlight-prompt ((t (:box (:line-width 1 :color "orange red" :style released-button)))))
 '(dired-directory ((t (:foreground "#DD6F48" :inherit font-lock-function-name-face :weight bold))))
 '(font-latex-math-face ((t (:foreground "#F4A460" :height 1.03))))
 '(font-latex-sectioning-5-face ((t (:inherit (default variable-pitch) :foreground "#A2CD5A" :weight bold))))
 '(font-latex-sedate-face ((t (:foreground "#DD6F48"))))
 '(font-latex-warning-face ((t (:inherit bold :foreground "cadet blue" :height 1.04))))
 '(font-lock-constant-face ((t (:foreground "#66999D"))))
 '(git-gutter+-added ((t (:background "gray16" :foreground "dark orange" :height 0.7))))
 '(git-gutter+-deleted ((t (:background "grey16" :foreground "firebrick" :height 0.9))))
 '(git-gutter+-modified ((t (:background "grey16" :foreground "dim gray" :height 0.9))))
 '(hydra-face-blue ((t (:foreground "turquoise" :weight bold))))
 '(hydra-face-red ((t (:foreground "firebrick1" :weight bold))))
 '(lv-separator ((t (:background "white smoke"))))
 '(minibuffer-prompt ((t (:box (:line-width 1 :color "orange red" :style released-button) :foreground "#FDF4C1"))))
 '(org-block ((t (:inherit default))))
 '(org-block-begin-line ((t (:inherit org-meta-line :overline t :underline t :slant italic))))
 '(org-block-end-line ((t (:inherit org-block-begin-line))))
 '(org-date ((t (:foreground "DarkSlateGray3" :weight bold))))
 '(org-level-1 ((t (:foreground "DarkOrange2" :weight bold :height 1.3))))
 '(org-level-2 ((t (:foreground "DarkOliveGreen3" :weight bold :height 1.2))))
 '(org-level-3 ((t (:foreground "#83A598" :height 1.15))))
 '(org-level-4 ((t (:foreground "#FABD2F" :height 1.1))))
 '(org-table ((t (:foreground "#84BB26"))))
 '(shadow ((t (:foreground "gray48"))))
 '(show-paren-match ((t (:background "turquoise" :height 1.15))))
 '(swiper-line-face ((t (:background "gray25"))))
 '(swiper-match-face-1 ((t (:background "#615246"))))
 '(swiper-match-face-2 ((t (:background "#EC6E00"))))
 '(swiper-match-face-3 ((t (:background "#C69972"))))
 '(swiper-match-face-4 ((t (:background "#F15C79")))))


;;(add-to-list 'load-path "~/.emacs.d/lisp/benchmark-init-el-master/")
;;(require 'benchmark-init-loaddefs)
;;(benchmark-init/activate)


;; (setq debug-on-error t)
;; (setq debug-init t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)


;; To decrease the init time
(setq gc-cons-threshold-usual gc-cons-threshold
      gc-cons-threshold (* 100 1024 1024))

;; (load "~/Dropbox/config/emacs/init_emacs") ;;Before Git and Org-mode!!


;; The following code is inspirated into
;; http://endlessparentheses.com/init-org-Without-org-mode.html
(defvar endless/init.org-message-depth 5
  "What depth of init.org headers to message at startup.")

;; I rename the obious variable to not interfer with possible updates of org-babel.
(defvar brust-endless/org-babel-src-block-regexp
  (concat
   ;; (1) indentation                 (2) lang
   "^\\([ \t]*\\)#\\+begin_src[ \t]+\\([^ \f\t\n\r\v]+\\)[ \t]*"
   ;; (3) switches
   "\\([^\":\n]*\"[^\"\n*]*\"[^\":\n]*\\|[^\":\n]*\\)"
   ;; (4) header arguments
   "\\([^\n]*\\)\n"
   ;; (5) body
   "\\([^\000]*?\n\\)??[ \t]*#\\+end_src")
  "Regexp used to identify code blocks.")

(defun brust-endless/org-eval-eblocks (µcode &optional µinit µfile-p µheader-depth µmessage-depth)
  "Eval the SRC blocks of elisp code in µcode which is the name of a file or a string where are the blocks.
µfile-p has to be t if µcode is a file and nil otherwise.
When µcode is a file, if µinit is nil eval whole file, if it is a string, eval just that header and µheader-depth has to be its depth (nil means 1).
Subtrees under a COMMENTed header are not evaluated."
  (or µheader-depth (setq µheader-depth 1))
  (or µmessage-depth (setq µmessage-depth endless/init.org-message-depth))
  (with-temp-buffer
    (insert
     (if µfile-p
	 (brust-endless/org-eval-eblocks-get-code µcode µinit µfile-p µheader-depth)
       µcode))
    (brust-endless/org-eval-eblocks-delete-commented-subtrees)
    (goto-char (point-min))
    (let (pheader neblock)
      (while (not (eobp))
	(cond
	 ((looking-at "^\\(\\*+\\) \\(.*\\)$")
	  (setq pheader (match-string 2)
		neblock 1)
	  (if (< (- (match-end 1) (match-beginning 1))
		 µmessage-depth)
	      (message "%s" (match-string 0))))
	 ((looking-at brust-endless/org-babel-src-block-regexp)
	  (goto-char (match-end 5))
	  (eval-region (match-beginning 5)
		       (match-end 5))
	  (message "%s :: %d" pheader neblock)
	  (setq neblock (1+ neblock))))
	(forward-line))
      (message "!! Be happy, everything is load !!"))))

(defun brust-endless/org-eval-eblocks-delete-commented-subtrees nil
  (interactive)
  (goto-char (point-min))
  (let ((case-fold-search nil)
	beg end
	hdepth)
    (while (re-search-forward "^\\(\\*+\\) COMMENT .*$" nil t)
      (setq beg (match-beginning 0)
	    hdepth (- (match-end 1) (match-beginning 1))
	    end (if (re-search-forward (format "^\\*\\{1,%d\\} " hdepth) nil t)
		    (match-beginning 0)
		  (point-max)))
      (delete-region beg end)
      (goto-char beg))))

(defun brust-endless/org-eval-eblocks-get-code (µcode &optional µinit µfile-p µheader-depth) 
  (with-temp-buffer
    (insert-file-contents µcode)
    (if (not µinit) (buffer-string)
      (goto-char (point-min))
      (let ((beg
	     (if (re-search-forward
		  (format (concat
			   "^\\*\\{%d\\}"
			   "\\( +\\| +COMMENT +\\)"
			   "\\(\\|TODO \\|DONE \\|CANCELED \\|DOING \\)%s")
			  µheader-depth µinit)
		  nil t)
		 (match-beginning 0)
	       (user-error "Header not found")))
	    (end
	     (if (re-search-forward (format "^\\*\\{1,%d\\} " µheader-depth) nil t)
		 (match-beginning 0)
	       (point-max))))
	(buffer-substring-no-properties beg end)))))

(brust-endless/org-eval-eblocks "~/.emacs.d/init.org" "init.el" t)
