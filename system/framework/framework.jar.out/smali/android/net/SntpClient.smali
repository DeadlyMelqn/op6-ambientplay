.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValidServerReply(BBIJ)V
    .locals 3
    .param p0, "leap"    # B
    .param p1, "mode"    # B
    .param p2, "stratum"    # I
    .param p3, "transmitTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 203
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "unsynchronized server"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 206
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    if-eqz p2, :cond_2

    const/16 v0, 0xf

    if-le p2, v0, :cond_3

    .line 209
    :cond_2
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_4

    .line 212
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero transmitTime"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_4
    return-void
.end method

.method private read32([BI)J
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v9, 0x80

    .line 220
    aget-byte v0, p1, p2

    .line 221
    .local v0, "b0":B
    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    .line 222
    .local v1, "b1":B
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .line 223
    .local v2, "b2":B
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .line 226
    .local v3, "b3":B
    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_0

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    .line 227
    .local v4, "i0":I
    :goto_0
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_1

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    .line 228
    .local v5, "i1":I
    :goto_1
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_2

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    .line 229
    .local v6, "i2":I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    .line 231
    .local v7, "i3":I
    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    .line 226
    .end local v4    # "i0":I
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    .end local v7    # "i3":I
    :cond_0
    move v4, v0

    .restart local v4    # "i0":I
    goto :goto_0

    .line 227
    :cond_1
    move v5, v1

    .restart local v5    # "i1":I
    goto :goto_1

    .line 228
    :cond_2
    move v6, v2

    .restart local v6    # "i2":I
    goto :goto_2

    .line 229
    :cond_3
    move v7, v3

    .restart local v7    # "i3":I
    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 239
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 240
    .local v2, "seconds":J
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 242
    .local v0, "fraction":J
    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    .line 243
    return-wide v6

    .line 245
    :cond_0
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v8

    mul-long v6, v0, v8

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "time"    # J

    .prologue
    .line 254
    const-wide/16 v8, 0x0

    cmp-long v5, p3, v8

    if-nez v5, :cond_0

    .line 255
    add-int/lit8 v5, p2, 0x8

    const/4 v8, 0x0

    invoke-static {p1, p2, v5, v8}, Ljava/util/Arrays;->fill([BIIB)V

    .line 256
    return-void

    .line 259
    :cond_0
    const-wide/16 v8, 0x3e8

    div-long v6, p3, v8

    .line 260
    .local v6, "seconds":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    sub-long v2, p3, v8

    .line 261
    .local v2, "milliseconds":J
    const-wide v8, 0x83aa7e80L

    add-long/2addr v6, v8

    .line 264
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .local v4, "offset":I
    const/16 v5, 0x18

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 265
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 266
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 267
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/4 v5, 0x0

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 269
    const-wide v8, 0x100000000L

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 271
    .local v0, "fraction":J
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x18

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 272
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 273
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 275
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 276
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    .local v0, "address":Ljava/net/InetAddress;
    const/16 v2, 0x7b

    invoke-virtual {p0, v0, v2, p2}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;II)Z

    move-result v2

    return v2

    .line 89
    .local v0, "address":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, "SntpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request time failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v2, 0x0

    return v2
.end method

.method public requestTime(Ljava/net/InetAddress;II)Z
    .locals 36
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 98
    const/16 v21, 0x0

    .line 99
    .local v21, "socket":Ljava/net/DatagramSocket;
    const/16 v32, -0xbf

    invoke-static/range {v32 .. v32}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v10

    .line 101
    .local v10, "oldTag":I
    :try_start_0
    new-instance v28, Ljava/net/DatagramSocket;

    invoke-direct/range {v28 .. v28}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v21    # "socket":Ljava/net/DatagramSocket;
    .local v28, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 103
    const/16 v32, 0x30

    move/from16 v0, v32

    new-array v4, v0, [B

    .line 104
    .local v4, "buffer":[B
    new-instance v11, Ljava/net/DatagramPacket;

    array-length v0, v4

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v11, v4, v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 109
    .local v11, "request":Ljava/net/DatagramPacket;
    const/16 v32, 0x1b

    const/16 v33, 0x0

    aput-byte v32, v4, v33

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 113
    .local v18, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 114
    .local v16, "requestTicks":J
    const/16 v32, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-wide/from16 v2, v18

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 116
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 119
    new-instance v20, Ljava/net/DatagramPacket;

    array-length v0, v4

    move/from16 v32, v0

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 120
    .local v20, "response":Ljava/net/DatagramPacket;
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 122
    .local v22, "responseTicks":J
    sub-long v32, v22, v16

    add-long v24, v18, v32

    .line 125
    .local v24, "responseTime":J
    const/16 v32, 0x0

    aget-byte v32, v4, v32

    shr-int/lit8 v32, v32, 0x6

    and-int/lit8 v32, v32, 0x3

    move/from16 v0, v32

    int-to-byte v8, v0

    .line 126
    .local v8, "leap":B
    const/16 v32, 0x0

    aget-byte v32, v4, v32

    and-int/lit8 v32, v32, 0x7

    move/from16 v0, v32

    int-to-byte v9, v0

    .line 127
    .local v9, "mode":B
    const/16 v32, 0x1

    aget-byte v32, v4, v32

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    .line 128
    .local v29, "stratum":I
    const/16 v32, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v12

    .line 129
    .local v12, "originateTime":J
    const/16 v32, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v14

    .line 130
    .local v14, "receiveTime":J
    const/16 v32, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v30

    .line 134
    .local v30, "transmitTime":J
    move/from16 v0, v29

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Landroid/net/SntpClient;->checkValidServerReply(BBIJ)V

    .line 136
    sub-long v32, v22, v16

    sub-long v34, v30, v14

    sub-long v26, v32, v34

    .line 145
    .local v26, "roundTripTime":J
    sub-long v32, v14, v12

    sub-long v34, v30, v24

    add-long v32, v32, v34

    const-wide/16 v34, 0x2

    div-long v6, v32, v34

    .line 146
    .local v6, "clockOffset":J
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v6, v7}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    .line 148
    const-string/jumbo v32, "SntpClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "round trip: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "ms, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 149
    const-string/jumbo v34, "clock offset: "

    .line 148
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 149
    const-string/jumbo v34, "ms"

    .line 148
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    add-long v32, v24, v6

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    .line 155
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 156
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    if-eqz v28, :cond_0

    .line 163
    invoke-virtual/range {v28 .. v28}, Ljava/net/DatagramSocket;->close()V

    .line 165
    :cond_0
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 168
    const/16 v32, 0x1

    return v32

    .line 157
    .end local v4    # "buffer":[B
    .end local v6    # "clockOffset":J
    .end local v8    # "leap":B
    .end local v9    # "mode":B
    .end local v11    # "request":Ljava/net/DatagramPacket;
    .end local v12    # "originateTime":J
    .end local v14    # "receiveTime":J
    .end local v16    # "requestTicks":J
    .end local v18    # "requestTime":J
    .end local v20    # "response":Ljava/net/DatagramPacket;
    .end local v22    # "responseTicks":J
    .end local v24    # "responseTime":J
    .end local v26    # "roundTripTime":J
    .end local v28    # "socket":Ljava/net/DatagramSocket;
    .end local v29    # "stratum":I
    .end local v30    # "transmitTime":J
    .restart local v21    # "socket":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v5

    .line 158
    .end local v21    # "socket":Ljava/net/DatagramSocket;
    .local v5, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v32, "SntpClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "request time failed: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    const/16 v32, 0x0

    .line 162
    if-eqz v21, :cond_1

    .line 163
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->close()V

    .line 165
    :cond_1
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 160
    return v32

    .line 161
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v32

    .line 162
    :goto_1
    if-eqz v21, :cond_2

    .line 163
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->close()V

    .line 165
    :cond_2
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 161
    throw v32

    .restart local v28    # "socket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v32

    move-object/from16 v21, v28

    .end local v28    # "socket":Ljava/net/DatagramSocket;
    .local v21, "socket":Ljava/net/DatagramSocket;
    goto :goto_1

    .line 157
    .end local v21    # "socket":Ljava/net/DatagramSocket;
    .restart local v28    # "socket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v21, v28

    .end local v28    # "socket":Ljava/net/DatagramSocket;
    .restart local v21    # "socket":Ljava/net/DatagramSocket;
    goto :goto_0
.end method
