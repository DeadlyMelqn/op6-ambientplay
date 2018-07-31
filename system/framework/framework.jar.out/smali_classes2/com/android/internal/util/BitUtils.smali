.class public final Lcom/android/internal/util/BitUtils;
.super Ljava/lang/Object;
.source "BitUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitAt(I)J
    .locals 2
    .param p0, "bitIndex"    # I

    .prologue
    .line 135
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static bytesToBEInt([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 101
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 102
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    .line 101
    add-int/2addr v0, v1

    .line 103
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    .line 101
    add-int/2addr v0, v1

    .line 104
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    .line 101
    add-int/2addr v0, v1

    return v0
.end method

.method public static bytesToLEInt([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/internal/util/BitUtils;->bytesToBEInt([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;
    .locals 5
    .param p0, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/IntFunction",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "getFlagName":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 141
    .local v1, "count":I
    :goto_0
    if-eqz p0, :cond_1

    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v2, v4, v3

    .line 143
    .local v2, "flag":I
    not-int v3, v2

    and-int/2addr p0, v3

    .line 144
    if-lez v1, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "flag":I
    :cond_1
    const-string/jumbo v3, "["

    const-string/jumbo v4, "]"

    invoke-static {v0, v3, v4}, Landroid/text/TextUtils;->wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getUint16(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v0

    return v0
.end method

.method public static getUint32(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint32(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUint8(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v0

    return v0
.end method

.method public static isBitSet(JI)Z
    .locals 4
    .param p0, "flags"    # J
    .param p2, "bitIndex"    # I

    .prologue
    .line 131
    invoke-static {p2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v0

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskedEquals(BBB)Z
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "mask"    # B

    .prologue
    .line 43
    and-int v0, p0, p2

    and-int v1, p1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskedEquals(JJJ)Z
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "mask"    # J

    .prologue
    .line 39
    and-long v0, p0, p4

    and-long v2, p2, p4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 6
    .param p0, "a"    # Ljava/util/UUID;
    .param p1, "b"    # Ljava/util/UUID;
    .param p2, "mask"    # Ljava/util/UUID;

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    invoke-static {p0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 62
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 61
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/BitUtils;->maskedEquals(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 64
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 63
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/BitUtils;->maskedEquals(JJJ)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskedEquals([B[B[B)Z
    .locals 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "mask"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 48
    :cond_2
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_3

    move v3, v1

    :goto_1
    const-string/jumbo v4, "Inputs must be of same size"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 49
    if-nez p2, :cond_4

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    :cond_3
    move v3, v2

    .line 48
    goto :goto_1

    .line 50
    :cond_4
    array-length v3, p0

    array-length v4, p2

    if-ne v3, v4, :cond_5

    move v3, v1

    :goto_2
    const-string/jumbo v4, "Mask must be of same size as inputs"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v3, p2

    if-ge v0, v3, :cond_7

    .line 52
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    aget-byte v5, p2, v0

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/BitUtils;->maskedEquals(BBB)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    .end local v0    # "i":I
    :cond_5
    move v3, v2

    .line 50
    goto :goto_2

    .line 51
    .restart local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 54
    :cond_7
    return v1
.end method

.method public static packBits([I)J
    .locals 8
    .param p0, "bits"    # [I

    .prologue
    .line 81
    const-wide/16 v2, 0x0

    .line 82
    .local v2, "packed":J
    const/4 v1, 0x0

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_0

    aget v0, p0, v1

    .line 83
    .local v0, "b":I
    const/4 v5, 0x1

    shl-int/2addr v5, v0

    int-to-long v6, v5

    or-long/2addr v2, v6

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "b":I
    :cond_0
    return-wide v2
.end method

.method public static put(Ljava/nio/ByteBuffer;I[B)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 125
    .local v0, "original":I
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    return-void
.end method

.method public static uint16(S)I
    .locals 1
    .param p0, "s"    # S

    .prologue
    .line 93
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static uint32(I)J
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 97
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static uint8(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 89
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static unpackBits(J)[I
    .locals 10
    .param p0, "val"    # J

    .prologue
    const-wide/16 v8, 0x1

    .line 68
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 69
    .local v4, "size":I
    new-array v3, v4, [I

    .line 70
    .local v3, "result":[I
    const/4 v1, 0x0

    .line 71
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "bitPos":I
    move v2, v1

    .line 72
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-lez v5, :cond_0

    .line 73
    and-long v6, p0, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput v0, v3, v2

    .line 74
    :goto_1
    const/4 v5, 0x1

    shr-long/2addr p0, v5

    .line 75
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 77
    :cond_0
    return-object v3

    :cond_1
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1
.end method
