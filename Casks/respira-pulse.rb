cask "respira-pulse" do
  version "1.1.8"

  if Hardware::CPU.arm?
    sha256 "6e9cd8f84771a1a62d4ec47d188734c34a8ffb8b2d7f6a63c450ec60088e4017"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.8/Respira-Pulse-arm64.dmg"
  else
    sha256 "debda0f314465983e896bd2e946dec04c437482c2e2a5e96561ad39c9c12d44c"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.8/Respira-Pulse-x64.dmg"
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
