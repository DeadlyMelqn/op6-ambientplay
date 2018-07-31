.class public final Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
.super Ljava/lang/Object;
.source "AdvertisingSetParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertisingSetParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private connectable:Z

.field private includeTxPower:Z

.field private interval:I

.field private isAnonymous:Z

.field private isLegacy:Z

.field private primaryPhy:I

.field private scannable:Z

.field private secondaryPhy:I

.field private txPowerLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    .line 231
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    .line 232
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    .line 233
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    .line 234
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    .line 235
    iput v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->primaryPhy:I

    .line 236
    iput v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->secondaryPhy:I

    .line 237
    const/16 v0, 0xa0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->interval:I

    .line 238
    const/4 v0, -0x7

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->txPowerLevel:I

    .line 228
    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/AdvertisingSetParameters;
    .locals 11

    .prologue
    .line 392
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    if-eqz v0, :cond_2

    .line 393
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Legacy advertising can\'t be anonymous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    if-nez v0, :cond_1

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 399
    const-string/jumbo v1, "Legacy advertisement can\'t be connectable and non-scannable"

    .line 398
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_1
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    if-eqz v0, :cond_4

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 404
    const-string/jumbo v1, "Legacy advertising can\'t include TX power level in header"

    .line 403
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_2
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    if-eqz v0, :cond_3

    .line 408
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 409
    const-string/jumbo v1, "Advertising can\'t be both connectable and scannable"

    .line 408
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_3
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    if-eqz v0, :cond_4

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 414
    const-string/jumbo v1, "Advertising can\'t be both connectable and anonymous"

    .line 413
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_4
    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters;

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    iget-boolean v2, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    iget-boolean v4, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    .line 419
    iget-boolean v5, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    iget v6, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->primaryPhy:I

    .line 420
    iget v7, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->secondaryPhy:I

    iget v8, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->interval:I

    iget v9, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->txPowerLevel:I

    .line 418
    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZIIIILandroid/bluetooth/le/AdvertisingSetParameters;)V

    return-object v0
.end method

.method public setAnonymous(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "isAnonymous"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    .line 286
    return-object p0
.end method

.method public setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "connectable"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    .line 250
    return-object p0
.end method

.method public setIncludeTxPower(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "includeTxPower"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    .line 299
    return-object p0
.end method

.method public setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "interval"    # I

    .prologue
    .line 360
    const/16 v0, 0xa0

    if-lt p1, v0, :cond_0

    const v0, 0xffffff

    if-le p1, v0, :cond_1

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->interval:I

    .line 364
    return-object p0
.end method

.method public setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "isLegacy"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    .line 273
    return-object p0
.end method

.method public setPrimaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "primaryPhy"    # I

    .prologue
    .line 315
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 316
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad primaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->primaryPhy:I

    .line 320
    return-object p0
.end method

.method public setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "scannable"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    .line 262
    return-object p0
.end method

.method public setSecondaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "secondaryPhy"    # I

    .prologue
    .line 339
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 340
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 341
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad secondaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->secondaryPhy:I

    .line 345
    return-object p0
.end method

.method public setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "txPowerLevel"    # I

    .prologue
    .line 379
    const/16 v0, -0x7f

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown txPowerLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->txPowerLevel:I

    .line 384
    return-object p0
.end method
