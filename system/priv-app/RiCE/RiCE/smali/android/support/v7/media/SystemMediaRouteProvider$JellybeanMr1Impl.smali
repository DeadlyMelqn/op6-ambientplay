.class Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;
.super Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr1Impl"
.end annotation


# instance fields
.field private mActiveScanWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

.field private mIsConnectingWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)V
    .locals 0

    .line 739
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;-><init>(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)V

    return-void
.end method


# virtual methods
.method protected createCallbackObj()Ljava/lang/Object;
    .locals 0

    .line 795
    invoke-static/range {p0 .. p0}, Landroid/support/v7/media/MediaRouterJellybeanMr1;->createCallback(Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected isConnecting(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)Z
    .locals 1

    .line 799
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mIsConnectingWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    invoke-direct/range {v0 .. v0}, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mIsConnectingWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    .line 802
    :cond_0
    iget-object p0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mIsConnectingWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    iget-object p1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;->isConnecting(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V
    .locals 1

    .line 765
    invoke-super/range {p0 .. p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V

    .line 767
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static/range {v0 .. v0}, Landroid/support/v7/media/MediaRouterJellybeanMr1$RouteInfo;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 768
    invoke-virtual {p2, v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setEnabled(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 771
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->isConnecting(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 772
    invoke-virtual {p2, p0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setConnecting(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 775
    :cond_1
    iget-object p0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 776
    invoke-static/range {p0 .. p0}, Landroid/support/v7/media/MediaRouterJellybeanMr1$RouteInfo;->getPresentationDisplay(Ljava/lang/Object;)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPresentationDisplayId(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    :cond_2
    return-void
.end method

.method public onRoutePresentationDisplayChanged(Ljava/lang/Object;)V
    .locals 3

    .line 744
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 746
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 748
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouterJellybeanMr1$RouteInfo;->getPresentationDisplay(Ljava/lang/Object;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 751
    :goto_0
    iget-object v1, v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 752
    invoke-virtual/range {v1 .. v1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 753
    new-instance v1, Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    iget-object v2, v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-direct {v1, v2}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;-><init>(Landroid/support/v7/media/MediaRouteDescriptor;)V

    .line 755
    invoke-virtual {v1, p1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPresentationDisplayId(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object p1

    .line 756
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteDescriptor;

    move-result-object p1

    iput-object p1, v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 757
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->publishRoutes()V

    :cond_1
    return-void
.end method

.method protected updateCallback()V
    .locals 3

    .line 784
    invoke-super/range {p0 .. p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateCallback()V

    .line 786
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScanWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    .line 788
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScanWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    .line 790
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScanWorkaround:Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    iget-boolean v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScan:Z

    if-eqz v1, :cond_1

    iget p0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mRouteTypes:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->setActiveScanRouteTypes(I)V

    return-void
.end method
