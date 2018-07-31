.class public Landroid/support/v7/media/MediaRouter$RouteGroup;
.super Landroid/support/v7/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteGroup"
.end annotation


# instance fields
.field private mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "descriptorId"    # Ljava/lang/String;
    .param p3, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 1585
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouter$RouteInfo;-><init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    .line 1586
    return-void
.end method


# virtual methods
.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1611
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    return-object v0
.end method

.method maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I
    .locals 9
    .param p1, "descriptor"    # Landroid/support/v7/media/MediaRouteDescriptor;

    .prologue
    .line 1629
    const/4 v0, 0x0

    .line 1630
    .local v0, "changed":Z
    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    if-eq v7, p1, :cond_3

    .line 1631
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 1632
    if-eqz p1, :cond_3

    .line 1633
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v4

    .line 1634
    .local v4, "groupMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1635
    .local v5, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_1

    const/4 v0, 0x1

    .line 1636
    :goto_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "groupMemberId$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1637
    .local v2, "groupMemberId":Ljava/lang/String;
    sget-object v7, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$RouteGroup;->getProvider()Landroid/support/v7/media/MediaRouter$ProviderInfo;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->-wrap0(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1638
    .local v6, "uniqueId":Ljava/lang/String;
    sget-object v7, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v7, v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getRoute(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 1639
    .local v1, "groupMember":Landroid/support/v7/media/MediaRouter$RouteInfo;
    if-eqz v1, :cond_0

    .line 1640
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1641
    if-nez v0, :cond_0

    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 1642
    const/4 v0, 0x1

    goto :goto_1

    .line 1635
    .end local v1    # "groupMember":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v2    # "groupMemberId":Ljava/lang/String;
    .end local v3    # "groupMemberId$iterator":Ljava/util/Iterator;
    .end local v6    # "uniqueId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1646
    .restart local v3    # "groupMemberId$iterator":Ljava/util/Iterator;
    :cond_2
    if-eqz v0, :cond_3

    .line 1647
    iput-object v5, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    .line 1651
    .end local v3    # "groupMemberId$iterator":Ljava/util/Iterator;
    .end local v4    # "groupMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    :cond_3
    if-eqz v0, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->updateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v8

    or-int/2addr v7, v8

    return v7

    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1617
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1618
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1619
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1620
    if-lez v1, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    :cond_0
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1623
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1624
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
