.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RssiPollCount"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;


# instance fields
.field public count:I

.field public rssi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2681
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2682
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 2683
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .locals 2

    .prologue
    .line 2664
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v0, :cond_1

    .line 2665
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2667
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v0, :cond_0

    .line 2668
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2672
    :cond_1
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    return-object v0

    .line 2665
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2753
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2747
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2686
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    .line 2687
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    .line 2688
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->cachedSize:I

    .line 2689
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2706
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2707
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    if-eqz v1, :cond_0

    .line 2709
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    const/4 v2, 0x1

    .line 2708
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2711
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    if-eqz v1, :cond_1

    .line 2713
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    const/4 v2, 0x2

    .line 2712
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2715
    :cond_1
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
    .line 2718
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2723
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2724
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2728
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2729
    return-object p0

    .line 2726
    :sswitch_0
    return-object p0

    .line 2734
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    goto :goto_0

    .line 2738
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    goto :goto_0

    .line 2724
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2695
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    if-eqz v0, :cond_0

    .line 2696
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2698
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    if-eqz v0, :cond_1

    .line 2699
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2701
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2702
    return-void
.end method
