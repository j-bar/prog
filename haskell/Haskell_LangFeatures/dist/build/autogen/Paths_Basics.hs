module Paths_Basics (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/home/leeeee/.cabal/bin"
libdir     = "/home/leeeee/.cabal/lib/Basics-0.1.0.0/ghc-7.6.3"
datadir    = "/home/leeeee/.cabal/share/Basics-0.1.0.0"
libexecdir = "/home/leeeee/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catchIO (getEnv "Basics_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "Basics_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "Basics_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Basics_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
