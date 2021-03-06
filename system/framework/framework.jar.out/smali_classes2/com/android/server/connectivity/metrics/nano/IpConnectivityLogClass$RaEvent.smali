.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RaEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;


# instance fields
.field public dnsslLifetime:J

.field public prefixPreferredLifetime:J

.field public prefixValidLifetime:J

.field public rdnssLifetime:J

.field public routeInfoLifetime:J

.field public routerLifetime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2386
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    .line 2388
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .locals 2

    .prologue
    .line 2357
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    if-nez v0, :cond_1

    .line 2358
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2360
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    if-nez v0, :cond_0

    .line 2361
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2365
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    return-object v0

    .line 2358
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2506
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2500
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 2391
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 2392
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 2393
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 2394
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 2395
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 2396
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    .line 2397
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->cachedSize:I

    .line 2398
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 2427
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2428
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 2430
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    const/4 v1, 0x1

    .line 2429
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2432
    :cond_0
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 2434
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    const/4 v1, 0x2

    .line 2433
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2436
    :cond_1
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 2438
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    const/4 v1, 0x3

    .line 2437
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2440
    :cond_2
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 2442
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    const/4 v1, 0x4

    .line 2441
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2444
    :cond_3
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 2446
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    const/4 v1, 0x5

    .line 2445
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2448
    :cond_4
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 2450
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    const/4 v1, 0x6

    .line 2449
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2452
    :cond_5
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2455
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2460
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2461
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2465
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2466
    return-object p0

    .line 2463
    :sswitch_0
    return-object p0

    .line 2471
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    goto :goto_0

    .line 2475
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    goto :goto_0

    .line 2479
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    goto :goto_0

    .line 2483
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    goto :goto_0

    .line 2487
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    goto :goto_0

    .line 2491
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    goto :goto_0

    .line 2461
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 2404
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2405
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2407
    :cond_0
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 2408
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2410
    :cond_1
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 2411
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2413
    :cond_2
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 2414
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2416
    :cond_3
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 2417
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2419
    :cond_4
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 2420
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2422
    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2423
    return-void
.end method
