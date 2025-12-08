cask "respira-pulse" do
  version "1.1.18"

  if Hardware::CPU.arm?
    sha256 "58a8473e431019e6cec4c6bab0864dbbf10831e0ac617505c7a5f6983fdbe824"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.18/Respira-Pulse-arm64.dmg"
  else
    sha256 "63ada22ab6d7b1a354484824578a42f9d816971750f4713f86b887cb19b34e2d"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.18/Respira-Pulse-x64.dmg"
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
