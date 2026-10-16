[
  (initialization)
  (finalization)
  (declSection)
  (case)
  (repeat)
  (try)
  (exceptionElse)
  (asm)
] @context

(declType
  type: [
    (declClass)
    (declIntf)
    (declHelper)
  ]) @context

(defProc
  header: (_) @context.final) @context

(lambda
  body: (_) @context.end) @context

(if
  then: (_) @context.end) @context

(ifElse
  then: (_) @context.end) @context

(for
  body: (_) @context.end) @context

(foreach
  body: (_) @context.end) @context

(while
  body: (_) @context.end) @context

(with
  body: (_) @context.end) @context

(caseCase
  body: (_) @context.end) @context

(exceptionHandler
  body: (_) @context.end) @context
