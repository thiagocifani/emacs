(use-package typescript-mode
  :config
  (add-hook 'typescript-mode-hook #'direnv-update-environment)
  (add-hook 'typescript-mode-hook #'thiagocifani-tide-setup))

(use-package tide
  :bind
  (("C-c TAB" . tide-fix))
  :config
  (add-hook 'before-save-hook 'tide-format-before-save))

(with-eval-after-load "web-config"
  (require 'web-mode)

  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
  (add-hook 'web-mode-hook
            (lambda ()
              (when (string-equal "tsx" (file-name-extension buffer-file-name))
                (tide-setup)))))

(use-package ob-typescript)

(provide 'typescript-config)
















