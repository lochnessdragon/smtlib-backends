import Data.Default (def)
import qualified SMTLIB.Backends.Process as Process
import SMTLIB.Backends.Tests (sources, testBackend)
import Test.Tasty

main :: IO ()
main = do
  defaultMain $
    testGroup
      "backends"
      [ testBackend "process" sources $ \todo ->
          Process.with def $ todo . Process.toBackend
      ]
