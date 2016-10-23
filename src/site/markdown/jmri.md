## Use with JMRI

If you use JMRI (version 4.5.2 or newer) on macOS and wish to use AppleScript
to automate activities in JMRI, you can install support either automatically or
manually.

### Automatic Installation

1. Enter the following command in a _Terminal.app_ window and press the Enter key:
    
    ```
    bash <( curl -sSL https://jmri.github.io/applescript/install.sh )
    ```

2. Start _DecoderPro_ or _PanelPro_. Verify installation was successful by selecting
the menu item __Actions->Run Script...__ (in _DecoderPro_) or
__Panels->Run Script...__ (in _PanelPro_) and seeing that __AppleScript Files__
is an option in the _File Format_ pop-up menu.

### Manual Installation

1. Download the [version 1.0](https://github.com/JMRI/applescript/releases/tag/v1.0)
of _JMRI AppleScript Support_ to the _Downloads_ folder

2. Open _Terminal.app_ and enter the following commands, pressing the Enter key
after each command (these commands assume JMRI is installed in _/Applications/JMRI_):
    
    ```
    mkdir -p ~/Library/Application\ Support/JMRI/lib
    mv ~/Downloads/applescript-1.0.jar ~/Library/Application\ Support/JMRI/lib
    cp -n /Applications/JMRI/jmri.conf ~/Library/Preferences/JMRI/jmri.conf
    open -e ~/Library/Preferences/JMRI/jmri.conf
    ```

3. Edit _jmri.conf_ to change the line ```default_options=""``` to read:

    ```
    default_options="--cp:a=${HOME}/Library/Application\ Support/JMRI/lib/applescript-1.0.jar"
    ```

    If ```default_options``` already contains other text, you can add
    ``` --cp:a=${HOME}/Library/Application\ Support/JMRI/lib/applescript-1.0.jar```
    to the existing ```default_options``` just before the closing quotation mark
    (ensure a space separates this option from the preceding option).

4. Save _jmri.conf_.

5. Start _DecoderPro_ or _PanelPro_. Verify installation was successful by selecting
the menu item __Actions->Run Script...__ (in _DecoderPro_) or
__Panels->Run Script...__ (in _PanelPro_) and seeing that __AppleScript Files__
is an option in the _File Format_ pop-up menu.

