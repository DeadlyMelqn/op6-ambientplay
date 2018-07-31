.class public Lcom/android/server/updates/LangIdInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "LangIdInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 23
    const-string/jumbo v0, "/data/misc/textclassifier/"

    .line 24
    const-string/jumbo v1, "textclassifier.langid.model"

    .line 25
    const-string/jumbo v2, "metadata/langid"

    .line 26
    const-string/jumbo v3, "version"

    .line 22
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
