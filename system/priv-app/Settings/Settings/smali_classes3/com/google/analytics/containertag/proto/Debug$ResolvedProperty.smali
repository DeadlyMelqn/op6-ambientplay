.class public final Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedProperty"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;


# instance fields
.field public key:Ljava/lang/String;

.field public value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1215
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1218
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    .line 1221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1215
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1318
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1312
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1224
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    .line 1225
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1226
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    .line 1227
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->cachedSize:I

    .line 1228
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1233
    if-eq p1, p0, :cond_2

    .line 1234
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1235
    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 1236
    .local v0, "other":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    :goto_0
    move v1, v2

    :cond_1
    return v1

    .line 1233
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    :cond_2
    return v1

    .line 1234
    :cond_3
    return v2

    .line 1236
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    :cond_4
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3, v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1263
    const/4 v0, 0x0

    .line 1264
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1268
    :goto_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v1, :cond_1

    .line 1272
    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1273
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->cachedSize:I

    .line 1274
    return v0

    .line 1265
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    goto :goto_0

    .line 1269
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1242
    const/16 v0, 0x11

    .line 1243
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 1244
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 1245
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 1246
    return v0

    :cond_1
    move v1, v2

    .line 1243
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1244
    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .locals 2
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1282
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1283
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1287
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1291
    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1293
    return-object p0

    .line 1285
    :sswitch_0
    return-object p0

    .line 1288
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    goto :goto_1

    .line 1298
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    goto :goto_0

    .line 1302
    :sswitch_2
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1303
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1283
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1211
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    :goto_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_1

    .line 1257
    :goto_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1259
    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1
.end method
