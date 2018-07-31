.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftApDurationBucket"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;


# instance fields
.field public bucketSizeSec:I

.field public count:I

.field public durationSec:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2981
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2982
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 2983
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .locals 2

    .prologue
    .line 2961
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-nez v0, :cond_1

    .line 2962
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2964
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-nez v0, :cond_0

    .line 2965
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2969
    :cond_1
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    return-object v0

    .line 2962
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3065
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3059
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2986
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    .line 2987
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    .line 2988
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    .line 2989
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->cachedSize:I

    .line 2990
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 3010
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3011
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    if-eqz v1, :cond_0

    .line 3013
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    const/4 v2, 0x1

    .line 3012
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3015
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    if-eqz v1, :cond_1

    .line 3017
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    const/4 v2, 0x2

    .line 3016
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3019
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    if-eqz v1, :cond_2

    .line 3021
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    const/4 v2, 0x3

    .line 3020
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3023
    :cond_2
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
    .line 3026
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3031
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3032
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3036
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3037
    return-object p0

    .line 3034
    :sswitch_0
    return-object p0

    .line 3042
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    goto :goto_0

    .line 3046
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    goto :goto_0

    .line 3050
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    goto :goto_0

    .line 3032
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 2996
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    if-eqz v0, :cond_0

    .line 2997
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->durationSec:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2999
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    if-eqz v0, :cond_1

    .line 3000
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->bucketSizeSec:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3002
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    if-eqz v0, :cond_2

    .line 3003
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->count:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3005
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3006
    return-void
.end method
