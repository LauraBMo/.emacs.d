;;-*-coding: utf-8;-*-
(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'Custom-mode-abbrev-table '())

(define-abbrev-table 'Info-edit-mode-abbrev-table '())

(define-abbrev-table 'Rd-mode-abbrev-table
  '(
    ("`ag" "\\arguments" nil 0)
    ("`al" "\\alias" nil 0)
    ("`au" "\\author" nil 0)
    ("`bf" "\\bold" nil 0)
    ("`co" "\\code" nil 0)
    ("`de" "\\describe" nil 0)
    ("`dn" "\\description" nil 0)
    ("`dt" "\\details" nil 0)
    ("`em" "\\emph" nil 0)
    ("`en" "\\enumerate" nil 0)
    ("`ex" "\\examples" nil 0)
    ("`fi" "\\file" nil 0)
    ("`fo" "\\format" nil 0)
    ("`it" "\\item" nil 0)
    ("`iz" "\\itemize" nil 0)
    ("`kw" "\\keyword" nil 0)
    ("`li" "\\link" nil 0)
    ("`me" "\\method" nil 0)
    ("`na" "\\name" nil 0)
    ("`no" "\\note" nil 0)
    ("`re" "\\references" nil 0)
    ("`sa" "\\seealso" nil 0)
    ("`se" "\\section" nil 0)
    ("`so" "\\source" nil 0)
    ("`ss" "\\subsection" nil 0)
    ("`sy" "\\synopsis" nil 0)
    ("`ta" "\\tabular" nil 0)
    ("`ti" "\\title" nil 0)
    ("`us" "\\usage" nil 0)
    ("`va" "\\value" nil 0)
   ))

(define-abbrev-table 'TeX-error-overview-mode-abbrev-table '())

(define-abbrev-table 'TeX-output-mode-abbrev-table '())

(define-abbrev-table 'biblio-selection-mode-abbrev-table '())

(define-abbrev-table 'bibtex-mode-abbrev-table '())

(define-abbrev-table 'bmkp-edit-bookmark-record-mode-abbrev-table '())

(define-abbrev-table 'bmkp-edit-bookmark-records-mode-abbrev-table '())

(define-abbrev-table 'bmkp-edit-tags-mode-abbrev-table '())

(define-abbrev-table 'bookmark-bmenu-mode-abbrev-table '())

(define-abbrev-table 'bookmark-edit-annotation-mode-abbrev-table '())

(define-abbrev-table 'bookmark-show-annotation-mode-abbrev-table '())

(define-abbrev-table 'calendar-mode-abbrev-table '())

(define-abbrev-table 'change-log-mode-abbrev-table '())

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'debugger-mode-abbrev-table '())

(define-abbrev-table 'diff-mode-abbrev-table '())

(define-abbrev-table 'display-time-world-mode-abbrev-table '())

(define-abbrev-table 'doctex-mode-abbrev-table '())

(define-abbrev-table 'edit-abbrevs-mode-abbrev-table '())

(define-abbrev-table 'elisp-byte-code-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'ert-results-mode-abbrev-table '())

(define-abbrev-table 'ert-simple-view-mode-abbrev-table '())

(define-abbrev-table 'ess-julia-mode-abbrev-table '())

(define-abbrev-table 'flycheck-error-list-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table '())

(define-abbrev-table 'git-gutter+-commit-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table
  '(
    ("ann" "announcement" nil 0)
    ("arg" "argument" nil 0)
    ("bc" "because" nil 0)
    ("bg" "background" nil 0)
    ("bt" "between" nil 0)
    ("comm" "communication" nil 0)
    ("desc" "description" nil 0)
    ("dict" "dictionary" nil 0)
    ("disc" "discussion" nil 0)
    ("eg" "e.g." nil 0)
    ("eng" "English" nil 0)
    ("env" "environment" nil 0)
    ("esp" "especially" nil 0)
    ("ex" "example" nil 0)
    ("fex" "for example," nil 0)
    ("fu" "function" nil 0)
    ("gvn" "government" nil 0)
    ("helo" "hello" nil 2)
    ("ia" "interactive" nil 0)
    ("ie" "i.e." nil 0)
    ("intro" "introduction" nil 0)
    ("kb" "keyboard" nil 0)
    ("kbd" "keybinding" nil 0)
    ("mynm" "Laura Brustenga Moncusí" nil 0)
    ("ob" "object" nil 0)
    ("oc" "occur" nil 0)
    ("occ" "occurrence" nil 0)
    ("ref" "reference" nil 0)
    ("rr" "\\quetal{}" my-after-abbrev-expand 1)
    ("scs" "screenshot" nil 0)
    ("slpl" "hola{" dont-insert-expansion-char 0)
    ("soem" "some" nil 1)
    ("spl" "hola{" dont-insert-expansion-char 0)
    ("trad" "traditional" nil 0)
    ("ualt" "alternative" nil 0)
    ("uauto" "automatic" nil 0)
    ("uc" "character" nil 0)
    ("uchars" "characters" nil 0)
    ("uexp" "experience" nil 0)
    ("uexpr" "expression" nil 0)
    ("ul" "language" nil 0)
    ("uorg" "organization" nil 0)
    ("upm" "parameter" nil 0)
    ("uq" "question" nil 0)
    ("ver" "version" nil 0)
    ("wp" "Wikipedia" nil 0)
   ))

