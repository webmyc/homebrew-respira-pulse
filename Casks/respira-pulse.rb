cask "respira-pulse" do
  version "1.2.0"

  if Hardware::CPU.arm?
    sha256 "67ce903267a0b3a5a5f1d902aa67ffd3ecba0648392578bc035398eb9d3134cf"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.0/Respira-Pulse-arm64.dmg"
  else
    sha256 "4f08de12a553c21ad98750712cf7bf0023ef08e89d7f68253f8a2a0d40d9425a"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.0/Respira-Pulse-x64.dmg"
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
