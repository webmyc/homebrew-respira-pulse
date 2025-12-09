cask "respira-pulse" do
  version "0.1.0-dev.76"

  if Hardware::CPU.arm?
    sha256 "acc0547d1d30a6cc3ce073d61168de3b419adf7990f6695c320e973544e64e4f"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.76/Respira-Pulse-arm64.dmg"
  else
    sha256 "18090339fb6f41d3545b7a1c938068ded8681024db50da216cc2d6dd768ce9e8"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.76/Respira-Pulse-x64.dmg"
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
