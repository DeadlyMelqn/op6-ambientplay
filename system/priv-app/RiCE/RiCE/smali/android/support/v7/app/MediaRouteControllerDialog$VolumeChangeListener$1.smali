.class Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;)V
    .locals 0

    .line 1230
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener$1;->this$1:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1233
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener$1;->this$1:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener$1;->this$1:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1235
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener$1;->this$1:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-boolean v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mHasPendingUpdate:Z

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener$1;->this$1:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener$1;->this$1:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    iget-object p0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-boolean p0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    invoke-virtual {v0, p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->update(Z)V

    :cond_0
    return-void
.end method
