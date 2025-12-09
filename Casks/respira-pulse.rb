cask "respira-pulse" do
  version "1.2.1"

  if Hardware::CPU.arm?
    sha256 "fd0046578b012ca0366d67abd01843b285ff9e0ea322cce65e3a98537872fcb2"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.1/Respira-Pulse-arm64.dmg"
  else
    sha256 "ab7cab8374b5a3b14429457639dbbf6038986d2f109225c4aed56d7ad35c65e8"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.1/Respira-Pulse-x64.dmg"
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
