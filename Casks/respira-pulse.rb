cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "47842a3cd226a624c7c25b860d7ebe532a6a546046f4f63be6fa2e631f917b20"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "04573c7b7bc9aa706a48d8aab16ff848b38681b7bc43bc8d8fb167dbb68635de"
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
