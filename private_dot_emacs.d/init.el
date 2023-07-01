(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; pdf-tools activation
(pdf-tools-install)  ; Standard activation command
;; (pdf-loader-install) ; On demand loading, leads to faster startup time

;; define global keys for three commands that are useful in any
;; Emacs buffer, not just Org buffers
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

;; Capture templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/OneDrive/org/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/OneDrive/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")))
