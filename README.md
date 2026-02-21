# Homebrew Tap for João Pires

This repository contains Homebrew formulas for my personal tools and utilities.

## 📦 Available Formulas

| Formula | Description |
| :--- | :--- |
| **`local-gitops`** | A self-contained local Kubernetes environment with Kind, ArgoCD, and Gitea. |

## 🚀 Installation

To install these formulas, you first need to tap this repository:

```bash
brew tap joaopires/tap
```

Then you can install the specific tool:

```bash
brew install local-gitops
```

## 🛠 Usage

Once installed, you can start the environment with:

```bash
local-gitops up
```

For more details on usage and configuration, please visit the main repository: [joaopires/useful-stuff](https://github.com/joaopires/useful-stuff/tree/main/kubernetes).

## 🔄 Updates

Formulas in this tap are automatically updated when a new release is published in the main repository. To get the latest version:

```bash
brew update
brew upgrade local-gitops
```
