.class final Landroid/net/wifi/aware/SubscribeConfig$1;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/SubscribeConfig;
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
        "Landroid/net/wifi/aware/SubscribeConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/SubscribeConfig;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 132
    .local v1, "serviceName":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 133
    .local v2, "ssi":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 134
    .local v3, "matchFilter":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 135
    .local v4, "subscribeType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 136
    .local v5, "ttlSec":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    .line 138
    .local v6, "enableTerminateNotification":Z
    :goto_0
    new-instance v0, Landroid/net/wifi/aware/SubscribeConfig;

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/aware/SubscribeConfig;-><init>([B[B[BIIZ)V

    return-object v0

    .line 136
    .end local v6    # "enableTerminateNotification":Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "enableTerminateNotification":Z
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/SubscribeConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/SubscribeConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/SubscribeConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 126
    new-array v0, p1, [Landroid/net/wifi/aware/SubscribeConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/SubscribeConfig$1;->newArray(I)[Landroid/net/wifi/aware/SubscribeConfig;

    move-result-object v0

    return-object v0
.end method
