.class final Landroid/net/wifi/WifiDevice$1;
.super Ljava/lang/Object;
.source "WifiDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiDevice;
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
        "Landroid/net/wifi/WifiDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiDevice;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 120
    new-instance v0, Landroid/net/wifi/WifiDevice;

    invoke-direct {v0}, Landroid/net/wifi/WifiDevice;-><init>()V

    .line 121
    .local v0, "device":Landroid/net/wifi/WifiDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    .line 127
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiDevice;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Landroid/net/wifi/WifiDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiDevice$1;->newArray(I)[Landroid/net/wifi/WifiDevice;

    move-result-object v0

    return-object v0
.end method
