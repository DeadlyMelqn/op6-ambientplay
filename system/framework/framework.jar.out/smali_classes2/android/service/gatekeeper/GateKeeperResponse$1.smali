.class final Landroid/service/gatekeeper/GateKeeperResponse$1;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/GateKeeperResponse;
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
        "Landroid/service/gatekeeper/GateKeeperResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, "responseCode":I
    if-ne v2, v6, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Landroid/service/gatekeeper/GateKeeperResponse;->-wrap0(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .line 89
    .local v1, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_0
    return-object v1

    .line 77
    .end local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    if-nez v2, :cond_3

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v6, :cond_2

    const/4 v3, 0x1

    .line 79
    .local v3, "shouldReEnroll":Z
    :goto_1
    const/4 v0, 0x0

    .line 80
    .local v0, "payload":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    .local v4, "size":I
    if-lez v4, :cond_1

    .line 82
    new-array v0, v4, [B

    .line 83
    .local v0, "payload":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 85
    .end local v0    # "payload":[B
    :cond_1
    invoke-static {v0, v3}, Landroid/service/gatekeeper/GateKeeperResponse;->createOkResponse([BZ)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .restart local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_0

    .line 78
    .end local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "shouldReEnroll":Z
    .end local v4    # "size":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "shouldReEnroll":Z
    goto :goto_1

    .line 87
    .end local v3    # "shouldReEnroll":Z
    :cond_3
    invoke-static {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->createGenericResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .restart local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 94
    new-array v0, p1, [Landroid/service/gatekeeper/GateKeeperResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse$1;->newArray(I)[Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method
