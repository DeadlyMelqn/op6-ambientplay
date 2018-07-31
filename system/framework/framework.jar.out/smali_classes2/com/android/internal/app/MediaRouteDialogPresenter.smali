.class public abstract Lcom/android/internal/app/MediaRouteDialogPresenter;
.super Ljava/lang/Object;
.source "MediaRouteDialogPresenter.java"


# static fields
.field private static final CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

.field private static final CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

.field private static final TAG:Ljava/lang/String; = "MediaRouter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 72
    const-string/jumbo v5, "media_router"

    .line 71
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter;

    .line 74
    .local v3, "router":Landroid/media/MediaRouter;
    invoke-static {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    const v4, 0x1030132

    .line 78
    .local v4, "theme":I
    :goto_0
    invoke-virtual {v3}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 79
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 80
    :cond_0
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    .line 81
    .local v0, "d":Lcom/android/internal/app/MediaRouteChooserDialog;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    .line 82
    invoke-virtual {v0, p2}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-object v0

    .line 76
    .end local v0    # "d":Lcom/android/internal/app/MediaRouteChooserDialog;
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v4    # "theme":I
    :cond_1
    const v4, 0x103012e

    .restart local v4    # "theme":I
    goto :goto_0

    .line 85
    .restart local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    new-instance v1, Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v1, "d":Lcom/android/internal/app/MediaRouteControllerDialog;
    return-object v1
.end method

.method public static showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v7, 0x0

    .line 44
    const-string/jumbo v5, "media_router"

    .line 43
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter;

    .line 45
    .local v4, "router":Landroid/media/MediaRouter;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 47
    .local v2, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v4}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 48
    .local v3, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 49
    :cond_0
    const-string/jumbo v5, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 50
    const-string/jumbo v5, "MediaRouter"

    const-string/jumbo v6, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-object v7

    .line 53
    :cond_1
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;-><init>()V

    .line 54
    .local v0, "f":Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    .line 55
    invoke-virtual {v0, p2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-string/jumbo v5, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 57
    return-object v0

    .line 59
    .end local v0    # "f":Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    :cond_2
    const-string/jumbo v5, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 60
    const-string/jumbo v5, "MediaRouter"

    const-string/jumbo v6, "showDialog(): Route controller dialog already showing!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v7

    .line 63
    :cond_3
    new-instance v1, Lcom/android/internal/app/MediaRouteControllerDialogFragment;

    invoke-direct {v1}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;-><init>()V

    .line 64
    .local v1, "f":Lcom/android/internal/app/MediaRouteControllerDialogFragment;
    const-string/jumbo v5, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    return-object v1
.end method
