.class public Lcom/ice/box/helpers/RestartSystemUI;
.super Landroid/app/Activity;
.source "RestartSystemUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 8
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 9
    new-instance p1, Lcom/ice/box/helpers/RestartSystemUI$1;

    invoke-direct {p1, p0}, Lcom/ice/box/helpers/RestartSystemUI$1;-><init>(Lcom/ice/box/helpers/RestartSystemUI;)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/helpers/RestartSystemUI$1;->start()V

    return-void
.end method
