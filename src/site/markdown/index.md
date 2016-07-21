## Introduction to JMRI AppleScript Support

_JMRI AppleScript Support_ is an easy way to add the
[AppleScript](https://developer.apple.com/library/mac/documentation/AppleScript/Conceptual/AppleScriptX/AppleScriptX.html)
scripting language available only on macOS to an application that supports
scripting via the Java [scripting API](http://docs.oracle.com/javase/8/docs/api/javax/script/package-summary.html).

Java versions 7 and 8 for macOS include AppleScript support, but do not
advertise it to Java applications. This JAR advertises that support to Java
applications running on macOS under Java 1.7 or 1.8.

Java version 9 is expected to drop AppleScript support entirely, so this JAR
provides no benefits on that version of Java.

## Use with JMRI

You can add AppleScript support to JMRI by entering the following command in a
_Terminal.app_ window:
    
```
bash <( curl -sSL https://rhwood.github.io/applescript/install.sh )
```

You can also [install manually](jmri.html).

## Developers

You can add AppleScript support to your Java application by bundling
[applescript-1.0.jar](https://github.com/rhwood/applescript/releases/tag/v1.0)
with your application. [Learn More](developers.html) 