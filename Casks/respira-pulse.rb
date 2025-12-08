cask "respira-pulse" do
  version "1.1.15"

  if Hardware::CPU.arm?
    sha256 "22d4cae821d01dba85734a7ae617069ab4708a6f8401f27d54e84c484174f1a7"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.15/Respira-Pulse-arm64.dmg"
  else
    sha256 "a69ef33cdef9559960b0e2fe583e6a9e204b9427dcd08835810d178810ba32fe"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.15/Respira-Pulse-x64.dmg"
  end

  name "Respira Pulse"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://www.respirapulse.dev"

  app "Respira Pulse.app"

  zap trash: [
    "~/Library/Application Support/cafe.respira.pulse",
    "~/Library/Preferences/cafe.respira.pulse.plist",
    "~/Library/Caches/cafe.respira.pulse",
  ]
end
