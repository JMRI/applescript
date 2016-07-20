## Introduction to JMRI AppleScript Support

_JMRI AppleScript Support_ is an easy way to add the
[AppleScript](https://developer.apple.com/library/mac/documentation/AppleScript/Conceptual/AppleScriptX/AppleScriptX.html)
scripting language available on macOS to an application that supports scripting
via the Java [scripting API](http://docs.oracle.com/javase/8/docs/api/javax/script/package-summary.html).

Java versions 7 and 8 for macOS include AppleScript support, but do not
advertise it to Java applications. This JAR advertises that support to Java
applications running on macOS under Java 1.7 or 1.8.

Java version 9 drops AppleScript support entirely, so this JAR provides no
benefits on that version of Java.