.class public final Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiAwareNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_SPECIFIER_TYPE_IB:I = 0x0

.field public static final NETWORK_SPECIFIER_TYPE_IB_ANY_PEER:I = 0x1

.field public static final NETWORK_SPECIFIER_TYPE_MAX_VALID:I = 0x3

.field public static final NETWORK_SPECIFIER_TYPE_OOB:I = 0x2

.field public static final NETWORK_SPECIFIER_TYPE_OOB_ANY_PEER:I = 0x3


# instance fields
.field public final clientId:I

.field public final passphrase:Ljava/lang/String;

.field public final peerId:I

.field public final peerMac:[B

.field public final pmk:[B

.field public final requestorUid:I

.field public final role:I

.field public final sessionId:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;-><init>()V

    .line 142
    sput-object v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>(IIIII[B[BLjava/lang/String;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "role"    # I
    .param p3, "clientId"    # I
    .param p4, "sessionId"    # I
    .param p5, "peerId"    # I
    .param p6, "peerMac"    # [B
    .param p7, "pmk"    # [B
    .param p8, "passphrase"    # Ljava/lang/String;
    .param p9, "requestorUid"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 131
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 132
    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 133
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 134
    iput p4, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 135
    iput p5, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 136
    iput-object p6, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 137
    iput-object p7, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 138
    iput-object p8, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 139
    iput p9, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    .line 140
    return-void
.end method


# virtual methods
.method public assertValidFromUid(I)V
    .locals 2
    .param p1, "requestorUid"    # I

    .prologue
    .line 267
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    if-eq v0, p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "mismatched UIDs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    if-ne p0, p1, :cond_0

    .line 224
    return v1

    .line 227
    :cond_0
    instance-of v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-nez v3, :cond_1

    .line 228
    return v2

    :cond_1
    move-object v0, p1

    .line 231
    check-cast v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 233
    .local v0, "lhs":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-ne v3, v4, :cond_3

    .line 234
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-ne v3, v4, :cond_3

    .line 235
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    if-ne v3, v4, :cond_3

    .line 236
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    if-ne v3, v4, :cond_3

    .line 237
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    if-ne v3, v4, :cond_3

    .line 238
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    iget-object v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 233
    if-eqz v3, :cond_3

    .line 239
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iget-object v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 233
    if-eqz v3, :cond_3

    .line 240
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 233
    if-eqz v3, :cond_3

    .line 241
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    if-ne v3, v4, :cond_2

    .line 233
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 241
    goto :goto_0

    :cond_3
    move v1, v2

    .line 233
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 205
    const/16 v0, 0x11

    .line 207
    .local v0, "result":I
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    add-int/lit16 v0, v1, 0x20f

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    add-int v0, v1, v2

    .line 209
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    add-int v0, v1, v2

    .line 210
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    add-int v0, v1, v2

    .line 211
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    add-int v0, v1, v2

    .line 212
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 213
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 214
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 215
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    add-int v0, v1, v2

    .line 217
    return v0
.end method

.method public isOutOfBand()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 171
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public satisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 1
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .prologue
    .line 196
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    if-eqz v0, :cond_0

    .line 197
    check-cast p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    .end local p1    # "other":Landroid/net/NetworkSpecifier;
    invoke-virtual {p1, p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->satisfiesAwareNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Z

    move-result v0

    return v0

    .line 199
    .restart local p1    # "other":Landroid/net/NetworkSpecifier;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WifiAwareNetworkSpecifier ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    const-string/jumbo v2, ", role="

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    const-string/jumbo v2, ", clientId="

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    const-string/jumbo v2, ", sessionId="

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    const-string/jumbo v2, ", peerId="

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    const-string/jumbo v2, ", peerMac="

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    if-nez v1, :cond_0

    const-string/jumbo v1, "<null>"

    .line 248
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    const-string/jumbo v2, ", pmk="

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 256
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    if-nez v1, :cond_1

    const-string/jumbo v1, "<null>"

    .line 248
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    const-string/jumbo v2, ", passphrase="

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v1, "<null>"

    .line 248
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    const-string/jumbo v2, ", requestorUid="

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    const-string/jumbo v2, "]"

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 254
    :cond_0
    const-string/jumbo v1, "<non-null>"

    goto :goto_0

    .line 256
    :cond_1
    const-string/jumbo v1, "<non-null>"

    goto :goto_1

    .line 258
    :cond_2
    const-string/jumbo v1, "<non-null>"

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 181
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 187
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 188
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return-void
.end method
