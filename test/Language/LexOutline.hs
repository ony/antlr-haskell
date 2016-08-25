module AllStar where

  -- e.g. (Lexeme ID "x" [(Qualified ["System" "Data"])])
  -- e.g. (Lexeme Lit "1" [])
  -- a language agnostic wrapper over a generated list of tokens
  data Lexer a = Lexed [a]

  --generated by alex:
  data MyLangsTokens = INTLIT Int
                     | STRINGLIT String
                     | ID String [String]
                  -- ...

  -- MyLang.g
  -- LIT = [0-9]+
  -- STRINGLIT = '"' UNICODE '"'
  -- ID = [a-z][a-zA-Z0-9_]*
  -- MyKeyword "oops!"

  lex :: GFile a -> String -> Lexed a

  parse :: GFile a -> Lexed a -> ParseTree
