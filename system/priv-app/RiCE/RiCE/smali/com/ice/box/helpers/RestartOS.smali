.class public Lcom/ice/box/helpers/RestartOS;
.super Landroid/app/Activity;
.source "RestartOS.java"


# instance fields
.field tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/RestartOS;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/helpers/RestartOS;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 24
    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->isRootGranted()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "reboot"

    .line 25
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/ice/box/helpers/RestartOS;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/RestartOS;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100071

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
