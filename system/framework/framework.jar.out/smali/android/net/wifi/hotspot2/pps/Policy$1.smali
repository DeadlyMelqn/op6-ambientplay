.class final Landroid/net/wifi/hotspot2/pps/Policy$1;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/hotspot2/pps/Policy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private readProtoPortMap(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 508
    .local v3, "size":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 509
    const/4 v5, 0x0

    return-object v5

    .line 511
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 512
    .local v2, "protoPortMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 514
    .local v1, "key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    .end local v1    # "key":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private readRoamingPartnerList(Landroid/os/Parcel;)Ljava/util/List;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 528
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 529
    return-object v4

    .line 531
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v1, "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 533
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    :cond_1
    return-object v1
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 482
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>()V

    .line 483
    .local v0, "policy":Landroid/net/wifi/hotspot2/pps/Policy;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeDownlinkBandwidth(J)V

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeUplinkBandwidth(J)V

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingDownlinkBandwidth(J)V

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingUplinkBandwidth(J)V

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setExcludedSsidList([Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$1;->readProtoPortMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setRequiredProtoPortMap(Ljava/util/Map;)V

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setMaximumBssLoadValue(I)V

    .line 490
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$1;->readRoamingPartnerList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setPreferredRoamingPartnerList(Ljava/util/List;)V

    .line 491
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;->setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 492
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 497
    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/Policy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object v0

    return-object v0
.end method
