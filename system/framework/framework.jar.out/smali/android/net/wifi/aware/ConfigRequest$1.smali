.class final Landroid/net/wifi/aware/ConfigRequest$1;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/ConfigRequest;
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
        "Landroid/net/wifi/aware/ConfigRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ConfigRequest;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 124
    .local v1, "support5gBand":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "masterPreference":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .local v3, "clusterLow":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .local v4, "clusterHigh":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 129
    .local v5, "discoveryWindowInterval":[I
    new-instance v0, Landroid/net/wifi/aware/ConfigRequest;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZIII[ILandroid/net/wifi/aware/ConfigRequest;)V

    return-object v0

    .line 123
    .end local v1    # "support5gBand":Z
    .end local v2    # "masterPreference":I
    .end local v3    # "clusterLow":I
    .end local v4    # "clusterHigh":I
    .end local v5    # "discoveryWindowInterval":[I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "support5gBand":Z
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ConfigRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/ConfigRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 118
    new-array v0, p1, [Landroid/net/wifi/aware/ConfigRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ConfigRequest$1;->newArray(I)[Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v0

    return-object v0
.end method
