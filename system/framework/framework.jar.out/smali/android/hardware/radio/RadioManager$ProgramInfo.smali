.class public Landroid/hardware/radio/RadioManager$ProgramInfo;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgramInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$ProgramInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_LIVE:I = 0x1

.field private static final FLAG_MUTED:I = 0x2

.field private static final FLAG_TRAFFIC_ANNOUNCEMENT:I = 0x8

.field private static final FLAG_TRAFFIC_PROGRAM:I = 0x4


# instance fields
.field private final mDigital:Z

.field private final mFlags:I

.field private final mMetadata:Landroid/hardware/radio/RadioMetadata;

.field private final mSelector:Landroid/hardware/radio/ProgramSelector;

.field private final mSignalStrength:I

.field private final mStereo:Z

.field private final mTuned:Z

.field private final mVendorInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1500
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo$1;-><init>()V

    .line 1499
    sput-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1333
    return-void
.end method

.method constructor <init>(Landroid/hardware/radio/ProgramSelector;ZZZILandroid/hardware/radio/RadioMetadata;ILjava/util/Map;)V
    .locals 0
    .param p1, "selector"    # Landroid/hardware/radio/ProgramSelector;
    .param p2, "tuned"    # Z
    .param p3, "stereo"    # Z
    .param p4, "digital"    # Z
    .param p5, "signalStrength"    # I
    .param p6, "metadata"    # Landroid/hardware/radio/RadioMetadata;
    .param p7, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramSelector;",
            "ZZZI",
            "Landroid/hardware/radio/RadioMetadata;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1350
    .local p8, "vendorInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1353
    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 1354
    iput-boolean p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 1355
    iput-boolean p3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 1356
    iput-boolean p4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 1357
    iput p7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    .line 1358
    iput p5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 1359
    iput-object p6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 1360
    if-nez p8, :cond_0

    new-instance p8, Ljava/util/HashMap;

    .end local p8    # "vendorInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p8, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    .line 1361
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1485
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 1486
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 1487
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 1488
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 1489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 1490
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1491
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioMetadata;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 1495
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    .line 1496
    invoke-static {p1}, Landroid/hardware/radio/RadioManager;->-wrap0(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    .line 1497
    return-void

    :cond_1
    move v0, v2

    .line 1486
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1487
    goto :goto_1

    .line 1493
    :cond_3
    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1529
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1558
    if-ne p0, p1, :cond_0

    .line 1559
    return v4

    .line 1560
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    if-nez v1, :cond_1

    .line 1561
    return v3

    :cond_1
    move-object v0, p1

    .line 1562
    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 1563
    .local v0, "other":Landroid/hardware/radio/RadioManager$ProgramInfo;
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramSelector;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    .line 1564
    :cond_2
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isTuned()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1565
    return v3

    .line 1566
    :cond_3
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isStereo()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1567
    return v3

    .line 1568
    :cond_4
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isDigital()Z

    move-result v2

    if-eq v1, v2, :cond_5

    .line 1569
    return v3

    .line 1570
    :cond_5
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    iget v2, v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    if-eq v1, v2, :cond_6

    .line 1571
    return v3

    .line 1572
    :cond_6
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSignalStrength()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 1573
    return v3

    .line 1574
    :cond_7
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v1, :cond_8

    .line 1575
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1576
    return v3

    .line 1577
    :cond_8
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/radio/RadioMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1578
    return v3

    .line 1579
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    iget-object v2, v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 1580
    :cond_a
    return v4
.end method

.method public getChannel()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1380
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    return v1

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "BroadcastRadio.manager"

    const-string/jumbo v2, "Not an AM/FM program"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/4 v1, 0x0

    return v1
.end method

.method public getMetadata()Landroid/hardware/radio/RadioMetadata;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    return-object v0
.end method

.method public getSelector()Landroid/hardware/radio/ProgramSelector;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    .line 1460
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    return v0
.end method

.method public getSubChannel()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1394
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 1395
    const/4 v2, 0x4

    .line 1394
    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 1396
    :catch_0
    move-exception v0

    .line 1398
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public getVendorInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1481
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1543
    const/16 v0, 0x1f

    .line 1544
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1545
    .local v1, "result":I
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 1546
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v5, v2

    .line 1547
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v5, v2

    .line 1548
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    if-eqz v5, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 1549
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    add-int v1, v2, v3

    .line 1550
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    add-int v1, v2, v3

    .line 1551
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v3, :cond_3

    :goto_3
    add-int v1, v2, v4

    .line 1552
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 1553
    return v1

    :cond_0
    move v2, v4

    .line 1546
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1547
    goto :goto_1

    :cond_2
    move v3, v4

    .line 1548
    goto :goto_2

    .line 1551
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v3}, Landroid/hardware/radio/RadioMetadata;->hashCode()I

    move-result v4

    goto :goto_3
.end method

.method public isDigital()Z
    .locals 1

    .prologue
    .line 1418
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    return v0
.end method

.method public isLive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1427
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMuted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1437
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStereo()Z
    .locals 1

    .prologue
    .line 1412
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    return v0
.end method

.method public isTrafficAnnouncementActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1453
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTrafficProgram()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1445
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTuned()Z
    .locals 1

    .prologue
    .line 1406
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProgramInfo [mSelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1535
    const-string/jumbo v1, ", mTuned="

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1535
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1535
    const-string/jumbo v1, ", mStereo="

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1535
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1535
    const-string/jumbo v1, ", mDigital="

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1535
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1536
    const-string/jumbo v1, ", mFlags="

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1536
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1536
    const-string/jumbo v1, ", mSignalStrength="

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1536
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1537
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 1534
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1538
    const-string/jumbo v1, "]"

    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1537
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", mMetadata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v2}, Landroid/hardware/radio/RadioMetadata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1512
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1513
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1514
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1515
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1516
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v0, :cond_3

    .line 1518
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1523
    :goto_3
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1524
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/RadioManager;->-wrap1(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 1525
    return-void

    :cond_0
    move v0, v2

    .line 1513
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1514
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1515
    goto :goto_2

    .line 1520
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1521
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3
.end method
