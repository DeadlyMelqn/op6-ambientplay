.class Landroid/support/v7/app/MediaRouteControllerDialog$11;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->startGroupListFadeInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 886
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$11;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 889
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$11;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual/range {v0 .. v0}, Landroid/support/v7/app/OverlayListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 890
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$11;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->startGroupListFadeInAnimationInternal()V

    return-void
.end method