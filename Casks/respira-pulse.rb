cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "b6d14307e76a586fb5aab2b68edf6212b88989e31219e30f83048cf6e00cea01"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "f5ab4378b3adb687415f45fe31ca572bc91ef6e58b8dd4ff68ca6c47fe1d49c3"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-x64.dmg"
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
