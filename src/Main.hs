module Main where

import qualified RIO
import qualified RIO.Process
import qualified RIO.Prelude.Simple

-- put your abs path
absPythonPath = "/home/kb/workspace/rio-process-symlink-issue/venv/bin/python"

main :: IO ()
main = do
  RIO.Prelude.Simple.runSimpleApp $ do
    (out, err) <- RIO.Process.proc
      absPythonPath
      ["-c", "import semver; print(semver.parse(\"1.2.3\"))"]
      $ \pconf -> RIO.Process.readProcess_ pconf
    RIO.liftIO $ print $ "> out: " <> show out
    RIO.liftIO $ print $ "> err: " <> show err
