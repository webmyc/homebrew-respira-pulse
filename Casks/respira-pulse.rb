cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "6e40c579d570ccee509fd896c75dcd501c8f827d52e22ebe8c36ef4968d14fbb"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "a35300c63a427faa4223fb54eb34339b20ab74da3e0daf271c688a44cb3f641e"
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
