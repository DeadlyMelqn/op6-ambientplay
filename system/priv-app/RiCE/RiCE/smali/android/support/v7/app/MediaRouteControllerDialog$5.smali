.class Landroid/support/v7/app/MediaRouteControllerDialog$5;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
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

    .line 423
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 426
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-boolean v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 427
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-boolean p1, p1, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/OverlayListView;->setVisibility(I)V

    .line 430
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->loadInterpolator()V

    .line 431
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    return-void
.end method
