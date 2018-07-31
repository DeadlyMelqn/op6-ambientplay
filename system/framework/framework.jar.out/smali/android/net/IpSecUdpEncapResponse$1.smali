.class final Landroid/net/IpSecUdpEncapResponse$1;
.super Ljava/lang/Object;
.source "IpSecUdpEncapResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecUdpEncapResponse;
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
        "Landroid/net/IpSecUdpEncapResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecUdpEncapResponse;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 89
    new-instance v0, Landroid/net/IpSecUdpEncapResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/IpSecUdpEncapResponse;-><init>(Landroid/os/Parcel;Landroid/net/IpSecUdpEncapResponse;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/net/IpSecUdpEncapResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/IpSecUdpEncapResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 93
    new-array v0, p1, [Landroid/net/IpSecUdpEncapResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/net/IpSecUdpEncapResponse$1;->newArray(I)[Landroid/net/IpSecUdpEncapResponse;

    move-result-object v0

    return-object v0
.end method
