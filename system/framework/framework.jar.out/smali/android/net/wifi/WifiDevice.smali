.class public Landroid/net/wifi/WifiDevice;
.super Ljava/lang/Object;
.source "WifiDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiDevice$1;
    }
.end annotation


# static fields
.field public static final BLACKLISTED:I = 0x2

.field public static final CONNECTED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISCONNECTED:I


# instance fields
.field public connectedTime:J

.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public deviceState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Landroid/net/wifi/WifiDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiDevice$1;-><init>()V

    .line 117
    sput-object v0, Landroid/net/wifi/WifiDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "isConnected"    # Z

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    .line 53
    iput v2, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    .line 77
    if-eqz p2, :cond_0

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    .line 83
    :goto_0
    iput-object p1, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    .line 84
    return-void

    .line 80
    :cond_0
    iput v2, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 88
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/net/wifi/WifiDevice;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    return v1

    :cond_1
    move-object v0, p1

    .line 92
    check-cast v0, Landroid/net/wifi/WifiDevice;

    .line 94
    .local v0, "other":Landroid/net/wifi/WifiDevice;
    iget-object v2, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 95
    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 97
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-wide v0, p0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    return-void
.end method
