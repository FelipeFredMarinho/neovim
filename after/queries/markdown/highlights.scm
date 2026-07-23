; extends

; Don't spellcheck import/export lines, since they're code, not prose.

((inline) @_inline
  (#lua-match? @_inline "^%s*import")) @nospell

((inline) @_inline
  (#lua-match? @_inline "^%s*export")) @nospell
