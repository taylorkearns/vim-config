let g:ale_linters = {
      \  'javascript': ['eslint', 'flow'],
      \'typescript': ['tslint', 'tsserver', 'prettier', 'typecheck'],
      \'css': [],
      \'scss': [],
      \}

let g:ale_lint_on_text_changed = 'never'
