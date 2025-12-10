cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "a60f0ec9a342abc9a380a3eeb2bb2c81f383cb4d7c2632fc61d9adaa5c5bb4b9"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "50c9b76ab93686311e2cc3b8b9377ba92200a9368a0b1ac3f94f62199c9d28a7"
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
