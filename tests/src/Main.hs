import Data.Default (def)
import qualified Examples
import qualified SMTLIB.Backends.Process as Process
import SMTLIB.Backends.Tests (sources, testBackend)
import Test.Tasty

main :: IO ()
main = do
  defaultMain $
    testGroup
      "backends"
      [ Examples.solverTests,
        testGroup
          "process"
          [ testBackend "basic examples" sources $ \todo ->
              Process.with def $ todo . Process.toBackend,
            Examples.processTests
          ]
      ]
