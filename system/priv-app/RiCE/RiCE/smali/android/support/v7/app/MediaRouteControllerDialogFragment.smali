.class public Landroid/support/v7/app/MediaRouteControllerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "MediaRouteControllerDialogFragment.java"


# instance fields
.field private mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 71
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    if-eqz p1, :cond_0

    .line 73
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayout()V

    :cond_0
    return-void
.end method

.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteControllerDialog;
    .locals 0

    .line 52
    new-instance p0, Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteControllerDialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    .line 58
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    return-object p0
.end method

.method public onStop()V
    .locals 1

    .line 63
    invoke-super/range {p0 .. p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 64
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    if-eqz v0, :cond_0

    .line 65
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->clearGroupListAnimation(Z)V

    :cond_0
    return-void
.end method
