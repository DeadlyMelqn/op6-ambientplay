.class final Landroid/net/IpSecSpiResponse$1;
.super Ljava/lang/Object;
.source "IpSecSpiResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecSpiResponse;
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
        "Landroid/net/IpSecSpiResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecSpiResponse;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    new-instance v0, Landroid/net/IpSecSpiResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/IpSecSpiResponse;-><init>(Landroid/os/Parcel;Landroid/net/IpSecSpiResponse;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/net/IpSecSpiResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecSpiResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/IpSecSpiResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 75
    new-array v0, p1, [Landroid/net/IpSecSpiResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Landroid/net/IpSecSpiResponse$1;->newArray(I)[Landroid/net/IpSecSpiResponse;

    move-result-object v0

    return-object v0
.end method
