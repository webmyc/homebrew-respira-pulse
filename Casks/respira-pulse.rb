cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "276d7639e68f4165afbf7df86ad92bc88163c0b624ddc7e8a2488551be2de6ee"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "b200596eb697c802e38cac3774c693a79a740900d44b5c2dcac5416018c27e30"
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
