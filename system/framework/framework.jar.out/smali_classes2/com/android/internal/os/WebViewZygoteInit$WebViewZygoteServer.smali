.class Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;
.super Lcom/android/internal/os/ZygoteServer;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WebViewZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewZygoteServer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 1
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method
