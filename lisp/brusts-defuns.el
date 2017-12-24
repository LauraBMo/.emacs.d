
(defun re-member (-str -list)
  "Given a string STR and a list LST of regex, return t if some regex match the STR and nil
if not"
  (let ((list-new list) (i 0) (j (length list)))
    (while (< i j)
      (setq i (1+ i))
      (if (string-match-p (pop list-new) stir)
          (setq i (1+ j))))
    (< j i)))

(defun brust-directory-files (dir &optional full match nosort)
  "List of all files without . and .."
  (let ((l (directory-files dir full match nosort))
        (lnew '()))
    (if nosort
        (dolist (str l lnew)
          (if (string-match-p "^\\.\\{1,2\\}$" str)
              (pop l)
            (push (pop l) lnew)))
      (pop l) (pop l) l)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;; There is a built in function !!!!!!!!!!!!!!!!
;;(defun compare-lists (elist list)
;;  "Return nil if all elements in elist are in list and
;;   the list intersection of elist and list if not"
;;  (interactive)
;;  (let ((myList1))
;;    (dolist (x  list)
;;      (dolist (y elist)
;;        (if (eq y x) (cons y myList1))))
;;    (if (eq (length myList1) (length elist))
;;        (return nil)  (return myList1))))
;;



(defun string-starts-with (string prefix)
  "Return t if STRING starts with prefix."
  (and (string-match (rx-to-string `(: bos ,prefix) t) string) t))


(defun line-to-string ()
  "Return the current line as stirng wihtout any initial or ending space char"
  (s-trim (buffer-substring-no-properties (line-beginning-position) (line-end-position))))


(defun s-trim-left (s)
  "Remove whitespace at the beginning of S."
  (if (string-match "\\`[ \t\n\r]+" s)
      (replace-match "" t t s)
    s))

(defun s-trim-right (s)
  "Remove whitespace at the end of S."
  (if (string-match "[ \t\n\r]+\\'" s)
      (replace-match "" t t s)
    s))

(defun s-trim (s)
  "Remove whitespace at the beginning and end of S."
  (s-trim-left (s-trim-right s)))


;;(defun make-ref-card-of-mode-key-bindings ()
;;  "You are in the buffer of ref-card in the position where to start and 
;;the buffer *Help* is open the cursor is on the first key binding of the mode."
;;  (interactive)
;;  (let ((inbuf (buffer-name)) key)
;;    (set-buffer "*Help*")
;;    ;;   (goto-char (point-min))
;;    ;;   (search-forward "-------")
;;    ;;   (forward-word) (beginning-of-line)
;;    (while (not (detect-two-followed-empty-lines))
;;      (if (string= (line-to-string) "")
;;          (forward-line 1))
;;      (setq key (copy-key-binding))
;;      (set-buffer inbuf)
;;      (insert "\\key{" (pop key) "}{" (pop key) "}\n")
;;      (set-buffer "*Help*")
;;      (forward-line 1))))
;;
;;(defun copy-key-binding ()
;;  (interactive)
;;  (let ((pk1 (point)) (pk2 0) (pf1 0) (pf2 (line-end-position)) key fun (tot '()))
;;    (save-excursion 
;;      (while (not (detect-two-followed-spaces))
;;        (forward-char 1))
;;      (setq pk2 (point))
;;      (while (string= (thing-at-point 'char) " ")
;;        (forward-char 1))
;;      (setq pf1 (point))
;;      (setq fun (buffer-substring-no-properties pf1 pf2) key (buffer-substring-no-properties pk1 pk2))
;;      (push key tot)
;;      (push fun tot))))
;;
;;(defun detect-two-followed-empty-lines ()
;;  (interactive)
;;  (let (true)
;;    (save-excursion
;;      (if (not (string= (line-to-string) ""))
;;          (setq true nil)
;;        (forward-line 1)
;;        (if (string= (line-to-string) "")
;;            (setq true t)
;;          (setq true nil))))))
;;
;;(defun detect-two-followed-spaces ()
;;  (interactive)
;;  (let (true)
;;    (save-excursion 
;;      (if (not (string= (thing-at-point 'char) " "))
;;          (setq true nil)
;;        (forward-char 1)
;;        (if (string= (thing-at-point 'char) " ")
;;            (setq true t)
;;          (setq true nil))))))
;;

(defun fill-with-spaces (N)
  (interactive "n")
  (end-of-line)
  (while (< (current-column) N) (insert " ")))

(defun max-column-buffer nil
  (interactive)
  (let ((M 0))
    (save-excursion 
      (goto-char (point-min))
      (while (not (eobp))
        (end-of-line)
        (setq M (max M (current-column)))
        (forward-line 1))
      (message "The maximum column is %s" (number-to-string M))
      M)))

(defun split-in-two-columns (K)
  (interactive "nHow much spaces between columns?")
  (let ((N (+ (max-column-buffer) K)) (lst (split-string (car kill-ring) "\n" nil)))
    (save-excursion
      (goto-char (point-min))
      (while (not (eobp))
        (fill-with-spaces N)
        (insert (pop lst))
        (forward-line 1)))))



;;(defun cahnge (n)
;;  "Change all stirng (ch-st1 to ch-st2) from string (Str1) to delimiter (Str2) 'n' times"
;;  (interactive "nNumber of times:")
;;  (let ((i 0) ch-st1 ch-st2 Str1 Str2 )
;;    (setq Str1 (read-string "Stirng to start to change:"))
;;    (setq ch-st1 (read-string "String what you want change:"))
;;    (setq ch-st2 (read-string (concat "Replace \"" Str1 "\" by:") Str1))
;;    (setq Str2 (read-string "String to end changing:"))
;;    (while (< i n) (setq i (1+ i))
;;           (let ((p1 0) (p2 0) (m 0))
;;             (search-forward Str1) (setq p1 (point))
;;             (search-forward Str2) (setq p2 (point))
;;                                        ;     (insert (number-to-string p1) (number-to-string p2))
;;             (goto-char p1)
;;             (while (search-forward ch-st1 p2 t)
;;               (replace-match ch-st2))
;;             (goto-char p2)))))
;;


;;(defun delete-custom-safe-themes (&optional non-save-excursion)
;;  "Deletes the '(custom-safe-theme ....) at the curren buffer.
;;If non-save-excursion is non-nil then the point is left 
;;in an empty line"
;;  (interactive)
;;  (let ((p1 0) (p2 0))
;;    (if non-save-excursion
;;        (progn
;;          (goto-char 1)
;;          (if (search-forward "'(custom-safe-themes" nil t)
;;              (progn 
;;                (beginning-of-line)
;;                (setq p1 (point))
;;                (forward-list) (setq p2 (point))
;;                (kill-region p1 p2)
;;                (< 0 1))
;;            (progn 
;;              (message "There is no custom-safe-themes")
;;              (< 1 0))))
;;      (save-excursion 
;;        (goto-char 1)
;;        (if (search-forward "'(custom-safe-themes" nil t)
;;            (progn 
;;              (beginning-of-line)
;;              (setq p1 (point))
;;              (forward-list) (setq p2 (point))
;;              (kill-region p1 (1+ p2))
;;              (< 0 1))
;;          (progn 
;;            (message "There is no custom-safe-themes")
;;            (< 1 0)))))))
;;
;;(defun reload-and-set-save-new-theme (theme)
;;  (interactive "sThe theme name:")
;;  (find-file "~/Dropbox/config/emacs/init_emacs.el")
;;  (if (not (delete-custom-safe-themes t)) (progn 
;;                                            (goto-char 1)
;;                                            (search-forward "custom-set-variables")
;;                                            (insert "\n")))
;;  (find-file "~/.emacs")
;;  (delete-custom-safe-themes)
;;  (load-theme theme)
;;  (delete-custom-safe-themes)
;;  (find-file "~/Dropbox/config/emacs/init_emacs.el")
;;  (yank)
;;  (save-buffer)
;;  (find-file "~/.emacs")
;;  (goto-char 1)
;;  (search-forward "Dropbox/config/emacs/init_emacs") (end-of-line)
;;  (delete-region (point) (point-max))
;;  (save-buffer) (kill-buffer)
;;  (save-buffer) (kill-buffer) (kill-buffer))
;;
;;;; (reload-and-set-save-new-theme 'tsdh-dark-brusten)
;;
;;;;;;;;;;;;;;;;;;;;Minimal interface with F5;;;;;;;;;;;;;;;;;;;;

(defun brust/toggle-menu-tool-bars ()
  "Toggle Emacs menu and tool bar"
  (interactive)
  (let ((active-p
         (if (or menu-bar-mode tool-bar-mode) -1 1))) 
    (menu-bar-mode active-p) (tool-bar-mode active-p)))

;;;;;;;;;;;;;;;;;;;;Date & Time;;;;;;;;;;;;;;
;;(defun mp-insert-date ()
;;  (interactive)
;;  (insert (format-time-string "%x")))
;;

(defun brust-dates<= (date1 date2)
  "Return t if 'date1' < 'date2' nil otherwise (date format 'dd/mm/yy'"
  (interactive)
  (let ((-d1 (cl-loop for xx in (reverse (split-string date1 "/"))
                      collect (string-to-number xx)))
        (-d2 (cl-loop for xx in (reverse (split-string date2 "/"))
                      collect (string-to-number xx))))
    (cond
     ((< (car -d1) (car -d2)) t)
     ((> (car -d1) (car -d2)) nil)
     ((< (cadr -d1) (cadr -d2)) t)
     ((> (cadr -d1) (cadr -d2)) nil)
     ((> (car (last -d1)) (car (last -d2))) nil)
     (t t))))


;;(defun mp-insert-time ()
;;  (interactive)
;;  (insert (format-time-string "%X")))
;;
;;(global-set-key (kbd "C-c i d") 'mp-insert-date)
;;(global-set-key (kbd "C-c i t") 'mp-insert-time)
;;




;;(defun replace-selection ()
;;  (interactive)
;;  (let (p1 p2 Str1 Str2)
;;    (if (use-region-p)
;;        (setq Str1 (buffer-substring-no-properties (region-beginning) (region-end)))
;;      (setq Str1 (thing-at-point 'word)))
;;    (setq Str2 (read-string (concat "Replace \"" Str1 "\" by:") Str1))
;;    (if current-prefix-arg (goto-char 1) (beginning-of-line))
;;    (if (y-or-n-p "Replace all??")
;;        (while (search-forward Str1 nil t) (replace-match Str2))
;;      (while (search-forward Str1 nil t)
;;        (if (y-or-n-p "Raplace it?") (replace-match Str2))))))
;;
;;(global-set-key (kbd "C-2") 'replace-selection)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; Very useful ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;; To use M-x debug and find errors in an init file!!!  ;;;;;;;;;;;;;;


;;(with-eval-after-load 'debug
;;  (defun debugger-setup-buffer (debugger-args)
;;    "Initialize the `*Backtrace*' buffer for entry to the debugger.
;;That buffer should be current already."
;;    (setq buffer-read-only nil)
;;    (erase-buffer)
;;    (set-buffer-multibyte t)        ;Why was it nil ?  -stef
;;    (setq buffer-undo-list t)
;;    (let ((standard-output (current-buffer))
;;          (print-escape-newlines t)
;;          (print-level 8)
;;          (print-length 50))
;;      (backtrace))
;;    (goto-char (point-min))
;;    (delete-region (point)
;;                   (progn
;;                     (search-forward "\n  debug(")
;;                     (forward-line (if (eq (car debugger-args) 'debug)
;;                                       2    ; Remove implement-debug-on-entry frame.
;;                                     1))
;;                     (point)))
;;    (insert "Debugger entered")
;;    ;; lambda is for debug-on-call when a function call is next.
;;    ;; debug is for debug-on-entry function called.
;;    (pcase (car debugger-args)
;;      ((or `lambda `debug)
;;       (insert "--entering a function:\n"))
;;      ;; Exiting a function.
;;      (`exit
;;       (insert "--returning value: ")
;;       (setq debugger-value (nth 1 debugger-args))
;;       (prin1 debugger-value (current-buffer))
;;       (insert ?\n)
;;       (delete-char 1)
;;       (insert ? )
;;       (beginning-of-line))
;;      ;; Debugger entered for an error.
;;      (`error
;;       (insert "--Lisp error: ")
;;       (prin1 (nth 1 debugger-args) (current-buffer))
;;       (insert ?\n))
;;      ;; debug-on-call, when the next thing is an eval.
;;      (`t
;;       (insert "--beginning evaluation of function call form:\n"))
;;      ;; User calls debug directly.
;;      (_
;;       (insert ": ")
;;       (prin1 (if (eq (car debugger-args) 'nil)
;;                  (cdr debugger-args) debugger-args)
;;              (current-buffer))
;;       (insert ?\n)))
;;    ;; After any frame that uses eval-buffer,
;;    ;; insert a line that states the buffer position it's reading at.
;;    (save-excursion
;;      (let ((tem eval-buffer-list))
;;        (while (and tem
;;                    (re-search-forward "^  eval-\\(buffer\\|region\\)(" nil t))
;;          (beginning-of-line)
;;          (insert (apply 'format "Error at line %d, column %d (point %d) in %s\n"
;;                         (with-current-buffer (car tem)
;;                           (list (line-number-at-pos (point))
;;                                 (current-column)
;;                                 (point)
;;                                 (buffer-name)))))
;;          (pop tem))))
;;    (debugger-make-xrefs)))
;;

(provide 'brusts-defuns)
