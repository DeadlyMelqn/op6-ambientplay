.class public final Landroid/media/MediaPlayer$DrmInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmInfo"
.end annotation


# instance fields
.field private mapPssh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private supportedSchemes:[Ljava/util/UUID;


# direct methods
.method static synthetic -wrap0(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;
    .locals 1
    .param p0, "-this"    # Landroid/media/MediaPlayer$DrmInfo;

    .prologue
    invoke-direct {p0}, Landroid/media/MediaPlayer$DrmInfo;->makeCopy()Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 4756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4757
    const-string/jumbo v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DrmInfo("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4760
    .local v2, "psshsize":I
    new-array v1, v2, [B

    .line 4761
    .local v1, "pssh":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 4763
    const-string/jumbo v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DrmInfo() PSSH: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer$DrmInfo;->arrToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    invoke-direct {p0, v1, v2}, Landroid/media/MediaPlayer$DrmInfo;->parsePSSH([BI)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    .line 4765
    const-string/jumbo v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DrmInfo() PSSH: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4768
    .local v3, "supportedDRMsCount":I
    new-array v5, v3, [Ljava/util/UUID;

    iput-object v5, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    .line 4769
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 4770
    const/16 v5, 0x10

    new-array v4, v5, [B

    .line 4771
    .local v4, "uuid":[B
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 4773
    iget-object v5, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {p0, v4}, Landroid/media/MediaPlayer$DrmInfo;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v6

    aput-object v6, v5, v0

    .line 4775
    const-string/jumbo v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DrmInfo() supportedScheme["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4776
    iget-object v7, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    aget-object v7, v7, v0

    .line 4775
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4779
    .end local v4    # "uuid":[B
    :cond_0
    const-string/jumbo v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DrmInfo() Parcel psshsize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4780
    const-string/jumbo v7, " supportedDRMsCount: "

    .line 4779
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/MediaPlayer$DrmInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/media/MediaPlayer$DrmInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;[Ljava/util/UUID;)V
    .locals 0
    .param p2, "SupportedSchemes"    # [Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;[",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4751
    .local p1, "Pssh":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4752
    iput-object p1, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    .line 4753
    iput-object p2, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    .line 4754
    return-void
.end method

.method private arrToHex([B)Ljava/lang/String;
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    .line 4788
    const-string/jumbo v1, "0x"

    .line 4789
    .local v1, "out":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 4790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4793
    :cond_0
    return-object v1
.end method

.method private bytesToUUID([B)Ljava/util/UUID;
    .locals 12
    .param p1, "uuid"    # [B

    .prologue
    const-wide/16 v10, 0xff

    const/16 v8, 0x8

    .line 4797
    const-wide/16 v4, 0x0

    .local v4, "msb":J
    const-wide/16 v2, 0x0

    .line 4798
    .local v2, "lsb":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 4799
    aget-byte v1, p1, v0

    int-to-long v6, v1

    and-long/2addr v6, v10

    rsub-int/lit8 v1, v0, 0x7

    mul-int/lit8 v1, v1, 0x8

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 4800
    add-int/lit8 v1, v0, 0x8

    aget-byte v1, p1, v1

    int-to-long v6, v1

    and-long/2addr v6, v10

    rsub-int/lit8 v1, v0, 0x7

    mul-int/lit8 v1, v1, 0x8

    shl-long/2addr v6, v1

    or-long/2addr v2, v6

    .line 4798
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4803
    :cond_0
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1
.end method

.method private makeCopy()Landroid/media/MediaPlayer$DrmInfo;
    .locals 3

    .prologue
    .line 4784
    new-instance v0, Landroid/media/MediaPlayer$DrmInfo;

    iget-object v1, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    iget-object v2, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    return-object v0
.end method

.method private parsePSSH([BI)Ljava/util/Map;
    .locals 16
    .param p1, "pssh"    # [B
    .param p2, "psshsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 4807
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4809
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    const/16 v2, 0x10

    .line 4810
    .local v2, "UUID_SIZE":I
    const/4 v1, 0x4

    .line 4812
    .local v1, "DATALEN_SIZE":I
    move/from16 v6, p2

    .line 4813
    .local v6, "len":I
    const/4 v7, 0x0

    .line 4814
    .local v7, "numentries":I
    const/4 v5, 0x0

    .line 4816
    .local v5, "i":I
    :goto_0
    if-lez v6, :cond_4

    .line 4817
    const/16 v11, 0x10

    if-ge v6, v11, :cond_0

    .line 4818
    const-string/jumbo v11, "MediaPlayer"

    const-string/jumbo v12, "parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 4819
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 4818
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4820
    const/4 v11, 0x0

    return-object v11

    .line 4823
    :cond_0
    add-int/lit8 v11, v5, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v5, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 4824
    .local v9, "subset":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/media/MediaPlayer$DrmInfo;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v10

    .line 4825
    .local v10, "uuid":Ljava/util/UUID;
    add-int/lit8 v5, v5, 0x10

    .line 4826
    add-int/lit8 v6, v6, -0x10

    .line 4829
    const/4 v11, 0x4

    if-ge v6, v11, :cond_1

    .line 4830
    const-string/jumbo v11, "MediaPlayer"

    const-string/jumbo v12, "parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 4831
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 4830
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    const/4 v11, 0x0

    return-object v11

    .line 4835
    :cond_1
    add-int/lit8 v11, v5, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v5, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 4836
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v11, v12, :cond_2

    .line 4837
    const/4 v11, 0x3

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    const/4 v12, 0x2

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    .line 4838
    const/4 v12, 0x1

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    .line 4837
    or-int/2addr v11, v12

    .line 4838
    const/4 v12, 0x0

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    .line 4837
    or-int v4, v11, v12

    .line 4841
    .local v4, "datalen":I
    :goto_1
    add-int/lit8 v5, v5, 0x4

    .line 4842
    add-int/lit8 v6, v6, -0x4

    .line 4844
    if-ge v6, v4, :cond_3

    .line 4845
    const-string/jumbo v11, "MediaPlayer"

    const-string/jumbo v12, "parsePSSH: len is too short to parse data: (%d < %d) pssh: %d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 4846
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 4845
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4847
    const/4 v11, 0x0

    return-object v11

    .line 4839
    .end local v4    # "datalen":I
    :cond_2
    const/4 v11, 0x0

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    const/4 v12, 0x1

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    .line 4840
    const/4 v12, 0x2

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    .line 4839
    or-int/2addr v11, v12

    .line 4840
    const/4 v12, 0x3

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    .line 4839
    or-int v4, v11, v12

    .restart local v4    # "datalen":I
    goto :goto_1

    .line 4850
    :cond_3
    add-int v11, v5, v4

    move-object/from16 v0, p1

    invoke-static {v0, v5, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 4853
    .local v3, "data":[B
    add-int/2addr v5, v4

    .line 4854
    sub-int/2addr v6, v4

    .line 4856
    const-string/jumbo v11, "MediaPlayer"

    const-string/jumbo v12, "parsePSSH[%d]: <%s, %s> pssh: %d"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    .line 4857
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x1

    aput-object v10, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/MediaPlayer$DrmInfo;->arrToHex([B)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v13, v15

    .line 4856
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4858
    add-int/lit8 v7, v7, 0x1

    .line 4859
    invoke-interface {v8, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4862
    .end local v3    # "data":[B
    .end local v4    # "datalen":I
    .end local v9    # "subset":[B
    .end local v10    # "uuid":Ljava/util/UUID;
    :cond_4
    return-object v8
.end method


# virtual methods
.method public getPssh()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 4739
    iget-object v0, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    return-object v0
.end method

.method public getSupportedSchemes()[Ljava/util/UUID;
    .locals 1

    .prologue
    .line 4748
    iget-object v0, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    return-object v0
.end method
