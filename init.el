(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (sage-shell-mode sage-shell anki-editor helpful company-box ledger-mode mu4e-alert yasnippet-snippets ivy-yasnippet vlf-setup vlf counsel-org-clock interleave dired+ magit-gh-pulls rainbow-delimiters session auctex-latexmk auctex org-bullets visual-regexp org git-gutter-fringe+ package-utils wgrep org-autolist org-ref-bibtex ivy-rich transpose-frame mic-paren org-ref adaptive-wrap visual-fill-column aggressive-indent projectile yasnippet flyspell-correct counsel-projectile flyspell-correct-ivy avy beacon ivy ivy-bibtex ivy-hydra company company-statistics company-shell counsel easy-kill org-mode key-chord golden-ratio use-package diminish pdf-tools singular dired-x smartparents zone-nyan whitespace-cleanup-mode which-key use-package-chords spinner smex smartparens smart-mode-line nyan-mode magit ibuffer-vc ibuffer-projectile hydra goto-chg expand-region darktooth-theme company-auctex color-theme chess cdlatex auto-compile ace-window)))
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
 '(hl-line ((t (:background "maroon"))))
 '(hydra-face-blue ((t (:foreground "turquoise" :weight bold))))
 '(hydra-face-pink ((t (:foreground "hot pink" :weight bold))))
 '(hydra-face-red ((t (:foreground "firebrick1" :weight bold))))
 '(lv-separator ((t (:background "white smoke"))))
 '(minibuffer-prompt ((t (:box (:line-width 1 :color "orange red" :style released-button) :foreground "#FDF4C1"))))
 '(org-block ((t (:inherit default))))
 '(org-block-begin-line ((t (:inherit org-meta-line :overline t :underline nil :slant italic))))
 '(org-block-end-line ((t (:inherit org-meta-line :overline nil :underline t :slant italic))))
 '(org-checkbox ((t (:foreground "#000000" :background "#93a1a1" :box (:line-width -3 :color "#93a1a1" :style "released-button")))))
 '(org-date ((t (:foreground "DarkSlateGray3" :weight bold))))
 '(org-level-1 ((t (:family "Sans Serif" :foreground "DarkOrange2" :weight bold :height 1.3))))
 '(org-level-2 ((t (:family "Sans Serif" :foreground "DarkOliveGreen3" :weight bold :height 1.2))))
 '(org-level-3 ((t (:family "Sans Serif" :foreground "#83A598" :height 1.15))))
 '(org-level-4 ((t (:family "Sans Serif" :foreground "#FABD2F" :weight bold :height 1.1))))
 '(org-table ((t (:foreground "#84BB26"))))
 '(shadow ((t (:foreground "gray48"))))
 '(show-paren-match ((t (:background "turquoise" :height 1.15))))
 '(swiper-line-face ((t (:background "gray25"))))
 '(swiper-match-face-1 ((t (:background "#615246"))))
 '(swiper-match-face-2 ((t (:background "#EC6E00"))))
 '(swiper-match-face-3 ((t (:background "#C69972"))))
 '(swiper-match-face-4 ((t (:background "#F15C79"))))
 '(term ((t (:inherit default))))
 '(term-color-black ((t (:foreground "#3F3F3F" :background "#2B2B2B"))))
 '(term-color-blue ((t (:foreground "#7CB8BB" :background "#4C7073"))))
 '(term-color-cyan ((t (:foreground "#93E0E3" :background "#8CD0D3"))))
 '(term-color-green ((t (:foreground "#7F9F7F" :background "#9FC59F"))))
 '(term-color-magenta ((t (:foreground "#DC8CC3" :background "#CC9393"))))
 '(term-color-red ((t (:foreground "#AC7373" :background "#8C5353"))))
 '(term-color-white ((t (:foreground "#DCDCCC" :background "#656555"))))
 '(term-color-yellow ((t (:foreground "#DFAF8F" :background "#9FC59F"))))
 '(term-default-bg-color ((t (:inherit term-color-black))))
 '(term-default-fg-color ((t (:inherit term-color-white)))))


;;(add-to-list 'load-path "~/.emacs.d/lisp/benchmark-init-el-master/")
;;(require 'benchmark-init-loaddefs)
;;(benchmark-init/activate)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)


;; To decrease the init time
(setq gc-cons-threshold-usual gc-cons-threshold
      gc-cons-threshold (* 100 1024 1024)
      ;; Since an error may occur in loading, I set some debugging things so a debugger is entered if there's a problem. These get unset after everything loads successfully. 
      debug-on-error t
      debug-init t)

;; (load "~/Dropbox/config/emacs/init_emacs") ;;Before Git and Org-mode!!


;; The following code is inspirated by
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
      (message "=========== !! Be happy, everything is load !! ==========="))))

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

(when (< 24 emacs-major-version)
  (brust-endless/org-eval-eblocks "~/.emacs.d/init.org" "init.el" t))
;; Turn debugging back off, if there were no errors then things successfully got loaded.

(setq debug-on-error nil
      debug-init nil
      ;; Split windows a bit better (don't split horizontally, I have a widescreen :P)
      split-height-threshold 180
      split-width-threshold nil)
