.class public Landroid/support/v7/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouter$RouteInfo$ConnectionState;,
        Landroid/support/v7/media/MediaRouter$RouteInfo$PlaybackType;,
        Landroid/support/v7/media/MediaRouter$RouteInfo$PlaybackVolume;
    }
.end annotation


# instance fields
.field private mCanDisconnect:Z

.field private mConnecting:Z

.field private mConnectionState:I

.field private final mControlFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

.field private final mDescriptorId:Ljava/lang/String;

.field private mDeviceType:I

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mIconUri:Landroid/net/Uri;

.field private mName:Ljava/lang/String;

.field private mPlaybackStream:I

.field private mPlaybackType:I

.field private mPresentationDisplay:Landroid/view/Display;

.field private mPresentationDisplayId:I

.field private final mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

.field private mSettingsIntent:Landroid/content/IntentSender;

.field private final mUniqueId:Ljava/lang/String;

.field private mVolume:I

.field private mVolumeHandling:I

.field private mVolumeMax:I


# direct methods
.method static synthetic -get0(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p0, "-this"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method static synthetic -get2(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "descriptorId"    # Ljava/lang/String;
    .param p3, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    .line 815
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 945
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 946
    iput-object p2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 947
    iput-object p3, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 948
    return-void
.end method

.method private static isSystemMediaRouteProvider(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 2
    .param p0, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 1307
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1308
    const-string/jumbo v1, "android"

    .line 1307
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public canDisconnect()Z
    .locals 1

    .prologue
    .line 1350
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    return v0
.end method

.method public getConnectionState()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnectionState:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 997
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method getDescriptorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 1278
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDeviceType:I

    return v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 969
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackStream()I
    .locals 1

    .prologue
    .line 1268
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    .prologue
    .line 1259
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    return v0
.end method

.method public getPresentationDisplayId()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1427
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    return v0
.end method

.method public getProvider()Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    return-object v0
.end method

.method public getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1572
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 1329
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    return v0
.end method

.method public getVolumeHandling()I
    .locals 1

    .prologue
    .line 1319
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return v0
.end method

.method public getVolumeMax()I
    .locals 1

    .prologue
    .line 1339
    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 1028
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 1062
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1063
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultOrBluetooth()Z
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1287
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDeviceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1288
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1292
    :cond_1
    invoke-static {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSystemMediaRouteProvider(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1293
    const-string/jumbo v0, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    .line 1292
    if-eqz v0, :cond_2

    .line 1294
    const-string/jumbo v0, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1292
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1018
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method isSelectable()Z
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 1050
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1051
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z
    .locals 2
    .param p1, "selector"    # Landroid/support/v7/media/MediaRouteSelector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1115
    if-nez p1, :cond_0

    .line 1116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1119
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouteSelector;->matchesControlFilters(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I
    .locals 2
    .param p1, "descriptor"    # Landroid/support/v7/media/MediaRouteDescriptor;

    .prologue
    .line 1480
    const/4 v0, 0x0

    .line 1481
    .local v0, "changes":I
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    if-eq v1, p1, :cond_0

    .line 1482
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->updateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v0

    .line 1484
    :cond_0
    return v0
.end method

.method public requestSetVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 1363
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1364
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->requestSetVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 1365
    return-void
.end method

.method public requestUpdateVolume(I)V
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 1377
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1378
    if-eqz p1, :cond_0

    .line 1379
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->requestUpdateVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 1381
    :cond_0
    return-void
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1452
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1453
    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 1454
    return-void
.end method

.method public supportsControlCategory(Ljava/lang/String;)Z
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1141
    if-nez p1, :cond_0

    .line 1142
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "category must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1144
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1146
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1147
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1148
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1149
    const/4 v2, 0x1

    return v2

    .line 1147
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaRouter.RouteInfo{ uniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1459
    const-string/jumbo v1, ", name="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1459
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1460
    const-string/jumbo v1, ", description="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1460
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1461
    const-string/jumbo v1, ", iconUri="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1461
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1462
    const-string/jumbo v1, ", enabled="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1462
    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1463
    const-string/jumbo v1, ", connecting="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1463
    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1464
    const-string/jumbo v1, ", connectionState="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1464
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnectionState:I

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1465
    const-string/jumbo v1, ", canDisconnect="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1465
    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1466
    const-string/jumbo v1, ", playbackType="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1466
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1467
    const-string/jumbo v1, ", playbackStream="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1467
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1468
    const-string/jumbo v1, ", deviceType="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1468
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1469
    const-string/jumbo v1, ", volumeHandling="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1469
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1470
    const-string/jumbo v1, ", volume="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1470
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1471
    const-string/jumbo v1, ", volumeMax="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1471
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1472
    const-string/jumbo v1, ", presentationDisplayId="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1472
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1473
    const-string/jumbo v1, ", extras="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1473
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1474
    const-string/jumbo v1, ", settingsIntent="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1474
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1475
    const-string/jumbo v1, ", providerPackageName="

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1475
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1476
    const-string/jumbo v1, " }"

    .line 1458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I
    .locals 4
    .param p1, "descriptor"    # Landroid/support/v7/media/MediaRouteDescriptor;

    .prologue
    const/4 v3, 0x0

    .line 1488
    const/4 v0, 0x0

    .line 1489
    .local v0, "changes":I
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 1490
    if-eqz p1, :cond_10

    .line 1491
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1492
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 1493
    const/4 v0, 0x1

    .line 1495
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1496
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    .line 1497
    or-int/lit8 v0, v0, 0x1

    .line 1499
    :cond_1
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1500
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    .line 1501
    or-int/lit8 v0, v0, 0x1

    .line 1503
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1504
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 1505
    or-int/lit8 v0, v0, 0x1

    .line 1507
    :cond_3
    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isConnecting()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1508
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isConnecting()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    .line 1509
    or-int/lit8 v0, v0, 0x1

    .line 1511
    :cond_4
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnectionState:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getConnectionState()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 1512
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getConnectionState()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnectionState:I

    .line 1513
    or-int/lit8 v0, v0, 0x1

    .line 1515
    :cond_5
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1516
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1517
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1518
    or-int/lit8 v0, v0, 0x1

    .line 1520
    :cond_6
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 1521
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1522
    or-int/lit8 v0, v0, 0x1

    .line 1524
    :cond_7
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 1525
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 1526
    or-int/lit8 v0, v0, 0x1

    .line 1528
    :cond_8
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDeviceType:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getDeviceType()I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 1529
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getDeviceType()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 1530
    or-int/lit8 v0, v0, 0x1

    .line 1532
    :cond_9
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v2

    if-eq v1, v2, :cond_a

    .line 1533
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1534
    or-int/lit8 v0, v0, 0x3

    .line 1536
    :cond_a
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolume()I

    move-result v2

    if-eq v1, v2, :cond_b

    .line 1537
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolume()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    .line 1538
    or-int/lit8 v0, v0, 0x3

    .line 1540
    :cond_b
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 1541
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 1542
    or-int/lit8 v0, v0, 0x3

    .line 1544
    :cond_c
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v2

    if-eq v1, v2, :cond_d

    .line 1545
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 1546
    iput-object v3, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 1547
    or-int/lit8 v0, v0, 0x5

    .line 1549
    :cond_d
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1550
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    .line 1551
    or-int/lit8 v0, v0, 0x1

    .line 1553
    :cond_e
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getSettingsActivity()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1554
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getSettingsActivity()Landroid/content/IntentSender;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    .line 1555
    or-int/lit8 v0, v0, 0x1

    .line 1557
    :cond_f
    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->canDisconnectAndKeepPlaying()Z

    move-result v2

    if-eq v1, v2, :cond_10

    .line 1558
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->canDisconnectAndKeepPlaying()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    .line 1559
    or-int/lit8 v0, v0, 0x5

    .line 1562
    :cond_10
    return v0
.end method
