.class public final Landroid/net/wifi/aware/ConfigRequest$Builder;
.super Ljava/lang/Object;
.source "ConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClusterHigh:I

.field private mClusterLow:I

.field private mDiscoveryWindowInterval:[I

.field private mMasterPreference:I

.field private mSupport5gBand:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    .line 217
    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    .line 218
    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    .line 219
    const v0, 0xffff

    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 220
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    .line 215
    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/aware/ConfigRequest;
    .locals 7

    .prologue
    .line 340
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    if-le v0, v1, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 342
    const-string/jumbo v1, "Invalid argument combination - must have Cluster Low <= Cluster High"

    .line 341
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    new-instance v0, Landroid/net/wifi/aware/ConfigRequest;

    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    iget v3, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    iget v4, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 346
    iget-object v5, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    .line 345
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZIII[ILandroid/net/wifi/aware/ConfigRequest;)V

    return-object v0
.end method

.method public setClusterHigh(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 2
    .param p1, "clusterHigh"    # I

    .prologue
    .line 297
    if-gez p1, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 305
    return-object p0
.end method

.method public setClusterLow(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 2
    .param p1, "clusterLow"    # I

    .prologue
    .line 272
    if-gez p1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    .line 280
    return-object p0
.end method

.method public setDiscoveryWindowInterval(II)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 2
    .param p1, "band"    # I
    .param p2, "interval"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x1

    .line 322
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid band value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    if-nez p1, :cond_2

    if-lt p2, v0, :cond_1

    if-le p2, v1, :cond_2

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 328
    const-string/jumbo v1, "Invalid interval value: 2.4 GHz [1,5] or 5GHz [0,5]"

    .line 327
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_2
    if-ne p1, v0, :cond_3

    if-ltz p2, :cond_1

    if-gt p2, v1, :cond_1

    .line 331
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    aput p2, v0, p1

    .line 332
    return-object p0
.end method

.method public setMasterPreference(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 2
    .param p1, "masterPreference"    # I

    .prologue
    const/16 v1, 0xff

    .line 245
    if-gez p1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 247
    const-string/jumbo v1, "Master Preference specification must be non-negative"

    .line 246
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_2
    if-gt p1, v1, :cond_1

    .line 254
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    .line 255
    return-object p0
.end method

.method public setSupport5gBand(Z)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 0
    .param p1, "support5gBand"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    .line 232
    return-object p0
.end method
