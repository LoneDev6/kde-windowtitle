# Window Title Fork

Plasma 6 fork of the original applet that shows the active window title and icon.

Original upstream: [psifidotos/applet-window-title](https://github.com/psifidotos/applet-window-title)

## Requirements

- Fedora KDE Plasma 6
- Install prerequisite:
  - `sudo dnf install kf6-kpackage`
  - [Fedora package page](https://packages.fedoraproject.org/pkgs/kf6-kpackage/kf6-kpackage/)

## Install from release

Use the packaged plasmoid artifact:

```bash
curl -fLO https://github.com/LoneDev6/kde-windowtitle/releases/download/v0.7.1-3/kde-windowtitle-0.7.1-3.plasmoid
kpackagetool6 --type Plasma/Applet --install kde-windowtitle-0.7.1-3.plasmoid
```

To upgrade an existing install:

```bash
curl -fLO https://github.com/LoneDev6/kde-windowtitle/releases/download/v0.7.1-3/kde-windowtitle-0.7.1-3.plasmoid
kpackagetool6 --type Plasma/Applet --upgrade kde-windowtitle-0.7.1-3.plasmoid
```

## Add to panel

1. Right-click an existing panel and choose **Edit Panel**.
2. Click **Add Widgets**.
3. Find and add **Window Title Fork**.

For setup of Plasma widgets: [KDE widget setup documentation](https://develop.kde.org/docs/plasma/widget/setup/).

## Configuration notes

- Project-only mode: **Appearance > Label style > Title**
- To keep the panel blank when no window is maximized:
  - **Behavior > Show only on maximized windows**
  - disable **Show activity information**
  - keep **Placeholder** empty

## Source install

```bash
git clone https://github.com/LoneDev6/kde-windowtitle.git
cd kde-windowtitle
kpackagetool6 --type Plasma/Applet --install .
```

## Uninstall

```bash
kpackagetool6 --type Plasma/Applet --remove org.kde.windowtitle.Fork
```

## License

GPLv2
