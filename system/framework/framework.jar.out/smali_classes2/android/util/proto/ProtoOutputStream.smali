.class public final Landroid/util/proto/ProtoOutputStream;
.super Ljava/lang/Object;
.source "ProtoOutputStream.java"


# static fields
.field public static final FIELD_COUNT_MASK:J = 0xf0000000000L

.field public static final FIELD_COUNT_PACKED:J = 0x50000000000L

.field public static final FIELD_COUNT_REPEATED:J = 0x20000000000L

.field public static final FIELD_COUNT_SHIFT:I = 0x28

.field public static final FIELD_COUNT_SINGLE:J = 0x10000000000L

.field public static final FIELD_COUNT_UNKNOWN:J = 0x0L

.field public static final FIELD_ID_MASK:I = -0x8

.field public static final FIELD_ID_SHIFT:I = 0x3

.field public static final FIELD_TYPE_BOOL:J = 0xd00000000L

.field public static final FIELD_TYPE_BYTES:J = 0xf00000000L

.field public static final FIELD_TYPE_DOUBLE:J = 0x100000000L

.field public static final FIELD_TYPE_ENUM:J = 0x1000000000L

.field public static final FIELD_TYPE_FIXED32:J = 0x900000000L

.field public static final FIELD_TYPE_FIXED64:J = 0xa00000000L

.field public static final FIELD_TYPE_FLOAT:J = 0x200000000L

.field public static final FIELD_TYPE_INT32:J = 0x300000000L

.field public static final FIELD_TYPE_INT64:J = 0x400000000L

.field public static final FIELD_TYPE_MASK:J = 0xff00000000L

.field private static final FIELD_TYPE_NAMES:[Ljava/lang/String;

.field public static final FIELD_TYPE_OBJECT:J = 0x1100000000L

.field public static final FIELD_TYPE_SFIXED32:J = 0xb00000000L

.field public static final FIELD_TYPE_SFIXED64:J = 0xc00000000L

.field public static final FIELD_TYPE_SHIFT:I = 0x20

.field public static final FIELD_TYPE_SINT32:J = 0x700000000L

.field public static final FIELD_TYPE_SINT64:J = 0x800000000L

.field public static final FIELD_TYPE_STRING:J = 0xe00000000L

.field public static final FIELD_TYPE_UINT32:J = 0x500000000L

.field public static final FIELD_TYPE_UINT64:J = 0x600000000L

.field public static final FIELD_TYPE_UNKNOWN:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "ProtoOutputStream"

.field public static final WIRE_TYPE_END_GROUP:I = 0x4

.field public static final WIRE_TYPE_FIXED32:I = 0x5

.field public static final WIRE_TYPE_FIXED64:I = 0x1

.field public static final WIRE_TYPE_LENGTH_DELIMITED:I = 0x2

.field public static final WIRE_TYPE_MASK:I = 0x7

.field public static final WIRE_TYPE_START_GROUP:I = 0x3

.field public static final WIRE_TYPE_VARINT:I


# instance fields
.field private mBuffer:Landroid/util/proto/EncodedBuffer;

.field private mCompacted:Z

.field private mCopyBegin:I

.field private mDepth:I

.field private mExpectedObjectToken:J

.field private mNextObjectId:I

.field private mStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 148
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 149
    const-string/jumbo v1, "Double"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 150
    const-string/jumbo v1, "Float"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 151
    const-string/jumbo v1, "Int32"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "Int64"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "UInt32"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "UInt64"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "SInt32"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "SInt64"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "Fixed32"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 158
    const-string/jumbo v1, "Fixed64"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 159
    const-string/jumbo v1, "SFixed32"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "SFixed64"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "Bool"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "String"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "Bytes"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "Enum"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "Object"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 148
    sput-object v0, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 228
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "chunkSize"    # I

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 234
    new-instance v0, Landroid/util/proto/EncodedBuffer;

    invoke-direct {v0, p1}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 257
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 246
    iput-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    .line 247
    return-void
.end method

.method private assertNotCompacted()V
    .locals 2

    .prologue
    .line 2426
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_0

    .line 2427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "write called after compact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2429
    :cond_0
    return-void
.end method

.method public static checkFieldId(JJ)I
    .locals 14
    .param p0, "fieldId"    # J
    .param p2, "expectedFlags"    # J

    .prologue
    .line 2283
    const-wide v12, 0xf0000000000L

    and-long v6, p0, v12

    .line 2284
    .local v6, "fieldCount":J
    const-wide v12, 0xff00000000L

    and-long v8, p0, v12

    .line 2285
    .local v8, "fieldType":J
    const-wide v12, 0xf0000000000L

    and-long v2, p2, v12

    .line 2286
    .local v2, "expectedCount":J
    const-wide v12, 0xff00000000L

    and-long v4, p2, v12

    .line 2287
    .local v4, "expectedType":J
    long-to-int v11, p0

    if-nez v11, :cond_0

    .line 2288
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid proto field "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    long-to-int v13, p0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2289
    const-string/jumbo v13, " fieldId="

    .line 2288
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2289
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    .line 2288
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2291
    :cond_0
    cmp-long v11, v8, v4

    if-nez v11, :cond_1

    .line 2292
    cmp-long v11, v6, v2

    if-eqz v11, :cond_7

    .line 2293
    const-wide v12, 0x50000000000L

    cmp-long v11, v6, v12

    if-nez v11, :cond_1

    .line 2294
    const-wide v12, 0x20000000000L

    cmp-long v11, v2, v12

    if-eqz v11, :cond_7

    .line 2295
    :cond_1
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v0

    .line 2296
    .local v0, "countString":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v10

    .line 2297
    .local v10, "typeString":Ljava/lang/String;
    if-eqz v10, :cond_5

    if-eqz v0, :cond_5

    .line 2298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2299
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-wide v12, 0x1100000000L

    cmp-long v11, v4, v12

    if-nez v11, :cond_3

    .line 2300
    const-string/jumbo v11, "start"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2304
    :goto_0
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    const-string/jumbo v11, " called for field "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    long-to-int v11, p0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2308
    const-string/jumbo v11, " which should be used with "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    const-wide v12, 0x1100000000L

    cmp-long v11, v8, v12

    if-nez v11, :cond_4

    .line 2310
    const-string/jumbo v11, "start"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2314
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2315
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2316
    const-wide v12, 0x50000000000L

    cmp-long v11, v6, v12

    if-nez v11, :cond_2

    .line 2317
    const-string/jumbo v11, " or writeRepeated"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2320
    :cond_2
    const/16 v11, 0x2e

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2321
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2302
    :cond_3
    const-string/jumbo v11, "write"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2312
    :cond_4
    const-string/jumbo v11, "write"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2323
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2324
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    const-wide v12, 0x1100000000L

    cmp-long v11, v4, v12

    if-nez v11, :cond_6

    .line 2325
    const-string/jumbo v11, "start"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2329
    :goto_2
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2330
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    const-string/jumbo v11, " called with an invalid fieldId: 0x"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2333
    const-string/jumbo v11, ". The proto field ID might be "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2334
    long-to-int v11, p0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2335
    const/16 v11, 0x2e

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2336
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2327
    :cond_6
    const-string/jumbo v11, "write"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2339
    .end local v0    # "countString":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "typeString":Ljava/lang/String;
    :cond_7
    long-to-int v11, p0

    return v11
.end method

.method private compactIfNecessary()V
    .locals 4

    .prologue
    .line 2449
    iget-boolean v1, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v1, :cond_2

    .line 2450
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-eqz v1, :cond_0

    .line 2451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to compact with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2452
    const-string/jumbo v3, " missing calls to endObject"

    .line 2451
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2456
    :cond_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 2457
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v0

    .line 2460
    .local v0, "readableSize":I
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    .line 2466
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->rewindRead()V

    .line 2467
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 2470
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ge v1, v0, :cond_1

    .line 2471
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 2475
    :cond_1
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 2480
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    .line 2482
    .end local v0    # "readableSize":I
    :cond_2
    return-void
.end method

.method private compactSizes(I)V
    .locals 11
    .param p1, "rawSize"    # I

    .prologue
    .line 2558
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v3

    .line 2559
    .local v3, "objectStart":I
    add-int v2, v3, p1

    .line 2561
    .local v2, "objectEnd":I
    :cond_0
    :goto_0
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v5

    .local v5, "tagPos":I
    if-ge v5, v2, :cond_2

    .line 2562
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v4

    .line 2567
    .local v4, "tag":I
    and-int/lit8 v6, v4, 0x7

    .line 2568
    .local v6, "wireType":I
    packed-switch v6, :pswitch_data_0

    .line 2602
    new-instance v7, Landroid/util/proto/ProtoParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "compactSizes Bad tag tag=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2603
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 2602
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2603
    const-string/jumbo v9, " wireType="

    .line 2602
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2604
    const-string/jumbo v9, " -- "

    .line 2602
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2604
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v9

    .line 2602
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2570
    :goto_1
    :pswitch_0
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_0

    goto :goto_1

    .line 2573
    :pswitch_1
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_0

    .line 2577
    :pswitch_2
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v8, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v9

    iget v10, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 2579
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v1

    .line 2580
    .local v1, "childRawSize":I
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v0

    .line 2581
    .local v0, "childEncodedSize":I
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v0}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 2583
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iput v7, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    .line 2584
    if-ltz v1, :cond_1

    .line 2587
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v0}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto/16 :goto_0

    .line 2589
    :cond_1
    neg-int v7, v1

    invoke-direct {p0, v7}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    goto/16 :goto_0

    .line 2597
    .end local v0    # "childEncodedSize":I
    .end local v1    # "childRawSize":I
    :pswitch_3
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "groups not supported at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2599
    :pswitch_4
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto/16 :goto_0

    .line 2607
    .end local v4    # "tag":I
    .end local v6    # "wireType":I
    :cond_2
    return-void

    .line 2568
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static convertObjectIdToOrdinal(I)I
    .locals 1
    .param p0, "objectId"    # I

    .prologue
    .line 2064
    const v0, 0x7ffff

    sub-int/2addr v0, p0

    return v0
