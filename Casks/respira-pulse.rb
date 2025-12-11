cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "81d57a28d6d94b9bf70a5271dacabf6d68d586a006e9ffe633595551ce3114b8"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "9bf068a2f8dd15eeab7a4891a4a3b6772c63f1621cdfc50a08b602f2eb0b18a9"
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
