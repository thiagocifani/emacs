;;; package --- sets up tide
;;; Commentary: This is dodecaphonic code
;;; Code: dodecaphonic

(defun thiagocifani-tide-setup ()
  (interactive)
  (tide-setup)
  (flycheck-mode t)
  (setq typescript-indent-level 2)
  (tide-hl-identifier-mode t)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode t))

(provide 'tide-setup)
;;; tide-setup.el ends here