.end method

.method private editEncodedSize(I)I
    .locals 12
    .param p1, "rawSize"    # I

    .prologue
    .line 2489
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v5

    .line 2490
    .local v5, "objectStart":I
    add-int v4, v5, p1

    .line 2491
    .local v4, "objectEnd":I
    const/4 v3, 0x0

    .line 2494
    .local v3, "encodedSize":I
    :cond_0
    :goto_0
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    .local v7, "tagPos":I
    if-ge v7, v4, :cond_3

    .line 2495
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v6

    .line 2496
    .local v6, "tag":I
    invoke-static {v6}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v9

    add-int/2addr v3, v9

    .line 2498
    and-int/lit8 v8, v6, 0x7

    .line 2499
    .local v8, "wireType":I
    packed-switch v8, :pswitch_data_0

    .line 2543
    new-instance v9, Landroid/util/proto/ProtoParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "editEncodedSize Bad tag tag=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2544
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 2543
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2544
    const-string/jumbo v11, " wireType="

    .line 2543
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2545
    const-string/jumbo v11, " -- "

    .line 2543
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2545
    iget-object v11, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v11}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v11

    .line 2543
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2501
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    .line 2502
    :goto_1
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_0

    .line 2503
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2507
    :pswitch_1
    add-int/lit8 v3, v3, 0x8

    .line 2508
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_0

    .line 2513
    :pswitch_2
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v2

    .line 2514
    .local v2, "childRawSize":I
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v1

    .line 2515
    .local v1, "childEncodedSizePos":I
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v0

    .line 2516
    .local v0, "childEncodedSize":I
    if-ltz v2, :cond_2

    .line 2518
    if-eq v0, v2, :cond_1

    .line 2519
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pre-computed size where the precomputed size and the raw size in the buffer don\'t match! childRawSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2522
    const-string/jumbo v11, " childEncodedSize="

    .line 2519
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2523
    const-string/jumbo v11, " childEncodedSizePos="

    .line 2519
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2525
    :cond_1
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v2}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2531
    :goto_2
    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v9

    add-int/2addr v9, v0

    add-int/2addr v3, v9

    .line 2533
    goto/16 :goto_0

    .line 2528
    :cond_2
    neg-int v9, v2

    invoke-direct {p0, v9}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    move-result v0

    .line 2529
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v1, v0}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_2

    .line 2537
    .end local v0    # "childEncodedSize":I
    .end local v1    # "childEncodedSizePos":I
    .end local v2    # "childRawSize":I
    :pswitch_3
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "groups not supported at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2539
    :pswitch_4
    add-int/lit8 v3, v3, 0x4

    .line 2540
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto/16 :goto_0

    .line 2549
    .end local v6    # "tag":I
    .end local v8    # "wireType":I
    :cond_3
    return v3

    .line 2499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private endObjectImpl(JZ)V
    .locals 11
    .param p1, "token"    # J
    .param p3, "repeated"    # Z

    .prologue
    const/4 v10, 0x0

    .line 2170
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v1

    .line 2171
    .local v1, "depth":I
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v2

    .line 2172
    .local v2, "expectedRepeated":Z
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getSizePosFromToken(J)I

    move-result v3

    .line 2173
    .local v3, "sizePos":I
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v0, v4, -0x8

    .line 2175
    .local v0, "childRawSize":I
    if-eq p3, v2, :cond_1

    .line 2176
    if-eqz p3, :cond_0

    .line 2177
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "endRepeatedObject called where endObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2180
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "endObject called where endRepeatedObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2186
    :cond_1
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    and-int/lit16 v4, v4, 0x1ff

    if-ne v4, v1, :cond_2

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    cmp-long v4, v4, p1

    if-eqz v4, :cond_3

    .line 2189
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Mismatched startObject/endObject calls. Current depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2190
    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2191
    const-string/jumbo v6, " token="

    .line 2189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2191
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    .line 2189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2192
    const-string/jumbo v6, " expectedToken="

    .line 2189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2192
    iget-wide v6, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    .line 2189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2196
    :cond_3
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4, v3}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    .line 2197
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v7, v3, 0x4

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 2196
    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2199
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2200
    if-lez v0, :cond_4

    .line 2201
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    neg-int v5, v0

    invoke-virtual {v4, v3, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2202
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v5, v3, 0x4

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2210
    :goto_0
    return-void

    .line 2203
    :cond_4
    if-eqz p3, :cond_5

    .line 2204
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4, v3, v10}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2205
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v5, v3, 0x4

    invoke-virtual {v4, v5, v10}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_0

    .line 2208
    :cond_5
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->rewindWriteTo(I)V

    goto :goto_0
