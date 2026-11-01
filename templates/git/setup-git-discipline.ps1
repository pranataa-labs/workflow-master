# Setup Git Discipline, Conventional Commits & Husky in the current repository
# Usage: ./setup-git-discipline.ps1

Write-Host "🔧 Memasang Standar Git Discipline dan Conventional Commits..." -ForegroundColor Cyan

# 1. Setup Git Commit Template
if (Test-Path ".git") {
    $templatePath = Join-Path $PSScriptRoot "git-commit-template.txt"
    if (Test-Path $templatePath) {
        Copy-Item $templatePath -Destination ".gitmessage.txt" -Force
        git config --local commit.template .gitmessage.txt
        Write-Host "✅ Git commit template lokal berhasil dipasang (.gitmessage.txt)" -ForegroundColor Green
    }
} else {
    Write-Warning "Direktori .git tidak ditemukan. Pastikan script dijalankan di root repositori Git."
}

# 2. Setup Commitlint jika terdapat package.json
if (Test-Path "package.json") {
    Write-Host "📦 Memasang dependensi npm: commitlint & husky..." -ForegroundColor Cyan
    npm install --save-dev @commitlint/config-conventional @commitlint/cli husky lint-staged

    $commitlintConfigPath = Join-Path $PSScriptRoot "commitlint.config.js"
    if (Test-Path $commitlintConfigPath) {
        Copy-Item $commitlintConfigPath -Destination "commitlint.config.js" -Force
    }

    npx husky init
    Set-Content -Path ".husky/commit-msg" -Value "npx --no -- commitlint --edit `$1"
    Write-Host "✅ Husky & Commitlint hook berhasil diaktifkan!" -ForegroundColor Green
} else {
    Write-Host "ℹ️ Proyek non-Node.js: Git commit template lokal telah aktif untuk memandu pesan commit." -ForegroundColor Yellow
}

Write-Host "🎉 Standar Git Commit Craft berhasil dipasang!" -ForegroundColor Green
