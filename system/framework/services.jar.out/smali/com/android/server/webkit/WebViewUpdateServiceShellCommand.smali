.class Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "WebViewUpdateServiceShellCommand.java"


# instance fields
.field final mInterface:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method constructor <init>(Landroid/webkit/IWebViewUpdateService;)V
    .locals 0
    .param p1, "service"    # Landroid/webkit/IWebViewUpdateService;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    .line 29
    return-void
.end method

.method private enableFallbackLogic(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 61
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v1, p1}, Landroid/webkit/IWebViewUpdateService;->enableFallbackLogic(Z)V

    .line 62
    const-string/jumbo v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x0

    return v1
.end method

.method private enableMultiProcess(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 83
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v1, p1}, Landroid/webkit/IWebViewUpdateService;->enableMultiProcess(Z)V

    .line 84
    const-string/jumbo v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    return v1
.end method

.method private setWebViewImplementation()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 68
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "shellChosenPackage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v3, v2}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "newPackage":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const-string/jumbo v3, "Success"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    return v5

    .line 75
    :cond_0
    const-string/jumbo v3, "Failed to switch to %s, the WebView implementation is now provided by %s."

    .line 74
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 76
    aput-object v2, v4, v5

    aput-object v0, v4, v6

    .line 74
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    return v6
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 39
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "enable-redundant-packages"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableFallbackLogic(Z)I

    move-result v2

    return v2

    .line 39
    :cond_1
    const-string/jumbo v2, "disable-redundant-packages"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableFallbackLogic(Z)I

    move-result v2

    return v2

    .line 39
    :cond_2
    const-string/jumbo v2, "set-webview-implementation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->setWebViewImplementation()I

    move-result v2

    return v2

    .line 39
    :cond_3
    const-string/jumbo v2, "enable-multiprocess"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableMultiProcess(Z)I

    move-result v2

    return v2

    .line 39
    :cond_4
    const-string/jumbo v2, "disable-multiprocess"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 49
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableMultiProcess(Z)I

    move-result v2

    return v2

    .line 51
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const/4 v2, -0x1

    return v2
.end method

.method public onHelp()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 91
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "WebView updater commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "  enable-redundant-packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "    Allow a fallback package to be installed and enabled even when a"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "    more-preferred package is available. This command is useful when testing"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "    fallback packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "  disable-redundant-packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "    Disallow installing and enabling fallback packages when a more-preferred"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "    package is available."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "  set-webview-implementation PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "    Set the WebView implementation to the specified package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "  enable-multiprocess"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "    Enable multi-process mode for WebView"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "  disable-multiprocess"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "    Disable multi-process mode for WebView"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 109
    return-void
.end method
