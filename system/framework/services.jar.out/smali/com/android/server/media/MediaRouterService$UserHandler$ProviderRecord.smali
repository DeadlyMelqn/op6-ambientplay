.class final Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$UserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProviderRecord"
.end annotation


# instance fields
.field private mDescriptor:Landroid/media/RemoteDisplayState;

.field private final mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniquePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .prologue
    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 1200
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    .line 1202
    return-void
.end method

.method private assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "descriptorId"    # Ljava/lang/String;

    .prologue
    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findRouteByDescriptorId(Ljava/lang/String;)I
    .locals 4
    .param p1, "descriptorId"    # Ljava/lang/String;

    .prologue
    .line 1283
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1284
    .local v2, "routeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1285
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1286
    .local v1, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1287
    return v0

    .line 1284
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1290
    .end local v1    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method public appendClientState(Landroid/media/MediaRouterClientState;)V
    .locals 4
    .param p1, "state"    # Landroid/media/MediaRouterClientState;

    .prologue
    .line 1265
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1266
    .local v1, "routeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1267
    iget-object v3, p1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getInfo()Landroid/media/MediaRouterClientState$RouteInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1269
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1297
    .local v1, "indent":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1299
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1300
    .local v2, "routeCount":I
    if-eqz v2, :cond_0

    .line 1301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1302
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1305
    .end local v0    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "<no routes>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    :cond_1
    return-void
.end method

.method public findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .locals 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 1272
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1273
    .local v2, "routeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1274
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1275
    .local v1, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1276
    return-object v1

    .line 1273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1279
    .end local v1    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    return-object v0
.end method

.method public getUniquePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDescriptor(Landroid/media/RemoteDisplayState;)Z
    .locals 14
    .param p1, "descriptor"    # Landroid/media/RemoteDisplayState;

    .prologue
    .line 1213
    const/4 v0, 0x0

    .line 1214
    .local v0, "changed":Z
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    if-eq v11, p1, :cond_4

    .line 1215
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    .line 1219
    const/4 v8, 0x0

    .line 1220
    .local v8, "targetIndex":I
    if-eqz p1, :cond_3

    .line 1221
    invoke-virtual {p1}, Landroid/media/RemoteDisplayState;->isValid()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1222
    iget-object v6, p1, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    .line 1223
    .local v6, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1224
    .local v4, "routeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v9, v8

    .end local v0    # "changed":Z
    .end local v8    # "targetIndex":I
    .local v9, "targetIndex":I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 1226
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1227
    .local v5, "routeDescriptor":Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    iget-object v1, v5, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    .line 1228
    .local v1, "descriptorId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v7

    .line 1229
    .local v7, "sourceIndex":I
    if-gez v7, :cond_0

    .line 1231
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1233
    .local v10, "uniqueId":Ljava/lang/String;
    new-instance v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-direct {v3, p0, v1, v10}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;-><init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    .local v3, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    invoke-virtual {v11, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1235
    invoke-virtual {v3, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 1236
    const/4 v0, 0x1

    .line 1224
    .end local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .end local v10    # "uniqueId":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v9, v8

    .end local v8    # "targetIndex":I
    .restart local v9    # "targetIndex":I
    goto :goto_0

    .line 1237
    :cond_0
    if-ge v7, v9, :cond_1

    .line 1239
    const-string/jumbo v11, "MediaRouterService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    goto :goto_1

    .line 1243
    .end local v8    # "targetIndex":I
    .restart local v9    # "targetIndex":I
    :cond_1
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1244
    .restart local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    invoke-static {v11, v7, v9}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1245
    invoke-virtual {v3, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    move-result v11

    or-int/2addr v0, v11

    .local v0, "changed":Z
    goto :goto_1

    .line 1249
    .end local v1    # "descriptorId":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .end local v4    # "routeCount":I
    .end local v5    # "routeDescriptor":Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    .end local v6    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    .end local v7    # "sourceIndex":I
    .local v0, "changed":Z
    :cond_2
    const-string/jumbo v11, "MediaRouterService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Ignoring invalid descriptor from media route provider: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1250
    iget-object v13, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v13}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v13

    .line 1249
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    .end local v0    # "changed":Z
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .restart local v2    # "i":I
    :goto_3
    if-lt v2, v8, :cond_4

    .line 1256
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1257
    .restart local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 1258
    const/4 v0, 0x1

    .line 1255
    .restart local v0    # "changed":Z
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1261
    .end local v0    # "changed":Z
    .end local v2    # "i":I
    .end local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .end local v8    # "targetIndex":I
    :cond_4
    return v0

    .restart local v2    # "i":I
    .restart local v4    # "routeCount":I
    .restart local v6    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    .restart local v9    # "targetIndex":I
    :cond_5
    move v8, v9

    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    goto :goto_2
.end method