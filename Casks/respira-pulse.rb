cask "respira-pulse" do
  version "0.1.0-dev.104"

  if Hardware::CPU.arm?
    sha256 "7c4a24654523a1d9fb298beb17179fd180c1f4097d09a40d8327d4b08d600889"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.104/Respira-Pulse-arm64.dmg"
  else
    sha256 "8068cfd249b049a539d21f5979cfdf2a5a043b6cf78650405e0d5ab41c99f829"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.104/Respira-Pulse-x64.dmg"
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
