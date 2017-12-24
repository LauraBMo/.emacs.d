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

(define-abbrev-table 'cocoa-abbrev-table
  '(
    ("alias" "Alias" nil 0)
    ("and" "And" nil 0)
    ("break" "Break" nil 0)
    ("ciao" "Ciao;" nil 0)
    ("cond" "Cond" nil 0)
    ("define" "Define" nil 0)
    ("deglex" "DegLex" nil 0)
    ("degrevlex" "DegRevLex" nil 0)
    ("do" "Do" nil 0)
    ("elif" "Elif" nil 0)
    ("else" "Else" nil 0)
    ("elsif" "ElsIf" nil 0)
    ("end" "End;" nil 0)
    ("endalias" "EndAlias;" nil 0)
    ("endblock" "EndBlock;" nil 0)
    ("endcatch" "EndCatch;" nil 0)
    ("endcond" "EndCond;" nil 0)
    ("enddefine" "EndDefine;" nil 0)
    ("endfor" "EndFor;" nil 0)
    ("endforeach" "EndForeach;" nil 0)
    ("endif" "EndIf;" nil 0)
    ("endpackage" "EndPackage;" nil 0)
    ("endrepeat" "EndRepeat;" nil 0)
    ("endusing" "EndUsing;" nil 0)
    ("endwhile" "EndWhile;" nil 0)
    ("error" "Error" nil 0)
    ("false" "False" nil 0)
    ("for" "For" nil 0)
    ("foreach" "Foreach" nil 0)
    ("ideal" "Ideal" nil 0)
    ("if" "If" nil 0)
    ("in" "In" nil 0)
    ("indentation" "Indentation;" nil 0)
    ("isin" "IsIn" nil 0)
    ("lex" "Lex" nil 0)
    ("mat" "Mat" nil 0)
    ("module" "Module" nil 0)
    ("not" "Not" nil 0)
    ("on" "On" nil 0)
    ("or" "Or" nil 0)
    ("posto" "PosTo" nil 0)
    ("print" "Print" nil 0)
    ("println" "PrintLn" nil 0)
    ("quit" "Quit;" nil 0)
    ("record" "Record" nil 0)
    ("return" "Return" nil 0)
    ("set" "Set" nil 0)
    ("step" "Step" nil 0)
    ("then" "Then" nil 0)
    ("time" "Time" nil 0)
    ("to" "To" nil 0)
    ("topos" "ToPos" nil 0)
    ("true" "True" nil 0)
    ("unset" "Unset" nil 0)
    ("use" "Use" nil 0)
    ("using" "Using" nil 0)
    ("var" "Var" nil 0)
    ("vector" "Vector" nil 0)
    ("while" "While" nil 0)
    ("xel" "Xel" nil 0)
   ))

