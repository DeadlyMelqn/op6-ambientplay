.class final Landroid/net/wifi/RttManager$ParcelableRttParams$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttParams;
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
        "Landroid/net/wifi/RttManager$ParcelableRttParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 567
    .local v1, "num":I
    new-array v2, v1, [Landroid/net/wifi/RttManager$RttParams;

    .line 568
    .local v2, "params":[Landroid/net/wifi/RttManager$RttParams;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 569
    new-instance v4, Landroid/net/wifi/RttManager$RttParams;

    invoke-direct {v4}, Landroid/net/wifi/RttManager$RttParams;-><init>()V

    aput-object v4, v2, v0

    .line 570
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    .line 571
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 572
    aget-object v7, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_1
    iput-boolean v4, v7, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    .line 573
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    .line 574
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    .line 575
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    .line 576
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    .line 577
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    .line 578
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    .line 579
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->interval:I

    .line 580
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 581
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 582
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 583
    aget-object v7, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_2
    iput-boolean v4, v7, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    .line 584
    aget-object v7, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_3
    iput-boolean v4, v7, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    .line 585
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    .line 586
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    .line 587
    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    move v4, v6

    .line 572
    goto/16 :goto_1

    :cond_1
    move v4, v6

    .line 583
    goto :goto_2

    :cond_2
    move v4, v6

    .line 584
    goto :goto_3

    .line 590
    :cond_3
    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {v3, v2}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    .line 591
    .local v3, "parcelableParams":Landroid/net/wifi/RttManager$ParcelableRttParams;
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 596
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object v0

    return-object v0
.end method
