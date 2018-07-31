.class public Landroid/secrecy/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# static fields
.field private static final DIGITS_LOWER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    .line 22
    return-void

    .line 24
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToLong([B)J
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 183
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 9
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x1

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 112
    .local v5, "len":I
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_0

    .line 113
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 116
    :cond_0
    shr-int/lit8 v6, v5, 0x1

    new-array v4, v6, [B

    .line 119
    .local v4, "key":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 121
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 122
    .local v0, "digit":I
    if-ne v0, v7, :cond_1

    .line 123
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 125
    :cond_1
    shl-int/lit8 v1, v0, 0x4

    .line 126
    .local v1, "f":I
    add-int/lit8 v3, v3, 0x1

    .line 128
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 129
    if-ne v0, v7, :cond_2

    .line 130
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 133
    :cond_2
    or-int/2addr v1, v0

    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "digit":I
    .end local v1    # "f":I
    :cond_3
    return-object v4
.end method

.method public static decodeHexRC4(Ljava/lang/String;)[B
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 97
    .local v2, "len":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    .line 99
    const/16 v3, 0x100

    new-array v1, v3, [B

    .line 100
    .local v1, "key":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 101
    int-to-byte v3, v0

    aput-byte v3, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-object v1

    .line 107
    .end local v0    # "i":I
    .end local v1    # "key":[B
    :cond_1
    invoke-static {p0}, Landroid/secrecy/RC4;->decodeHex(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 142
    array-length v1, p0

    .line 143
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 145
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 146
    sget-object v3, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    sget-object v3, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs encodeLog([[B)Ljava/lang/String;
    .locals 10
    .param p0, "logs"    # [[B

    .prologue
    const/4 v6, 0x0

    .line 153
    const-string/jumbo v0, "\u03b2\u03b5\u03b7i\u043f\u039e"

    .line 154
    .local v0, "begin":Ljava/lang/String;
    const-string/jumbo v1, "\u039e\u044d\u043f\u0434"

    .line 156
    .local v1, "end":Ljava/lang/String;
    const/4 v3, 0x0

    .line 157
    .local v3, "len":I
    array-length v8, p0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, p0, v7

    .line 158
    .local v4, "log":[B
    array-length v9, v4

    add-int/2addr v3, v9

    .line 157
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 160
    .end local v4    # "log":[B
    :cond_0
    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int v3, v7, v8

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    array-length v7, p0

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v4, p0, v6

    .line 166
    .restart local v4    # "log":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v8, v4

    if-ge v2, v8, :cond_1

    .line 167
    sget-object v8, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    aget-byte v9, v4, v2

    and-int/lit16 v9, v9, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    aget-char v8, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    sget-object v8, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    aget-byte v9, v4, v2

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 165
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 172
    .end local v2    # "i":I
    .end local v4    # "log":[B
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static encrypt([B[B)V
    .locals 7
    .param p0, "sbox"    # [B
    .param p1, "data"    # [B

    .prologue
    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 v3, 0x0

    .line 36
    .local v3, "t":I
    const/4 v0, 0x0

    .line 38
    .local v0, "d":I
    const/4 v0, 0x0

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_0

    .line 39
    add-int/lit8 v5, v1, 0x1

    rem-int/lit16 v1, v5, 0x100

    .line 40
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x100

    .line 42
    aget-byte v4, p0, v1

    .line 43
    .local v4, "tmp":B
    aget-byte v5, p0, v2

    aput-byte v5, p0, v1

    .line 44
    aput-byte v4, p0, v2

    .line 46
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    rem-int/lit16 v3, v5, 0x100

    .line 47
    aget-byte v5, p1, v0

    aget-byte v6, p0, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v4    # "tmp":B
    :cond_0
    return-void
.end method

.method static varargs encryptLog([B[[B)V
    .locals 10
    .param p0, "sbox"    # [B
    .param p1, "logs"    # [[B

    .prologue
    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    const/4 v4, 0x0

    .line 54
    .local v4, "t":I
    const/4 v6, 0x0

    array-length v7, p1

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, p1, v6

    .line 55
    .local v1, "data":[B
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_1
    array-length v8, v1

    if-ge v0, v8, :cond_0

    .line 56
    add-int/lit8 v8, v2, 0x1

    rem-int/lit16 v2, v8, 0x100

    .line 57
    aget-byte v8, p0, v2

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v8, v3

    rem-int/lit16 v3, v8, 0x100

    .line 59
    aget-byte v5, p0, v2

    .line 60
    .local v5, "tmp":B
    aget-byte v8, p0, v3

    aput-byte v8, p0, v2

    .line 61
    aput-byte v5, p0, v3

    .line 63
    aget-byte v8, p0, v2

    and-int/lit16 v8, v8, 0xff

    aget-byte v9, p0, v3

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    rem-int/lit16 v4, v8, 0x100

    .line 64
    aget-byte v8, v1, v0

    aget-byte v9, p0, v4

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    .end local v5    # "tmp":B
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "d":I
    .end local v1    # "data":[B
    :cond_1
    return-void
.end method

.method static initSbox([B)V
    .locals 2
    .param p0, "sbox"    # [B

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 71
    int-to-byte v1, v0

    aput-byte v1, p0, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public static longToBytes(J)[B
    .locals 2
    .param p0, "x"    # J

    .prologue
    .line 177
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 178
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static mixSbox([B[B)V
    .locals 6
    .param p0, "sbox"    # [B
    .param p1, "key"    # [B

    .prologue
    .line 82
    invoke-static {p0}, Landroid/secrecy/RC4;->initSbox([B)V

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "j":I
    array-length v2, p1

    .line 86
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x100

    if-ge v0, v4, :cond_0

    .line 87
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v1

    rem-int v5, v0, v2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    rem-int/lit16 v1, v4, 0x100

    .line 88
    aget-byte v3, p0, v0

    .line 89
    .local v3, "tmp":B
    aget-byte v4, p0, v1

    aput-byte v4, p0, v0

    .line 90
    aput-byte v3, p0, v1

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "tmp":B
    :cond_0
    return-void
.end method