(define-abbrev-table 'grep-mode-abbrev-table '())

(define-abbrev-table 'help-mode-abbrev-table '())

(define-abbrev-table 'ibuffer-mode-abbrev-table '())

(define-abbrev-table 'image-dired-display-image-mode-abbrev-table '())

(define-abbrev-table 'image-dired-thumbnail-mode-abbrev-table '())

(define-abbrev-table 'inferior-julia-mode-abbrev-table '())

(define-abbrev-table 'ivy-occur-grep-mode-abbrev-table '())

(define-abbrev-table 'ivy-occur-mode-abbrev-table '())

(define-abbrev-table 'julia-mode-abbrev-table '())

(define-abbrev-table 'latex-mode-abbrev-table
  '(
    ("ecd" "effective Cartier divisor" nil 0)
    ("leg" "e.g." nil 1)
    ("scl" "schematic closure" nil 3)
    ("Ç" "\\[
  ?
\\]" cdlatex-position-cursor 6)
    ("Ñ" "\\[
  ?
\\]" cdlatex-position-cursor 4)
    ("ç" "\\(?\\)" cdlatex-position-cursor 3)
    ("ñ" "\\(?\\)" cdlatex-position-cursor 0)
   ))

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'log-edit-mode-abbrev-table '())

(define-abbrev-table 'magit-cherry-mode-abbrev-table '())

(define-abbrev-table 'magit-diff-mode-abbrev-table '())

(define-abbrev-table 'magit-log-mode-abbrev-table '())

(define-abbrev-table 'magit-log-select-mode-abbrev-table '())

(define-abbrev-table 'magit-merge-preview-mode-abbrev-table '())

(define-abbrev-table 'magit-mode-abbrev-table '())

(define-abbrev-table 'magit-popup-mode-abbrev-table '())

(define-abbrev-table 'magit-process-mode-abbrev-table '())

(define-abbrev-table 'magit-reflog-mode-abbrev-table '())

(define-abbrev-table 'magit-refs-mode-abbrev-table '())

(define-abbrev-table 'magit-repolist-mode-abbrev-table '())

(define-abbrev-table 'magit-revision-mode-abbrev-table '())

(define-abbrev-table 'magit-stash-mode-abbrev-table '())

(define-abbrev-table 'magit-stashes-mode-abbrev-table '())

(define-abbrev-table 'magit-status-mode-abbrev-table '())

(define-abbrev-table 'message-mode-abbrev-table '())

(define-abbrev-table 'messages-buffer-mode-abbrev-table '())

(define-abbrev-table 'occur-edit-mode-abbrev-table '())

(define-abbrev-table 'occur-mode-abbrev-table '())

(define-abbrev-table 'org-export-stack-mode-abbrev-table '())

(define-abbrev-table 'org-mode-abbrev-table '())

(define-abbrev-table 'outline-mode-abbrev-table '())

(define-abbrev-table 'package-menu-mode-abbrev-table '())

(define-abbrev-table 'pdf-annot-list-mode-abbrev-table '())

(define-abbrev-table 'pdf-occur-buffer-mode-abbrev-table '())

(define-abbrev-table 'pdf-outline-buffer-mode-abbrev-table '())

(define-abbrev-table 'plain-tex-mode-abbrev-table '())

(define-abbrev-table 'process-menu-mode-abbrev-table '())

(define-abbrev-table 'prog-mode-abbrev-table '())

(define-abbrev-table 'select-tags-table-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table '())

(define-abbrev-table 'slitex-mode-abbrev-table '())

(define-abbrev-table 'snippet-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'speedbar-mode-abbrev-table '())

(define-abbrev-table 'tablist-mode-abbrev-table '())

(define-abbrev-table 'tabulated-list-mode-abbrev-table '())

(define-abbrev-table 'tar-mode-abbrev-table '())

(define-abbrev-table 'tex-mode-abbrev-table '())

(define-abbrev-table 'tex-shell-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table '())

(define-abbrev-table 'url-cookie-mode-abbrev-table '())

(define-abbrev-table 'vc-bzr-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-edit-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-git-region-history-mode-abbrev-table '())

(define-abbrev-table 'vc-hg-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-mtn-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-svn-log-view-mode-abbrev-table '())

(define-abbrev-table 'xref--xref-buffer-mode-abbrev-table '())