(define-abbrev-table 'cocoa5-mode-abbrev-table
  '(
    ("alias" "Alias" cocoa5-check-expansion 0)
    ("and" "And" cocoa5-check-expansion 0)
    ("break" "Break" cocoa5-check-expansion 0)
    ("ciao" "Ciao" cocoa5-check-expansion 0)
    ("continue" "Continue" cocoa5-check-expansion 0)
    ("define" "Define" cocoa5-check-expansion 0)
    ("deglex" "DegLex" cocoa5-check-expansion 0)
    ("degrevlex" "DegRevLex" cocoa5-check-expansion 0)
    ("do" "Do" cocoa5-check-expansion 0)
    ("elif" "Elif" cocoa5-check-expansion 0)
    ("else" "Else" cocoa5-check-expansion 0)
    ("end" "End" cocoa5-check-expansion 0)
    ("endblock" "EndBlock" cocoa5-check-expansion 0)
    ("endcatch" "EndCatch" cocoa5-check-expansion 0)
    ("enddefine" "EndDefine" cocoa5-check-expansion 0)
    ("endfor" "EndFor" cocoa5-check-expansion 0)
    ("endforeach" "EndForeach" cocoa5-check-expansion 0)
    ("endfunc" "EndFunc" cocoa5-check-expansion 0)
    ("endif" "EndIf" cocoa5-check-expansion 0)
    ("endpackage" "EndPackage" cocoa5-check-expansion 0)
    ("endusing" "EndUsing" cocoa5-check-expansion 0)
    ("endwhile" "EndWhile" cocoa5-check-expansion 0)
    ("exit" "Exit" cocoa5-check-expansion 0)
    ("false" "False" cocoa5-check-expansion 0)
    ("for" "For" cocoa5-check-expansion 0)
    ("foreach" "Foreach" cocoa5-check-expansion 0)
    ("func" "Func" cocoa5-check-expansion 0)
    ("ideal" "ideal" cocoa5-check-expansion 0)
    ("if" "If" cocoa5-check-expansion 0)
    ("in" "In" cocoa5-check-expansion 0)
    ("isin" "IsIn" cocoa5-check-expansion 0)
    ("lex" "Lex" cocoa5-check-expansion 0)
    ("mat" "mat" cocoa5-check-expansion 0)
    ("module" "Module" cocoa5-check-expansion 0)
    ("on" "On" cocoa5-check-expansion 0)
    ("or" "Or" cocoa5-check-expansion 0)
    ("package" "Package" cocoa5-check-expansion 0)
    ("posto" "PosTo" cocoa5-check-expansion 0)
    ("print" "Print" cocoa5-check-expansion 0)
    ("println" "PrintLn" cocoa5-check-expansion 0)
    ("quit" "Quit" cocoa5-check-expansion 0)
    ("record" "Record" cocoa5-check-expansion 0)
    ("return" "Return" cocoa5-check-expansion 0)
    ("step" "Step" cocoa5-check-expansion 0)
    ("then" "Then" cocoa5-check-expansion 0)
    ("to" "To" cocoa5-check-expansion 0)
    ("toplevel" "TopLevel" cocoa5-check-expansion 0)
    ("topos" "ToPos" cocoa5-check-expansion 0)
    ("true" "True" cocoa5-check-expansion 0)
    ("try" "Try" cocoa5-check-expansion 0)
    ("until" "Until" cocoa5-check-expansion 0)
    ("uponerror" "UponError" cocoa5-check-expansion 0)
    ("use" "Use" cocoa5-check-expansion 0)
    ("vector" "Vector" cocoa5-check-expansion 0)
    ("while" "While" cocoa5-check-expansion 0)
    ("xel" "Xel" cocoa5-check-expansion 0)
   ))

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
    ;; ("apl" "\\(\\apl{?}{}\\)" abbrev-possition-cursor 9)
    ("aspr" "associated prime" nil 4)
    ("aspt" "associated point" nil 7)
    ("clem" "closed embedding" nil 4)
    ("cf" "c.f." nil 0)
    ;; ("cl" "closed" nil 5)
    ("ecd" "effective Cartier divisor" nil 0)
    ("eg" "e.g." nil 0)
    ("emb" "embedding" nil 0)
    ("eng" "English" nil 0)
    ("env" "environment" nil 0)
    ("eta" "et al." nil 0)
    ("ex" "example" nil 0)
    ("ie" "i.e." nil 2)
    ("lbm" "Laura Brustenga Moncusí" nil 0)
    ("lno" "locally Noetherian" nil 1)
    ("loc" "locally" nil 1)
    ("lpp" "locally principal" nil 2)
    ("nt" "Noetherian" nil 1)
    ("opem" "open embedding" nil 0)
    ("op" "open" nil 2)
    ("qch" "quasi-coherent" nil 1)
    ("sc" "scheme" nil 2)
    ("scl" "schematic closure" nil 4)
    ("scti" "scheme theoretic image" nil 3)
    ("sim" "schematic image" nil 8)
    ("ssc" "subscheme" nil 5)
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

(define-abbrev-table 'latex-mode-abbrev-table '())

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

(define-abbrev-table 'reftex-select-bib-mode-abbrev-table '())

(define-abbrev-table 'reftex-select-label-mode-abbrev-table '())

(define-abbrev-table 'reftex-toc-mode-abbrev-table '())

(define-abbrev-table 'select-tags-table-mode-abbrev-table '())

(define-abbrev-table 'sh-mode-abbrev-table '())

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

