.class final Landroid/net/wifi/WifiScanner$PnoSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$PnoSettings;
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
        "Landroid/net/wifi/WifiScanner$PnoSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$PnoSettings;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    .line 635
    new-instance v3, Landroid/net/wifi/WifiScanner$PnoSettings;

    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 636
    .local v3, "settings":Landroid/net/wifi/WifiScanner$PnoSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v5, :cond_0

    :goto_0
    iput-boolean v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 645
    .local v2, "numNetworks":I
    new-array v5, v2, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 646
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, "ssid":Ljava/lang/String;
    new-instance v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-direct {v1, v4}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, "network":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    iput-byte v5, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    iput-byte v5, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 651
    iget-object v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aput-object v1, v5, v0

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 636
    .end local v0    # "i":I
    .end local v1    # "network":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    .end local v2    # "numNetworks":I
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 653
    .restart local v0    # "i":I
    .restart local v2    # "numNetworks":I
    :cond_1
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$PnoSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$PnoSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$PnoSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 657
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$PnoSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$PnoSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$PnoSettings;

    move-result-object v0

    return-object v0
.end method