.end method

.method public static getDepthFromToken(J)I
    .locals 4
    .param p0, "token"    # J

    .prologue
    .line 2039
    const/16 v0, 0x33

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static getFieldCountString(J)Ljava/lang/String;
    .locals 2
    .param p0, "fieldCount"    # J

    .prologue
    .line 2358
    const-wide v0, 0x10000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2359
    const-string/jumbo v0, ""

    return-object v0

    .line 2360
    :cond_0
    const-wide v0, 0x20000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 2361
    const-string/jumbo v0, "Repeated"

    return-object v0

    .line 2362
    :cond_1
    const-wide v0, 0x50000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 2363
    const-string/jumbo v0, "Packed"

    return-object v0

    .line 2365
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFieldIdString(J)Ljava/lang/String;
    .locals 9
    .param p1, "fieldId"    # J

    .prologue
    .line 2373
    const-wide v6, 0xf0000000000L

    and-long v2, p1, v6

    .line 2374
    .local v2, "fieldCount":J
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v0

    .line 2375
    .local v0, "countString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2376
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fieldCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2379
    :cond_0
    const-wide v6, 0xff00000000L

    and-long v4, p1, v6

    .line 2380
    .local v4, "fieldType":J
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v1

    .line 2381
    .local v1, "typeString":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fieldType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2385
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-int v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2386
    const-string/jumbo v7, " fieldId=0x"

    .line 2385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2386
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 2385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getFieldTypeString(J)Ljava/lang/String;
    .locals 4
    .param p0, "fieldType"    # J

    .prologue
    .line 2346
    const-wide v2, 0xff00000000L

    and-long/2addr v2, p0

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 2347
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2348
    sget-object v1, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 2350
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getObjectIdFromToken(J)I
    .locals 4
    .param p0, "token"    # J

    .prologue
    .line 2048
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/32 v2, 0x7ffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getRepeatedFromToken(J)Z
    .locals 4
    .param p0, "token"    # J

    .prologue
    .line 2032
    const/16 v0, 0x3c

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

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

.method public static getSizePosFromToken(J)I
    .locals 2
    .param p0, "token"    # J

    .prologue
    .line 2055
    long-to-int v0, p0

    return v0
.end method

