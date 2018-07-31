.class public final Landroid/net/wifi/aware/SubscribeConfig;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/SubscribeConfig$1;,
        Landroid/net/wifi/aware/SubscribeConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/aware/SubscribeConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBSCRIBE_TYPE_ACTIVE:I = 0x1

.field public static final SUBSCRIBE_TYPE_PASSIVE:I


# instance fields
.field public final mEnableTerminateNotification:Z

.field public final mMatchFilter:[B

.field public final mServiceName:[B

.field public final mServiceSpecificInfo:[B

.field public final mSubscribeType:I

.field public final mTtlSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Landroid/net/wifi/aware/SubscribeConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/SubscribeConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method public constructor <init>([B[B[BIIZ)V
    .locals 0
    .param p1, "serviceName"    # [B
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "subscribeType"    # I
    .param p5, "ttlSec"    # I
    .param p6, "enableTerminateNotification"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    .line 86
    iput-object p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 87
    iput-object p3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    .line 88
    iput p4, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    .line 89
    iput p5, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    .line 90
    iput-boolean p6, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    .line 91
    return-void
.end method


# virtual methods
.method public assertValid(Landroid/net/wifi/aware/Characteristics;)V
    .locals 6
    .param p1, "characteristics"    # Landroid/net/wifi/aware/Characteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareUtils;->validateServiceName([B)V

    .line 186
    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-static {v3, v4, v5}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 188
    const-string/jumbo v4, "Invalid matchFilter configuration - LV fields do not match up to length"

    .line 187
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_0
    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ltz v3, :cond_1

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-le v3, v5, :cond_2

    .line 191
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid subscribeType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_2
    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    if-gez v3, :cond_3

    .line 194
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid ttlSec - must be non-negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :cond_3
    if-eqz p1, :cond_6

    .line 198
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceNameLength()I

    move-result v1

    .line 199
    .local v1, "maxServiceNameLength":I
    if-eqz v1, :cond_4

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    array-length v3, v3

    if-le v3, v1, :cond_4

    .line 200
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 201
    const-string/jumbo v4, "Service name longer than supported by device characteristics"

    .line 200
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceSpecificInfoLength()I

    move-result v2

    .line 204
    .local v2, "maxServiceSpecificInfoLength":I
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-eqz v3, :cond_5

    .line 205
    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    array-length v3, v3

    if-le v3, v2, :cond_5

    .line 206
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 207
    const-string/jumbo v4, "Service specific info longer than supported by device characteristics"

    .line 206
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxMatchFilterLength()I

    move-result v0

    .line 210
    .local v0, "maxMatchFilterLength":I
    if-eqz v0, :cond_6

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    if-eqz v3, :cond_6

    .line 211
    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    array-length v3, v3

    if-le v3, v0, :cond_6

    .line 212
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 213
    const-string/jumbo v4, "Match filter longer than supported by device characteristics"

    .line 212
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    .end local v0    # "maxMatchFilterLength":I
    .end local v1    # "maxServiceNameLength":I
    .end local v2    # "maxServiceSpecificInfoLength":I
    :cond_6
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    if-ne p0, p1, :cond_0

    .line 146
    return v1

    .line 149
    :cond_0
    instance-of v3, p1, Landroid/net/wifi/aware/SubscribeConfig;

    if-nez v3, :cond_1

    .line 150
    return v2

    :cond_1
    move-object v0, p1

    .line 153
    check-cast v0, Landroid/net/wifi/aware/SubscribeConfig;

    .line 155
    .local v0, "lhs":Landroid/net/wifi/aware/SubscribeConfig;
    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    iget-object v4, v0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 156
    iget-object v4, v0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 155
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    iget-object v4, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 155
    if-eqz v3, :cond_3

    .line 157
    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    iget v4, v0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ne v3, v4, :cond_3

    .line 158
    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    iget v4, v0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    if-ne v3, v4, :cond_3

    .line 159
    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    iget-boolean v4, v0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    if-ne v3, v4, :cond_2

    .line 155
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 159
    goto :goto_0

    :cond_3
    move v1, v2

    .line 155
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 164
    const/16 v0, 0x11

    .line 166
    .local v0, "result":I
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 167
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 168
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 169
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    add-int v0, v1, v2

    .line 170
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    add-int v0, v1, v2

    .line 171
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 173
    return v0

    .line 171
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SubscribeConfig [mServiceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    if-nez v0, :cond_0

    const-string/jumbo v0, "<null>"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v2, ", mServiceName.length="

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    if-nez v0, :cond_1

    move v0, v1

    .line 95
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string/jumbo v2, ", mServiceSpecificInfo=\'"

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-nez v0, :cond_2

    const-string/jumbo v0, "<null>"

    .line 95
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string/jumbo v2, ", mServiceSpecificInfo.length="

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-nez v0, :cond_3

    move v0, v1

    .line 95
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string/jumbo v2, ", mMatchFilter="

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    new-instance v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4, v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    invoke-virtual {v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string/jumbo v2, ", mMatchFilter.length="

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    iget-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    if-nez v2, :cond_4

    .line 95
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, ", mSubscribeType="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, ", mTtlSec="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, ", mEnableTerminateNotification="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "]"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    array-length v0, v0

    goto/16 :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 101
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    array-length v0, v0

    goto :goto_3

    .line 103
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    array-length v1, v1

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 116
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 117
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 118
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
