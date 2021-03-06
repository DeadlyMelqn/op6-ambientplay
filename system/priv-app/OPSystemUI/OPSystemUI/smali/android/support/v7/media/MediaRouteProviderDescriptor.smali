.class public final Landroid/support/v7/media/MediaRouteProviderDescriptor;
.super Ljava/lang/Object;
.source "MediaRouteProviderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
    }
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouteDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouteDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mBundle:Landroid/os/Bundle;

    .line 40
    iput-object p2, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Ljava/util/List;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "routes"    # Ljava/util/List;
    .param p3, "-this2"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouteProviderDescriptor;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method private ensureRoutes()V
    .locals 5

    .prologue
    .line 52
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    if-nez v3, :cond_1

    .line 53
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "routes"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 54
    .local v2, "routeBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    .line 64
    .end local v2    # "routeBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_1
    return-void

    .line 57
    .restart local v2    # "routeBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 60
    iget-object v4, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Landroid/support/v7/media/MediaRouteDescriptor;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteDescriptor;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 113
    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v7/media/MediaRouteProviderDescriptor;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouteDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->ensureRoutes()V

    .line 48
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->ensureRoutes()V

    .line 76
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 77
    .local v2, "routeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 78
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouteDescriptor;

    .line 79
    .local v1, "route":Landroid/support/v7/media/MediaRouteDescriptor;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteDescriptor;->isValid()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 77
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "route":Landroid/support/v7/media/MediaRouteDescriptor;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MediaRouteProviderDescriptor{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v1, "routes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->isValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
