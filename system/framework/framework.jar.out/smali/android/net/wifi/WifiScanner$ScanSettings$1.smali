.class final Landroid/net/wifi/WifiScanner$ScanSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanSettings;
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
        "Landroid/net/wifi/WifiScanner$ScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 266
    new-instance v4, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v4}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 267
    .local v4, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v8, :cond_0

    move v7, v8

    :goto_0
    iput-boolean v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .local v3, "num_channels":I
    new-array v7, v3, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .local v0, "frequency":I
    new-instance v5, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v5, v0}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 280
    .local v5, "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v5, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_2
    iput-boolean v7, v5, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    .line 282
    iget-object v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v5, v7, v1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "frequency":I
    .end local v1    # "i":I
    .end local v3    # "num_channels":I
    .end local v5    # "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    move v7, v9

    .line 274
    goto :goto_0

    .restart local v0    # "frequency":I
    .restart local v1    # "i":I
    .restart local v3    # "num_channels":I
    .restart local v5    # "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_1
    move v7, v9

    .line 281
    goto :goto_2

    .line 284
    .end local v0    # "frequency":I
    .end local v5    # "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .local v2, "numNetworks":I
    new-array v7, v2, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iput-object v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 286
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "ssid":Ljava/lang/String;
    iget-object v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    new-instance v8, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-direct {v8, v6}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 290
    .end local v6    # "ssid":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 294
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ScanSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v0

    return-object v0
.end method
