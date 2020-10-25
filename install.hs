#!/usr/bin/env runhaskell
{-# LANGUAGE OverloadedStrings #-}

import Turtle
import System.Posix.User

data Subroutine = Link | Replace
  
nixConfDest = "/etc/nixos/configuration.nix"
nixConfBak = "/etc/nixos/configuration.nix.bak"
nixConfSrc = "./configuration.nix"
dotfilesSrc = "./dotfiles"

replaceConfiguration :: Shell ()
replaceConfiguration = do
  configPresent <- testfile nixConfDest
  case configPresent of
    True ->
      do
        backupPresent <- testfile nixConfBak
        case backupPresent of
          True ->
            rm nixConfBak
          False -> return ()
        mv nixConfDest nixConfBak
    False -> return ()
  cp nixConfSrc nixConfDest

linkDotfiles :: Shell ()
linkDotfiles = do
  top <- home
  file <- ls dotfilesSrc
  srcCanonical <- realpath file
  let destCanonical = top </> filename file
  destPresent <- testpath destCanonical
  case destPresent of
    True ->
      rm destCanonical
    False -> return ()
  symlink srcCanonical destCanonical


linkSubCommand = subcommand "link" "(should not be run as root) Create symlinks from the files and directories in ./dotfiles to the users home directory" (pure Link)
replaceSubCommand = subcommand "config" "(has to be run as root) Replaces the current nixos configuration.nix in /etc/nixos/configuration.nix with the one in this directory. Creates a backup in /et/nixos/configuration.nix.bak" (pure Replace)


main = do
  cmd <- options "Install Script " (linkSubCommand <|> replaceSubCommand)
  case cmd of
    Link -> sh linkDotfiles
    Replace -> sh replaceConfiguration