.method private static getTagSize(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2393
    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static getTagSizeFromToken(J)I
    .locals 4
    .param p0, "token"    # J

    .prologue
    .line 2025
    const/16 v0, 0x3d

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static makeFieldId(IJ)J
    .locals 5
    .param p0, "id"    # I
    .param p1, "fieldFlags"    # J

    .prologue
    .line 2260
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method public static makeToken(IZIII)J
    .locals 6
    .param p0, "tagSize"    # I
    .param p1, "repeated"    # Z
    .param p2, "depth"    # I
    .param p3, "objectId"    # I
    .param p4, "sizePos"    # I

    .prologue
    .line 2014
    int-to-long v0, p0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    const/16 v2, 0x3d

    shl-long v2, v0, v2

    .line 2015
    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x1000000000000000L

    .line 2014
    :goto_0
    or-long/2addr v0, v2

    .line 2016
    int-to-long v2, p2

    const-wide/16 v4, 0x1ff

    and-long/2addr v2, v4

    const/16 v4, 0x33

    shl-long/2addr v2, v4

    .line 2014
    or-long/2addr v0, v2

    .line 2017
    int-to-long v2, p3

    const-wide/32 v4, 0x7ffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 2014
    or-long/2addr v0, v2

    .line 2018
    int-to-long v2, p4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 2014
    or-long/2addr v0, v2

    return-wide v0

    .line 2015
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private readRawTag()I
    .locals 2

    .prologue
    .line 2644
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2645
    const/4 v0, 0x0

    return v0

    .line 2647
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->readRawUnsigned()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private startObjectImpl(IZ)J
    .locals 7
    .param p1, "id"    # I
    .param p2, "repeated"    # Z

    .prologue
    .line 2143
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 2144
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v2

    .line 2145
    .local v2, "sizePos":I
    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2146
    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 2151
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2152
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2154
    iget-wide v0, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2156
    .local v0, "old":J
    invoke-static {p1}, Landroid/util/proto/ProtoOutputStream;->getTagSize(I)I

    move-result v3

    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v5, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    invoke-static {v3, p2, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->makeToken(IZIII)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2157
    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    return-wide v4
.end method

.method public static token2String(J)Ljava/lang/String;
    .locals 2
    .param p0, "token"    # J

    .prologue
    .line 2071
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2072
    const-string/jumbo v0, "Token(0)"

    return-object v0

    .line 2074
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Token(val=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2075
    const-string/jumbo v1, " depth="

    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2075
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v1

    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2076
    const-string/jumbo v1, " object="

    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2076
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getObjectIdFromToken(J)I

    move-result v1

    invoke-static {v1}, Landroid/util/proto/ProtoOutputStream;->convertObjectIdToOrdinal(I)I

    move-result v1

    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2077
    const-string/jumbo v1, " tagSize="

    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2077
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v1

    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2078
    const-string/jumbo v1, " sizePos="

    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2078
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getSizePosFromToken(J)I

    move-result v1

    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2079
    const/16 v1, 0x29

    .line 2074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeBoolImpl(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # Z

    .prologue
    .line 1770
    if-eqz p2, :cond_0

    .line 1771
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1773
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1775
    :cond_0
    return-void
.end method

.method private writeBytesImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # [B

    .prologue
    .line 1900
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1901
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1902
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 1904
    :cond_0
    return-void
.end method

.method private writeDoubleImpl(ID)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "val"    # D

    .prologue
    .line 942
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    .line 943
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 944
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 946
    :cond_0
    return-void
.end method

.method private writeEnumImpl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    const/4 v0, 0x0

    .line 1946
    if-eqz p2, :cond_0

    .line 1947
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1948
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1950
    :cond_0
    return-void
.end method

.method private writeFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    .line 1515
    if-eqz p2, :cond_0

    .line 1516
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1517
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1519
    :cond_0
    return-void
.end method

.method private writeFixed64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .prologue
    .line 1579
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1580
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1581
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1583
    :cond_0
    return-void
.end method

.method private writeFloatImpl(IF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # F

    .prologue
    .line 1006
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 1007
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1008
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1010
    :cond_0
    return-void
.end method

.method private writeInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    const/4 v0, 0x0

    .line 1093
    if-eqz p2, :cond_0

    .line 1094
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1095
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1097
    :cond_0
    return-void
.end method

.method private writeInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .prologue
    .line 1171
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1173
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1175
    :cond_0
    return-void
.end method

.method private writeKnownLengthHeader(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "size"    # I

    .prologue
    .line 2409
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 2412
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2413
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2414
    return-void
.end method

.method private writeRepeatedBoolImpl(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1791
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1792
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1793
    return-void
.end method

.method private writeRepeatedBytesImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # [B

    .prologue
    .line 1920
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1921
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 1922
    return-void

    .line 1920
    :cond_0
    array-length v0, p2

    goto :goto_0
.end method

.method private writeRepeatedDoubleImpl(ID)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "val"    # D

    .prologue
    .line 962
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 963
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 964
    return-void
.end method

.method private writeRepeatedEnumImpl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    .line 1966
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1967
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1968
    return-void
.end method

.method private writeRepeatedFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    .line 1535
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1536
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1537
    return-void
.end method

.method private writeRepeatedFixed64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .prologue
    .line 1599
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1600
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1601
    return-void
.end method

.method private writeRepeatedFloatImpl(IF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # F

    .prologue
    .line 1026
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1027
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1028
    return-void
.end method

.method private writeRepeatedInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    .line 1117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1118
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1119
    return-void
.end method

.method private writeRepeatedInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .prologue
    .line 1191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1192
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1193
    return-void
.end method

.method private writeRepeatedSFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    .line 1662
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1663
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1664
    return-void
.end method

.method private writeRepeatedSFixed64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .prologue
    .line 1726
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1727
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1728
    return-void
.end method

.method private writeRepeatedSInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    .line 1398
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1399
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1400
    return-void
.end method

.method private writeRepeatedSInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .prologue
    .line 1467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1468
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1469
    return-void
.end method

.method private writeRepeatedStringImpl(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1858
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1859
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1863
    :goto_0
    return-void

    .line 1861
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private writeRepeatedUInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    .line 1260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1261
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1262
    return-void
.end method

.method private writeRepeatedUInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .prologue
    .line 1329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1330
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1331
    return-void
.end method

.method private writeSFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    .line 1642
    if-eqz p2, :cond_0

    .line 1643
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1644
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1646
    :cond_0
    return-void
.end method

.method private writeSFixed64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .prologue
    .line 1706
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1707
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1708
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1710
    :cond_0
    return-void
.end method

.method private writeSInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    const/4 v0, 0x0

    .line 1378
    if-eqz p2, :cond_0

    .line 1379
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1380
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1382
    :cond_0
    return-void
.end method

.method private writeSInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .prologue
    .line 1447
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1448
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1449
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1451
    :cond_0
    return-void
.end method

.method private writeStringImpl(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 1839
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1840
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    .line 1842
    :cond_0
    return-void
.end method

.method private writeUInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .prologue
    const/4 v0, 0x0

    .line 1240
    if-eqz p2, :cond_0

    .line 1241
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1242
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1244
    :cond_0
    return-void
.end method

.method private writeUInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .prologue
    .line 1309
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1311
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1313
    :cond_0
    return-void
.end method

.method private writeUnsignedVarintFromSignedInt(I)V
    .locals 4
    .param p1, "val"    # I

    .prologue
    .line 1068
    if-ltz p1, :cond_0

    .line 1069
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1073
    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    goto :goto_0
.end method

.method private writeUtf8String(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 1871
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1872
    .local v0, "buf":[B
    array-length v2, v0

    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1873
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2, v0}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1877
    return-void

    .line 1874
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    .line 1875
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not possible"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2654
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->dumpBuffers(Ljava/lang/String;)V

    .line 2656
    return-void
.end method

.method public end(J)V
    .locals 1
    .param p1, "token"    # J

    .prologue
    .line 918
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 919
    return-void
.end method

.method public endObject(J)V
    .locals 1
    .param p1, "token"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2106
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 2109
    return-void
.end method

.method public endRepeatedObject(J)V
    .locals 1
    .param p1, "token"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2134
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2136
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 2137
    return-void
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 2618
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    if-nez v2, :cond_0

    .line 2619
    return-void

    .line 2621
    :cond_0
    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-eqz v2, :cond_1

    .line 2624
    return-void

    .line 2626
    :cond_1
    iget-boolean v2, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v2, :cond_2

    .line 2628
    return-void

    .line 2630
    :cond_2
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2631
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    .line 2633
    .local v0, "data":[B
    :try_start_0
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2634
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    return-void

    .line 2635
    :catch_0
    move-exception v1

    .line 2636
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Error flushing proto to stream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBytes()[B
    .locals 2

    .prologue
    .line 2439
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2441
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public start(J)J
    .locals 9
    .param p1, "fieldId"    # J

    .prologue
    .line 899
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 900
    long-to-int v2, p1

    .line 902
    .local v2, "id":I
    const-wide v4, 0xff00000000L

    and-long/2addr v4, p1

    const-wide v6, 0x1100000000L

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 903
    const-wide v4, 0xf0000000000L

    and-long v0, p1, v4

    .line 904
    .local v0, "count":J
    const-wide v4, 0x10000000000L

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 905
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v4

    return-wide v4

    .line 906
    :cond_0
    const-wide v4, 0x20000000000L

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    const-wide v4, 0x50000000000L

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 907
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v4

    return-wide v4

    .line 910
    .end local v0    # "count":J
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempt to call start(long) with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 911
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v5

    .line 910
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public startObject(J)J
    .locals 5
    .param p1, "fieldId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2093
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2094
    const-wide v2, 0x11100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2096
    .local v0, "id":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v2

    return-wide v2
.end method

.method public startRepeatedObject(J)J
    .locals 5
    .param p1, "fieldId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2121
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2122
    const-wide v2, 0x21100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2124
    .local v0, "id":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v2

    return-wide v2
.end method

.method public write(JD)V
    .locals 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 271
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 272
    long-to-int v0, p1

    .line 274
    .local v0, "id":I
    const-wide v4, 0xfff00000000L

    and-long/2addr v4, p1

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 389
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, double) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 390
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :sswitch_0
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 393
    :goto_0
    return-void

    .line 281
    :sswitch_1
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_0

    .line 285
    :sswitch_2
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_0

    .line 289
    :sswitch_3
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_0

    .line 293
    :sswitch_4
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_0

    .line 297
    :sswitch_5
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_0

    .line 301
    :sswitch_6
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_0

    .line 305
    :sswitch_7
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_0

    .line 309
    :sswitch_8
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_0

    .line 313
    :sswitch_9
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto :goto_0

    .line 317
    :sswitch_a
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_0

    .line 321
    :sswitch_b
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_0

    .line 325
    :sswitch_c
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_0

    .line 329
    :sswitch_d
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto :goto_0

    .line 333
    :sswitch_e
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_0

    .line 337
    :sswitch_f
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto :goto_0

    .line 341
    :sswitch_10
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_0

    .line 345
    :sswitch_11
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto :goto_0

    .line 349
    :sswitch_12
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_0

    .line 353
    :sswitch_13
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto :goto_0

    .line 357
    :sswitch_14
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_0

    .line 361
    :sswitch_15
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto :goto_0

    .line 365
    :sswitch_16
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_0

    .line 369
    :sswitch_17
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto :goto_0

    .line 373
    :sswitch_18
    cmpl-double v3, p3, v6

    if-eqz v3, :cond_0

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 377
    :sswitch_19
    cmpl-double v3, p3, v6

    if-eqz v3, :cond_1

    :goto_2
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 381
    :sswitch_1a
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto/16 :goto_0

    .line 385
    :sswitch_1b
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_0

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_2
        0x103 -> :sswitch_4
        0x104 -> :sswitch_6
        0x105 -> :sswitch_8
        0x106 -> :sswitch_a
        0x107 -> :sswitch_c
        0x108 -> :sswitch_e
        0x109 -> :sswitch_10
        0x10a -> :sswitch_12
        0x10b -> :sswitch_14
        0x10c -> :sswitch_16
        0x10d -> :sswitch_18
        0x110 -> :sswitch_1a
        0x201 -> :sswitch_1
        0x202 -> :sswitch_3
        0x203 -> :sswitch_5
        0x204 -> :sswitch_7
        0x205 -> :sswitch_9
        0x206 -> :sswitch_b
        0x207 -> :sswitch_d
        0x208 -> :sswitch_f
        0x209 -> :sswitch_11
        0x20a -> :sswitch_13
        0x20b -> :sswitch_15
        0x20c -> :sswitch_17
        0x20d -> :sswitch_19
        0x210 -> :sswitch_1b
        0x501 -> :sswitch_1
        0x502 -> :sswitch_3
        0x503 -> :sswitch_5
        0x504 -> :sswitch_7
        0x505 -> :sswitch_9
        0x506 -> :sswitch_b
        0x507 -> :sswitch_d
        0x508 -> :sswitch_f
        0x509 -> :sswitch_11
        0x50a -> :sswitch_13
        0x50b -> :sswitch_15
        0x50c -> :sswitch_17
        0x50d -> :sswitch_19
        0x510 -> :sswitch_1b
    .end sparse-switch
.end method

.method public write(JF)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 406
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 407
    long-to-int v0, p1

    .line 409
    .local v0, "id":I
    const-wide v4, 0xfff00000000L

    and-long/2addr v4, p1

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 524
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, float) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 525
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    .line 524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :sswitch_0
    float-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 528
    :goto_0
    return-void

    .line 416
    :sswitch_1
    float-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_0

    .line 420
    :sswitch_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_0

    .line 424
    :sswitch_3
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_0

    .line 428
    :sswitch_4
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_0

    .line 432
    :sswitch_5
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_0

    .line 436
    :sswitch_6
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_0

    .line 440
    :sswitch_7
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_0

    .line 444
    :sswitch_8
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_0

    .line 448
    :sswitch_9
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto :goto_0

    .line 452
    :sswitch_a
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_0

    .line 456
    :sswitch_b
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_0

    .line 460
    :sswitch_c
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_0

    .line 464
    :sswitch_d
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto :goto_0

    .line 468
    :sswitch_e
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_0

    .line 472
    :sswitch_f
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto :goto_0

    .line 476
    :sswitch_10
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_0

    .line 480
    :sswitch_11
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto :goto_0

    .line 484
    :sswitch_12
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_0

    .line 488
    :sswitch_13
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto :goto_0

    .line 492
    :sswitch_14
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_0

    .line 496
    :sswitch_15
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto :goto_0

    .line 500
    :sswitch_16
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_0

    .line 504
    :sswitch_17
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto :goto_0

    .line 508
    :sswitch_18
    cmpl-float v3, p3, v6

    if-eqz v3, :cond_0

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 512
    :sswitch_19
    cmpl-float v3, p3, v6

    if-eqz v3, :cond_1

    :goto_2
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 516
    :sswitch_1a
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto/16 :goto_0

    .line 520
    :sswitch_1b
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_2
        0x103 -> :sswitch_4
        0x104 -> :sswitch_6
        0x105 -> :sswitch_8
        0x106 -> :sswitch_a
        0x107 -> :sswitch_c
        0x108 -> :sswitch_e
        0x109 -> :sswitch_10
        0x10a -> :sswitch_12
        0x10b -> :sswitch_14
        0x10c -> :sswitch_16
        0x10d -> :sswitch_18
        0x110 -> :sswitch_1a
        0x201 -> :sswitch_1
        0x202 -> :sswitch_3
        0x203 -> :sswitch_5
        0x204 -> :sswitch_7
        0x205 -> :sswitch_9
        0x206 -> :sswitch_b
        0x207 -> :sswitch_d
        0x208 -> :sswitch_f
        0x209 -> :sswitch_11
        0x20a -> :sswitch_13
        0x20b -> :sswitch_15
        0x20c -> :sswitch_17
        0x20d -> :sswitch_19
        0x210 -> :sswitch_1b
        0x501 -> :sswitch_1
        0x502 -> :sswitch_3
        0x503 -> :sswitch_5
        0x504 -> :sswitch_7
        0x505 -> :sswitch_9
        0x506 -> :sswitch_b
        0x507 -> :sswitch_d
        0x508 -> :sswitch_f
        0x509 -> :sswitch_11
        0x50a -> :sswitch_13
        0x50b -> :sswitch_15
        0x50c -> :sswitch_17
        0x50d -> :sswitch_19
        0x510 -> :sswitch_1b
    .end sparse-switch
.end method

.method public write(JI)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 541
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 542
    long-to-int v0, p1

    .line 544
    .local v0, "id":I
    const-wide v4, 0xfff00000000L

    and-long/2addr v4, p1

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 659
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, int) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 660
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    .line 659
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :sswitch_0
    int-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 663
    :goto_0
    return-void

    .line 551
    :sswitch_1
    int-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_0

    .line 555
    :sswitch_2
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_0

    .line 559
    :sswitch_3
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_0

    .line 563
    :sswitch_4
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_0

    .line 567
    :sswitch_5
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_0

    .line 571
    :sswitch_6
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_0

    .line 575
    :sswitch_7
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_0

    .line 579
    :sswitch_8
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_0

    .line 583
    :sswitch_9
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto :goto_0

    .line 587
    :sswitch_a
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_0

    .line 591
    :sswitch_b
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_0

    .line 595
    :sswitch_c
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_0

    .line 599
    :sswitch_d
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto :goto_0

    .line 603
    :sswitch_e
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_0

    .line 607
    :sswitch_f
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto :goto_0

    .line 611
    :sswitch_10
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_0

    .line 615
    :sswitch_11
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto :goto_0

    .line 619
    :sswitch_12
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_0

    .line 623
    :sswitch_13
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto :goto_0

    .line 627
    :sswitch_14
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_0

    .line 631
    :sswitch_15
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto :goto_0

    .line 635
    :sswitch_16
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_0

    .line 639
    :sswitch_17
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto :goto_0

    .line 643
    :sswitch_18
    if-eqz p3, :cond_0

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 647
    :sswitch_19
    if-eqz p3, :cond_1

    :goto_2
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 651
    :sswitch_1a
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto :goto_0

    .line 655
    :sswitch_1b
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_0

    .line 544
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_2
        0x103 -> :sswitch_4
        0x104 -> :sswitch_6
        0x105 -> :sswitch_8
        0x106 -> :sswitch_a
        0x107 -> :sswitch_c
        0x108 -> :sswitch_e
        0x109 -> :sswitch_10
        0x10a -> :sswitch_12
        0x10b -> :sswitch_14
        0x10c -> :sswitch_16
        0x10d -> :sswitch_18
        0x110 -> :sswitch_1a
        0x201 -> :sswitch_1
        0x202 -> :sswitch_3
        0x203 -> :sswitch_5
        0x204 -> :sswitch_7
        0x205 -> :sswitch_9
        0x206 -> :sswitch_b
        0x207 -> :sswitch_d
        0x208 -> :sswitch_f
        0x209 -> :sswitch_11
        0x20a -> :sswitch_13
        0x20b -> :sswitch_15
        0x20c -> :sswitch_17
        0x20d -> :sswitch_19
        0x210 -> :sswitch_1b
        0x501 -> :sswitch_1
        0x502 -> :sswitch_3
        0x503 -> :sswitch_5
        0x504 -> :sswitch_7
        0x505 -> :sswitch_9
        0x506 -> :sswitch_b
        0x507 -> :sswitch_d
        0x508 -> :sswitch_f
        0x509 -> :sswitch_11
        0x50a -> :sswitch_13
        0x50b -> :sswitch_15
        0x50c -> :sswitch_17
        0x50d -> :sswitch_19
        0x510 -> :sswitch_1b
    .end sparse-switch
.end method

.method public write(JJ)V
    .locals 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 676
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 677
    long-to-int v0, p1

    .line 679
    .local v0, "id":I
    const-wide v4, 0xfff00000000L

    and-long/2addr v4, p1

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 794
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 795
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 682
    :sswitch_0
    long-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 798
    :goto_0
    return-void

    .line 686
    :sswitch_1
    long-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_0

    .line 690
    :sswitch_2
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_0

    .line 694
    :sswitch_3
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_0

    .line 698
    :sswitch_4
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_0

    .line 702
    :sswitch_5
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_0

    .line 706
    :sswitch_6
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_0

    .line 710
    :sswitch_7
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_0

    .line 714
    :sswitch_8
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_0

    .line 718
    :sswitch_9
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto :goto_0

    .line 722
    :sswitch_a
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_0

    .line 726
    :sswitch_b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_0

    .line 730
    :sswitch_c
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_0

    .line 734
    :sswitch_d
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto :goto_0

    .line 738
    :sswitch_e
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_0

    .line 742
    :sswitch_f
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto :goto_0

    .line 746
    :sswitch_10
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_0

    .line 750
    :sswitch_11
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto :goto_0

    .line 754
    :sswitch_12
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_0

    .line 758
    :sswitch_13
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto :goto_0

    .line 762
    :sswitch_14
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_0

    .line 766
    :sswitch_15
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto :goto_0

    .line 770
    :sswitch_16
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_0

    .line 774
    :sswitch_17
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto :goto_0

    .line 778
    :sswitch_18
    cmp-long v3, p3, v6

    if-eqz v3, :cond_0

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 782
    :sswitch_19
    cmp-long v3, p3, v6

    if-eqz v3, :cond_1

    :goto_2
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 786
    :sswitch_1a
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto/16 :goto_0

    .line 790
    :sswitch_1b
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_0

    .line 679
    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_2
        0x103 -> :sswitch_4
        0x104 -> :sswitch_6
        0x105 -> :sswitch_8
        0x106 -> :sswitch_a
        0x107 -> :sswitch_c
        0x108 -> :sswitch_e
        0x109 -> :sswitch_10
        0x10a -> :sswitch_12
        0x10b -> :sswitch_14
        0x10c -> :sswitch_16
        0x10d -> :sswitch_18
        0x110 -> :sswitch_1a
        0x201 -> :sswitch_1
        0x202 -> :sswitch_3
        0x203 -> :sswitch_5
        0x204 -> :sswitch_7
        0x205 -> :sswitch_9
        0x206 -> :sswitch_b
        0x207 -> :sswitch_d
        0x208 -> :sswitch_f
        0x209 -> :sswitch_11
        0x20a -> :sswitch_13
        0x20b -> :sswitch_15
        0x20c -> :sswitch_17
        0x20d -> :sswitch_19
        0x210 -> :sswitch_1b
        0x501 -> :sswitch_1
        0x502 -> :sswitch_3
        0x503 -> :sswitch_5
        0x504 -> :sswitch_7
        0x505 -> :sswitch_9
        0x506 -> :sswitch_b
        0x507 -> :sswitch_d
        0x508 -> :sswitch_f
        0x509 -> :sswitch_11
        0x50a -> :sswitch_13
        0x50b -> :sswitch_15
        0x50c -> :sswitch_17
        0x50d -> :sswitch_19
        0x510 -> :sswitch_1b
    .end sparse-switch
.end method

.method public write(JLjava/lang/String;)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 839
    long-to-int v0, p1

    .line 841
    .local v0, "id":I
    const-wide v2, 0xfff00000000L

    and-long/2addr v2, p1

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 852
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, String) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 853
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    .line 852
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 844
    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 856
    :goto_0
    return-void

    .line 848
    :sswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    goto :goto_0

    .line 841
    nop

    :sswitch_data_0
    .sparse-switch
        0x10e -> :sswitch_0
        0x20e -> :sswitch_1
        0x50e -> :sswitch_1
    .end sparse-switch
.end method

.method public write(JZ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z

    .prologue
    .line 809
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 810
    long-to-int v0, p1

    .line 812
    .local v0, "id":I
    const-wide v2, 0xfff00000000L

    and-long/2addr v2, p1

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 823
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, boolean) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 824
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    .line 823
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 815
    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 827
    :goto_0
    return-void

    .line 819
    :sswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto :goto_0

    .line 812
    nop

    :sswitch_data_0
    .sparse-switch
        0x10d -> :sswitch_0
        0x20d -> :sswitch_1
        0x50d -> :sswitch_1
    .end sparse-switch
.end method

.method public write(J[B)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B

    .prologue
    .line 867
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 868
    long-to-int v0, p1

    .line 870
    .local v0, "id":I
    const-wide v2, 0xfff00000000L

    and-long/2addr v2, p1

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 889
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, byte[]) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 890
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    .line 889
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 873
    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 893
    :goto_0
    return-void

    .line 877
    :sswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    goto :goto_0

    .line 881
    :sswitch_2
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    goto :goto_0

    .line 885
    :sswitch_3
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    goto :goto_0

    .line 870
    nop

    :sswitch_data_0
    .sparse-switch
        0x10f -> :sswitch_0
        0x111 -> :sswitch_2
        0x20f -> :sswitch_1
        0x211 -> :sswitch_3
        0x50f -> :sswitch_1
        0x511 -> :sswitch_3
    .end sparse-switch
.end method

.method public writeBool(JZ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1763
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1764
    const-wide v2, 0x10d00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1766
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 1767
    return-void
.end method

.method public writeBytes(J[B)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1893
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1894
    const-wide v2, 0x10f00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1896
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 1897
    return-void
.end method

.method public writeDouble(JD)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 935
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 936
    const-wide v2, 0x10100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 938
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 939
    return-void
.end method

.method public writeEnum(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1939
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1940
    const-wide v2, 0x11000000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1942
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 1943
    return-void
.end method

.method public writeFixed32(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1508
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1509
    const-wide v2, 0x10900000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1511
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 1512
    return-void
.end method

.method public writeFixed64(JJ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1572
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1573
    const-wide v2, 0x10a00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1575
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 1576
    return-void
.end method

.method public writeFloat(JF)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 999
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1000
    const-wide v2, 0x10200000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1002
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 1003
    return-void
.end method

.method public writeInt32(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1086
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1087
    const-wide v2, 0x10300000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1089
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 1090
    return-void
.end method

.method public writeInt64(JJ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1164
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1165
    const-wide v2, 0x10400000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1167
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 1168
    return-void
.end method

.method public writeObject(J[B)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2219
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2220
    const-wide v2, 0x11100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2222
    .local v0, "id":I
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    .line 2223
    return-void
.end method

.method writeObjectImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # [B

    .prologue
    .line 2226
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 2227
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 2228
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 2230
    :cond_0
    return-void
.end method

.method public writePackedBool(J[Z)V
    .locals 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # [Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1802
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1803
    const-wide v6, 0x50d00000000L

    invoke-static {p1, p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1805
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1806
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    .line 1808
    invoke-direct {p0, v2, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1811
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1813
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-boolean v3, p3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1811
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1805
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .restart local v1    # "i":I
    :cond_1
    move v3, v4

    .line 1813
    goto :goto_2

    .line 1816
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public writePackedDouble(J[D)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 973
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 974
    const-wide v4, 0x50100000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 976
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 977
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_1

    .line 978
    mul-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 979
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 980
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 979
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 976
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 983
    :cond_1
    return-void
.end method

.method public writePackedEnum(J[I)V
    .locals 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1977
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1978
    const-wide v6, 0x51000000000L

    invoke-static {p1, p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1980
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1981
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_3

    .line 1982
    const/4 v3, 0x0

    .line 1983
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1984
    aget v4, p3, v1

    .line 1985
    .local v4, "v":I
    if-ltz v4, :cond_1

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    :goto_2
    add-int/2addr v3, v5

    .line 1983
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1980
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v4    # "v":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1985
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "v":I
    :cond_1
    const/16 v5, 0xa

    goto :goto_2

    .line 1987
    .end local v4    # "v":I
    :cond_2
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1988
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 1989
    aget v5, p3, v1

    invoke-direct {p0, v5}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1988
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1992
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_3
    return-void
.end method

.method public writePackedFixed32(J[I)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1546
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1547
    const-wide v4, 0x50900000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1549
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1550
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_1

    .line 1551
    mul-int/lit8 v3, v0, 0x4

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1552
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1553
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1552
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1549
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1556
    :cond_1
    return-void
.end method

.method public writePackedFixed64(J[J)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1610
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1611
    const-wide v4, 0x50a00000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1613
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1614
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_1

    .line 1615
    mul-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1617
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1616
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1613
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1620
    :cond_1
    return-void
.end method

.method public writePackedFloat(J[F)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1037
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1038
    const-wide v4, 0x50200000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1040
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1041
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_1

    .line 1042
    mul-int/lit8 v3, v0, 0x4

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1043
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1044
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1043
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1040
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1047
    :cond_1
    return-void
.end method

.method public writePackedInt32(J[I)V
    .locals 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1132
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1133
    const-wide v6, 0x50300000000L

    invoke-static {p1, p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1135
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1136
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_3

    .line 1137
    const/4 v3, 0x0

    .line 1138
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1139
    aget v4, p3, v1

    .line 1140
    .local v4, "v":I
    if-ltz v4, :cond_1

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    :goto_2
    add-int/2addr v3, v5

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1135
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v4    # "v":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1140
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "v":I
    :cond_1
    const/16 v5, 0xa

    goto :goto_2

    .line 1142
    .end local v4    # "v":I
    :cond_2
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1143
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 1144
    aget v5, p3, v1

    invoke-direct {p0, v5}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1143
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1147
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_3
    return-void
.end method

.method public writePackedInt64(J[J)V
    .locals 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1202
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1203
    const-wide v4, 0x50400000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1205
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1206
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    .line 1207
    const/4 v3, 0x0

    .line 1208
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1209
    aget-wide v4, p3, v1

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v4

    add-int/2addr v3, v4

    .line 1208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1205
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1211
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_1
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1212
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 1213
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v6, p3, v1

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1212
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1216
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    return-void
.end method

.method public writePackedSFixed32(J[I)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1673
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1674
    const-wide v4, 0x50b00000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1676
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1677
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_1

    .line 1678
    mul-int/lit8 v3, v0, 0x4

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1679
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1680
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1679
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1676
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1683
    :cond_1
    return-void
.end method

.method public writePackedSFixed64(J[J)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1737
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1738
    const-wide v4, 0x50c00000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1740
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1741
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_1

    .line 1742
    mul-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1743
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1744
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1743
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1740
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1747
    :cond_1
    return-void
.end method

.method public writePackedSInt32(J[I)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1409
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1410
    const-wide v4, 0x50700000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1412
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1413
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    .line 1414
    const/4 v3, 0x0

    .line 1415
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1416
    aget v4, p3, v1

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawZigZag32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 1415
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1412
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1418
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_1
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1419
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 1420
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v1

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1419
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1423
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    return-void
.end method

.method public writePackedSInt64(J[J)V
    .locals 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1478
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1479
    const-wide v4, 0x50800000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1481
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1482
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    .line 1483
    const/4 v3, 0x0

    .line 1484
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1485
    aget-wide v4, p3, v1

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawZigZag64Size(J)I

    move-result v4

    add-int/2addr v3, v4

    .line 1484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1481
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1487
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_1
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1488
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 1489
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v6, p3, v1

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1488
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1492
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    return-void
.end method

.method public writePackedUInt32(J[I)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1271
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1272
    const-wide v4, 0x50500000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1274
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1275
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    .line 1276
    const/4 v3, 0x0

    .line 1277
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1278
    aget v4, p3, v1

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 1277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1274
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1280
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_1
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1281
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 1282
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v1

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1281
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1285
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    return-void
.end method

.method public writePackedUInt64(J[J)V
    .locals 9
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1340
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1341
    const-wide v4, 0x50600000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    .line 1343
    .local v2, "id":I
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 1344
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    .line 1345
    const/4 v3, 0x0

    .line 1346
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1347
    aget-wide v4, p3, v1

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v4

    add-int/2addr v3, v4

    .line 1346
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1343
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1349
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_1
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1350
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 1351
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v6, p3, v1

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1350
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1354
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    return-void
.end method

.method public writeRepeatedBool(JZ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1784
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1785
    const-wide v2, 0x20d00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1787
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 1788
    return-void
.end method

.method public writeRepeatedBytes(J[B)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1913
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1914
    const-wide v2, 0x20f00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1916
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    .line 1917
    return-void
.end method

.method public writeRepeatedDouble(JD)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 955
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 956
    const-wide v2, 0x20100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 958
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 959
    return-void
.end method

.method public writeRepeatedEnum(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1959
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1960
    const-wide v2, 0x21000000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1962
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 1963
    return-void
.end method

.method public writeRepeatedFixed32(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1528
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1529
    const-wide v2, 0x20900000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1531
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 1532
    return-void
.end method

.method public writeRepeatedFixed64(JJ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1592
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1593
    const-wide v2, 0x20a00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1595
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 1596
    return-void
.end method

.method public writeRepeatedFloat(JF)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1019
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1020
    const-wide v2, 0x20200000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1022
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 1023
    return-void
.end method

.method public writeRepeatedInt32(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1110
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1111
    const-wide v2, 0x20300000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1113
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 1114
    return-void
.end method

.method public writeRepeatedInt64(JJ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1184
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1185
    const-wide v2, 0x20400000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1187
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 1188
    return-void
.end method

.method public writeRepeatedObject(J[B)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2239
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2240
    const-wide v2, 0x21100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2242
    .local v0, "id":I
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    .line 2243
    return-void
.end method

.method writeRepeatedObjectImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # [B

    .prologue
    .line 2246
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 2247
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 2248
    return-void

    .line 2246
    :cond_0
    array-length v0, p2

    goto :goto_0
.end method

.method public writeRepeatedSFixed32(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1655
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1656
    const-wide v2, 0x20b00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1658
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 1659
    return-void
.end method

.method public writeRepeatedSFixed64(JJ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1719
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1720
    const-wide v2, 0x20c00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1722
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 1723
    return-void
.end method

.method public writeRepeatedSInt32(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1391
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1392
    const-wide v2, 0x20700000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1394
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 1395
    return-void
.end method

.method public writeRepeatedSInt64(JJ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1460
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1461
    const-wide v2, 0x20800000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1463
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 1464
    return-void
.end method

.method public writeRepeatedString(JLjava/lang/String;)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1851
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1852
    const-wide v2, 0x20e00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1854
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    .line 1855
    return-void
.end method

.method public writeRepeatedUInt32(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1253
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1254
    const-wide v2, 0x20500000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1256
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 1257
    return-void
.end method

.method public writeRepeatedUInt64(JJ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1322
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1323
    const-wide v2, 0x20600000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1325
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 1326
    return-void
.end method

.method public writeSFixed32(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1635
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1636
    const-wide v2, 0x10b00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1638
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 1639
    return-void
.end method

.method public writeSFixed64(JJ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1699
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1700
    const-wide v2, 0x10c00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1702
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 1703
    return-void
.end method

.method public writeSInt32(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1371
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1372
    const-wide v2, 0x10700000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1374
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 1375
    return-void
.end method

.method public writeSInt64(JJ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1440
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1441
    const-wide v2, 0x10800000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1443
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 1444
    return-void
.end method

.method public writeString(JLjava/lang/String;)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1832
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1833
    const-wide v2, 0x10e00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1835
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 1836
    return-void
.end method

.method public writeTag(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "wireType"    # I

    .prologue
    .line 2400
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    shl-int/lit8 v1, p1, 0x3

    or-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 2401
    return-void
.end method

.method public writeUInt32(JI)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1233
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1234
    const-wide v2, 0x10500000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1236
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 1237
    return-void
.end method

.method public writeUInt64(JJ)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1302
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1303
    const-wide v2, 0x10600000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1305
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 1306
    return-void
.end method
