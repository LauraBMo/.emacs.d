;;
;;;; Mode line setup
;;(setq-default
;; mode-line-format
;; '(; Position, including warning for 80 columns
;;   (:propertize "%4l:" face mode-line-position-face)
;;   (:eval (propertize "%3c" 'face
;;                      (if (>= (current-column) 80)
;;                          'mode-line-80col-face
;;                        'mode-line-position-face)))
;;                                                          ; emacsclient [default -- keep?]                        
;;   mode-line-client
;;   "  "
;;                                                          ; read-only or modified status
;;   (:eval
;;    (cond (buffer-read-only
;;           (propertize " RO " 'face 'mode-line-read-only-face))
;;          ((buffer-modified-p)
;;           (propertize " ** " 'face 'mode-line-modified-face))
;;          (t "      ")))
;;   "    "
;;                                                          ; directory and buffer/file name
;;   (:propertize (:eval (shorten-directory default-directory 30))
;;                face mode-line-folder-face)
;;   (:propertize "%b"
;;                face mode-line-filename-face)
;;  ;; mode-line-position
;;  ;; narrow [default -- keep?]
;;   " %n "
;;                                                          ; mode indicators: vc, recursive edit, major mode, minor modes, process, global
;;  ;;   (vc-mode vc-mode)
;;   "  %["
;;   (:propertize mode-name
;;                face mode-line-mode-face)
;;   "%] "
;;   (:eval (propertize (format-mode-line minor-mode-alist)
;;                      'face 'mode-line-minor-mode-face))
;;   (:propertize mode-line-process
;;                face mode-line-process-face)
;;  ;; nyan-mode uses nyan cat as an alternative to %p
;;   (:eval (when nyan-mode (list (nyan-create))))
;;
;;   (global-mode-string global-mode-string)
;;   "    "
;;   ))
;;
;;
;;;; Helper function
;;(defun shorten-directory (dir max-length)
;;  "Show up to `max-length' characters of a directory name `dir'."
;;  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
;;        (output ""))
;;    (when (and path (equal "" (car path)))
;;      (setq path (cdr path)))
;;    (while (and path (< (length output) (- max-length 4)))
;;      (setq output (concat (car path) "/" output))
;;      (setq path (cdr path)))
;;    (when path
;;      (setq output (concat ".../" output)))
;;    output))
;;
;; Extra mode line faces
(make-face 'mode-line-read-only-face)
(make-face 'mode-line-modified-face)
(make-face 'mode-line-folder-face)
(make-face 'mode-line-filename-face)
(make-face 'mode-line-position-face)
(make-face 'mode-line-mode-face)
(make-face 'mode-line-minor-mode-face)
(make-face 'mode-line-process-face)
(make-face 'mode-line-80col-face)

(make-face 'mode-line-bars-face)
;;(set-face-attribute 'mode-line nil
;;                            :foreground "gray60" :background "gray20"
;;                            :inverse-video nil
;;                            :box '(:line-width 6 :color "gray20" :style nil))
;;(set-face-attribute 'mode-line-inactive nil
;;                            :foreground "gray80" :background "gray40"
;;                            :inverse-video nil
;;                            :box '(:line-width 6 :color "gray40" :style nil))

(set-face-attribute 'mode-line-bars-face nil
                              :inherit 'sml/col-number
                              :weight 'bold)
(set-face-attribute 'mode-line-read-only-face nil
                              :inherit 'mode-line-face
                              :foreground "#4271ae"
                              :box '(:line-width 2 :color "#4271ae"))
(set-face-attribute 'mode-line-modified-face nil
                              :inherit 'mode-line-face
                              :foreground "#c82829"
                              :background "#ffffff"
                              :box '(:line-width 2 :color "#c82829"))
(set-face-attribute 'mode-line-folder-face nil
                              :inherit 'mode-line-face
                              :foreground "gray60")
(set-face-attribute 'mode-line-filename-face nil
                              :inherit 'mode-line-face
                              :foreground "#eab700"
                              :weight 'bold)
(set-face-attribute 'mode-line-position-face nil
                              :inherit 'mode-line-face
                              :family "Menlo" :height 100)
(set-face-attribute 'mode-line-mode-face nil
                              :inherit 'mode-line-face
                              :foreground "gray80")
(set-face-attribute 'mode-line-minor-mode-face nil
                              :inherit 'mode-line-mode-face
                              :foreground "gray40"
                              :height 110)
(set-face-attribute 'mode-line-process-face nil
                              :inherit 'mode-line-face
                              :foreground "#718c00")
(set-face-attribute 'mode-line-80col-face nil
                    :inherit 'sml/col-number
                             :foreground "black"
                             :background "#eab700")
(set-face-attribute 'mode-line-highlight nil
                    :inherit 'mode-line-face
                    :box '(:line-width 1 :color "orange red" :style released-button))




(setq mode-line-buffer-identification-keymap
  ;; Add menu of buffer operations to the buffer identification part
  ;; of the mode line.or header line.
  (let ((map (make-sparse-keymap)))
    ;; Bind down- events so that the global keymap won't ``shine
    ;; through''.
    (define-key map [mode-line mouse-1] 'mode-line-next-buffer)
    (define-key map [header-line down-mouse-1] 'ignore)
    (define-key map [header-line mouse-1] 'mode-line-next-buffer)
    (define-key map [mode-line mouse-3] 'xah-copy-file-path) ;; copy file path to kill ring
    (define-key map [header-line down-mouse-3] 'ignore)
    (define-key map [header-line mouse-3] 'xah-copy-file-path)
    map))
;;; TODO :::: help-echo not show this functions!!!

;;
(setq-default
 mode-line-format
 '("%e"
    ;;   mode-line-mule-info
    ;;   mode-line-client
    (:propertize "|| " face mode-line-bars-face)
    mode-line-frame-identification
    mode-line-buffer-identification
;; Position, including warning for 80 columns
    ;; (:propertize " --[" face mode-line-bars-face)
    (:propertize " |" face mode-line-bars-face)
    (:propertize "%4l:" face sml/line-number)
    (:eval (propertize "%3c" 'face
                                 (if (>= (current-column) 80)
                                       'mode-line-80col-face
                                    'sml/col-number)))
    (:propertize " | " face mode-line-bars-face)
    (:eval
    (cond (buffer-read-only
           (propertize " RO " 'face 'mode-line-read-only-face))
          ((buffer-modified-p)
           (propertize " ** " 'face 'mode-line-modified-face))
          (t "")))
    (:eval
      (when (or buffer-read-only (buffer-modified-p))  (propertize " |" 'face 'mode-line-bars-face)))
    ;; (:propertize "]-- " face mode-line-bars-face)
;;  (:eval
;;    (cond ((buffer-read-only)
;;              (propertize "RO" 'face 'mode-line-read-only-face))
;;             ((buffer-modified-p)
;;              (propertize  "**" 'face 'mode-line-modified-face))
;;             (t (propertize "||" 'face 'sml/col-number))))    
    ;; sml/pos-id-separator
    ;;   mode-line-modified
    ;;   mode-line-remote
    ;; mode-line-front-space
    ;;      (vc-mode vc-mode)
    ;; sml/pre-modes-separator
    mode-line-modes
    (:propertize " | " face mode-line-bars-face)
    mode-line-misc-info
;;  (:propertize "||" face mode-line-bars-face)
;;  (:eval  (list (nyan-create)))
    (:propertize "||" face mode-line-bars-face)
     mode-line-position
    (:propertize "||%-" face mode-line-bars-face)
    mode-line-end-spaces));;

(setq display-time-default-load-average nil)

(nyan-mode 1)
(display-time-mode 1)


(defvar mode-line-cleaner-alist
  '(;; (auto-complete-mode . " α")
    (beacon . "")
    (yas-minor-mode . " λ")
    ;; (paredit-mode . " π")
    ;; (eldoc-mode . "")
    (abbrev-mode . " Abbv")
    (smartparens-mode . "")
    ;; (Fly . "F")
    (reftex-mode . "")
    (outline-minor-mode . "")
    (auto-fill-mode . "")
    (cdlatex-mode . " ω")
    (flyspell-mode . "")
    ;; Major modes
    (TeX-mode . "Ltx")
    (emacs-lisp-mode . "ε"))
  "Alist for `clean-mode-line'.

When you add a new element to the alist, keep in mind that you
must pass the correct minor/major mode symbol and a string you
want to use in the modeline *in lieu of* the original.")

(setq mode-line-cleaner-alist '(;; (auto-complete-mode . " α")
    (beacon-mode . "")
    (yas-minor-mode . " λ")
    ;; (paredit-mode . " π")
    ;; (eldoc-mode . "")
    (abbrev-mode . " Abbv")
    (smartparens-mode . "")
    (auto-fill-function . "")
    (which-key-mode . "")
    (Fly . "")
    (reftex-mode . "")
    (outline-minor-mode . "")
    (auto-fill-mode . "")
    (cdlatex-mode . "");; " ω")
    (flyspell-mode . "")
    ;; Major modes
    (latex-mode . "Ltx")
    (emacs-lisp-mode . "ε")))


(defun clean-mode-line ()
  (interactive)
  (loop for cleaner in mode-line-cleaner-alist
        do (let* ((mode (car cleaner))
                 (mode-str (cdr cleaner))
                 (old-mode-str (cdr (assq mode minor-mode-alist))))
             (when old-mode-str
                 (setcar old-mode-str mode-str))
               ;; major mode
             (when (string= mode major-mode)
               (setq mode-name mode-str)))))

(add-hook 'after-change-major-mode-hook 'clean-mode-line)

;;(setq-default mode-line-position
;;                   (
;;                      ;;(;; sml/buffer-identification-filling
;;                       ;; sml/buffer-identification-filling
;;                      ;; (:eval (setq sml/buffer-identification-filling
;;                      ;;                   (sml/fill-for-buffer-identification))))
;;                                                                                        
;;                      (sml/position-percentage-format 
;;                       (-3
;;                         (:propertize
;;                          (:eval sml/position-percentage-format)
;;                          local-map
;;                          (keymap
;;                            (mode-line keymap
;;                                            (down-mouse-1 keymap (column-number-mode
;;                                                                             menu-item "Display Column Numbers"
;;                                                                             column-number-mode :help "Toggle displaying column numbers in the mode-line"
;;                                                                             :button (:toggle . column-number-mode))
;;                                                                 (line-number-mode
;;                                                                   menu-item "Display Line Numbers"
;;                                                                   line-number-mode :help "Toggle displaying line numbers in the mode-line"
;;                                                                   :button  (:toggle . line-number-mode))
;;                                           "Toggle Line and Column Number Display")))
;;                          mouse-face
;;                          mode-line-highlight
;;                          face
;;                         ;; "["
;;                          sml/position-percentage
;;                         ;; "]"
;;                          help-echo "Buffer Relative Position\nmouse-1: Display Line and Column Mode Menu")))))
;;
;;(setq mode-line-format
;;       (list
;;         ))
;;; use setq-default to set it for /all/ modes
;;(setq mode-line-format
;;  (list
;;  "---- "
;;  ;; the buffer name; the file name as a tool tip
;;  '(:eval (propertize "%b " 'face 'font-lock-keyword-face
;;                                'help-echo (buffer-file-name)))
;;
;;  ;; line and column
;;  " -- (" ;; '%02' to set to 2 chars at least; prevents flickering
;;  (propertize "%02l" 'face 'font-lock-type-face) ","
;;  (propertize "%02c" 'face 'font-lock-type-face) 
;;  ") -- "
;;
;;  ;; relative position, size of file
;;  "["
;;    (propertize "%p" 'face 'font-lock-constant-face) ;; % above top
;;    "/"
;;    (propertize "%I" 'face 'font-lock-constant-face) ;; size
;;    "] -- "
;;
;;    ;; the current major mode for the buffer.
;;    "["
;;
;;    '(:eval (propertize "%m" 'face 'font-lock-string-face
;;                                  'help-echo buffer-file-coding-system))
;;    minor-mode-alist  ;; list of minor modes
;;    "] -- "
;;
;;
;;    "[" ;; insert vs overwrite mode, input-method in a tooltip
;;    '(:eval (propertize (if overwrite-mode "Ovr" "Ins")
;;              'face 'font-lock-preprocessor-face
;;              'help-echo (concat "Buffer is in "
;;                           (if overwrite-mode "overwrite" "insert") " mode")))
;;
;;    ;; was this buffer modified since the last save?
;;    '(:eval (when (buffer-modified-p)
;;              (concat ","  (propertize "Mod"
;;                             'face 'font-lock-warning-face
;;                             'help-echo "Buffer has been modified"))))
;;
;;    ;; is this buffer read-only?
;;    '(:eval (when buffer-read-only
;;              (concat ","  (propertize "RO"
;;                             'face 'font-lock-type-face
;;                             'help-echo "Buffer is read-only"))))  
;;    "]-- "
;;
;;    ;; add the time, with the date and the emacs uptime in the tooltip
;;    '(:eval (propertize (format-time-string "%H:%M")
;;              'help-echo
;;              (concat (format-time-string "%c; ")
;;                      (emacs-uptime "Uptime:%hh"))))
;;    " --"
;;    ;; i don't want to see minor-modes; but if you want, uncomment this:
;;    "%-" ;; fill with '-'
;;    ))
;;
;;
