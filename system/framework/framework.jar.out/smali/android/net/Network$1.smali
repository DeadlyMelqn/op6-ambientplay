.class final Landroid/net/Network$1;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Network;
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
        "Landroid/net/Network;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/Network;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 404
    .local v0, "netId":I
    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Landroid/net/Network$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/Network;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 408
    new-array v0, p1, [Landroid/net/Network;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Landroid/net/Network$1;->newArray(I)[Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method
