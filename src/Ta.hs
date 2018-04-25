module Ta where

import qualified Data.Thyme.Clock as Thyme

data Status =
    Running
  | Stopped
  | Sleeping
  deriving (Show, Eq)

type Deadline =
  Thyme.UTCTime

data Job =
  Job {
    status :: Status
  , deadline :: Deadline
  } deriving (Eq)

instance Show Job where
  show job =
    show sts ++ " <timestamp>"
    where
      sts = status job

runTa :: IO ()
runTa = do
  time <- Thyme.getCurrentTime
  let
    job =
      Job Stopped time
  print job

