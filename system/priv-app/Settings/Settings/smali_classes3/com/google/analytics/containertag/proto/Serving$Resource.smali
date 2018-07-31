.class public final Lcom/google/analytics/containertag/proto/Serving$Resource;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Resource;

.field private static final TEMPLATE_VERSION_SET_DEFAULT:Ljava/lang/String; = "0"


# instance fields
.field public key:[Ljava/lang/String;

.field public liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

.field public macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public malwareScanAuthCode:Ljava/lang/String;

.field public oBSOLETEEnableAutoEventTracking:Z

.field public predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public previewAuthCode:Ljava/lang/String;

.field public property:[Lcom/google/analytics/containertag/proto/Serving$Property;

.field public reportingSampleRate:F

.field public resourceFormatVersion:I

.field public rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

.field public supplemental:[Ljava/lang/String;

.field public tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public templateVersionSet:Ljava/lang/String;

.field public usageContext:[Ljava/lang/String;

.field public value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Resource;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1348
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1351
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1354
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1357
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1360
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1363
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1366
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1369
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1372
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1375
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    .line 1378
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1382
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1385
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1391
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    .line 1394
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    .line 1397
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1400
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    .line 1348
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1911
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1905
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1403
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1404
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1405
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1406
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1407
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1408
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1409
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1410
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1411
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    .line 1412
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    .line 1413
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    .line 1414
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    .line 1415
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1416
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    .line 1417
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    .line 1418
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1419
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    .line 1420
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    .line 1421
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->cachedSize:I

    .line 1422
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1427
    if-eq p1, p0, :cond_2

    .line 1428
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1429
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 1430
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$Resource;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    :goto_0
    move v1, v2

    :cond_1
    return v1

    .line 1427
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :cond_2
    return v1

    .line 1428
    :cond_3
    return v2

    .line 1430
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_8
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_9
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    iget-boolean v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_a
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto/16 :goto_0

    :cond_b
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto/16 :goto_0

    :cond_c
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-eqz v3, :cond_7

    goto/16 :goto_0

    :cond_d
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto/16 :goto_0

    :cond_e
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v3, :cond_9

    goto/16 :goto_0

    :cond_f
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_1

    goto/16 :goto_0
.end method

.method public getSerializedSize()I
    .locals 17

    .prologue
    .line 1595
    const/4 v14, 0x0

    .line 1596
    .local v14, "size":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-nez v15, :cond_a

    .line 1605
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v15, :cond_c

    .line 1611
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v15, :cond_d

    .line 1617
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v15, :cond_e

    .line 1623
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v15, :cond_f

    .line 1629
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v15, :cond_10

    .line 1635
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v15, :cond_11

    .line 1641
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1645
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1649
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string/jumbo v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1653
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 1657
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v15, :cond_16

    .line 1661
    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_7

    .line 1662
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v15

    add-int/2addr v14, v15

    .line 1665
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-nez v15, :cond_17

    .line 1674
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-nez v15, :cond_19

    .line 1678
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-nez v15, :cond_1a

    .line 1682
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-nez v15, :cond_1b

    .line 1691
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v15}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1692
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->cachedSize:I

    .line 1693
    return v14

    .line 1596
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_0

    .line 1597
    const/4 v6, 0x0

    .line 1598
    .local v6, "dataSize":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_a
    if-lt v12, v13, :cond_b

    .line 1602
    add-int/lit8 v14, v6, 0x0

    .line 1603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    goto/16 :goto_0

    .line 1598
    :cond_b
    aget-object v11, v5, v12

    .line 1599
    .local v11, "element":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v6, v15

    .line 1598
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 1606
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "dataSize":I
    .end local v11    # "element":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v4, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v13, v4

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_b
    if-ge v12, v13, :cond_1

    aget-object v10, v4, v12

    .line 1607
    .local v10, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v15, 0x2

    invoke-static {v15, v10}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1606
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 1612
    .end local v4    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v10    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .local v2, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    array-length v13, v2

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_c
    if-ge v12, v13, :cond_2

    aget-object v8, v2, v12

    .line 1613
    .local v8, "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    const/4 v15, 0x3

    invoke-static {v15, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1612
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 1618
    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v8    # "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v13, v1

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_d
    if-ge v12, v13, :cond_3

    aget-object v7, v1, v12

    .line 1619
    .local v7, "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v15, 0x4

    invoke-static {v15, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1618
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 1624
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v13, v1

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_e
    if-ge v12, v13, :cond_4

    aget-object v7, v1, v12

    .line 1625
    .restart local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v15, 0x5

    invoke-static {v15, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1624
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 1630
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v13, v1

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_f
    if-ge v12, v13, :cond_5

    aget-object v7, v1, v12

    .line 1631
    .restart local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v15, 0x6

    invoke-static {v15, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1630
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 1636
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v3, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_10
    if-ge v12, v13, :cond_6

    aget-object v9, v3, v12

    .line 1637
    .local v9, "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    const/4 v15, 0x7

    invoke-static {v15, v9}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    .line 1636
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    .line 1642
    .end local v3    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v9    # "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_1

    .line 1646
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_2

    .line 1650
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const/16 v16, 0xc

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_3

    .line 1654
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const/16 v16, 0xd

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_4

    .line 1658
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    const/16 v16, 0xe

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_5

    .line 1665
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_8

    .line 1666
    const/4 v6, 0x0

    .line 1667
    .restart local v6    # "dataSize":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v13, v5

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_11
    if-lt v12, v13, :cond_18

    .line 1671
    add-int/2addr v14, v6

    .line 1672
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    goto/16 :goto_6

    .line 1667
    :cond_18
    aget-object v11, v5, v12

    .line 1668
    .restart local v11    # "element":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v6, v15

    .line 1667
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 1675
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "dataSize":I
    .end local v11    # "element":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_19
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    const/16 v16, 0x11

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_7

    .line 1679
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    const/16 v16, 0x12

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v15

    add-int/2addr v14, v15

    goto/16 :goto_8

    .line 1682
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_9

    .line 1683
    const/4 v6, 0x0

    .line 1684
    .restart local v6    # "dataSize":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v13, v5

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_12
    if-lt v12, v13, :cond_1c

    .line 1688
    add-int/2addr v14, v6

    .line 1689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    goto/16 :goto_9

    .line 1684
    :cond_1c
    aget-object v11, v5, v12

    .line 1685
    .restart local v11    # "element":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v6, v15

    .line 1684
    add-int/lit8 v12, v12, 0x1

    goto :goto_12
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1451
    const/16 v1, 0x11

    .line 1452
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 1458
    .end local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1460
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_5

    .line 1464
    .end local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_7

    .line 1466
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-lt v0, v2, :cond_8

    .line 1470
    .end local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v2, :cond_a

    .line 1472
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v2, v2

    if-lt v0, v2, :cond_b

    .line 1476
    .end local v0    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v2, :cond_d

    .line 1478
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    if-lt v0, v2, :cond_e

    .line 1482
    .end local v0    # "i":I
    :goto_9
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v2, :cond_10

    .line 1484
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    if-lt v0, v2, :cond_11

    .line 1488
    .end local v0    # "i":I
    :goto_b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v2, :cond_13

    .line 1490
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    if-lt v0, v2, :cond_14

    .line 1494
    .end local v0    # "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v2, :cond_16

    .line 1496
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v2, v2

    if-lt v0, v2, :cond_17

    .line 1500
    .end local v0    # "i":I
    :goto_f
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    add-int v1, v4, v2

    .line 1501
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int v1, v4, v2

    .line 1502
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12
    add-int v1, v4, v2

    .line 1503
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int v1, v4, v2

    .line 1504
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hashCode()I

    move-result v2

    :goto_14
    add-int v1, v4, v2

    .line 1505
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 1506
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-nez v2, :cond_1e

    const/4 v2, 0x2

    :goto_15
    add-int v1, v4, v2

    .line 1507
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 1509
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_16
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_20

    .line 1513
    .end local v0    # "i":I
    :goto_17
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    add-int v1, v2, v4

    .line 1514
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_0
    add-int v1, v2, v3

    .line 1515
    return v1

    .line 1452
    :cond_1
    const/16 v1, 0x20f

    goto/16 :goto_1

    .line 1455
    .restart local v0    # "i":I
    :cond_2
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_18
    add-int v1, v4, v2

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 1455
    goto :goto_18

    .line 1458
    .end local v0    # "i":I
    :cond_4
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_3

    .line 1461
    .restart local v0    # "i":I
    :cond_5
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    add-int v1, v4, v2

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_6
    move v2, v3

    .line 1461
    goto :goto_19

    .line 1464
    .end local v0    # "i":I
    :cond_7
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_5

    .line 1467
    .restart local v0    # "i":I
    :cond_8
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_1a
    add-int v1, v4, v2

    .line 1466
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_9
    move v2, v3

    .line 1467
    goto :goto_1a

    .line 1470
    .end local v0    # "i":I
    :cond_a
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_7

    .line 1473
    .restart local v0    # "i":I
    :cond_b
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v2, v2, v0

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Property;->hashCode()I

    move-result v2

    :goto_1b
    add-int v1, v4, v2

    .line 1472
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_c
    move v2, v3

    .line 1473
    goto :goto_1b

    .line 1476
    .end local v0    # "i":I
    :cond_d
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_9

    .line 1479
    .restart local v0    # "i":I
    :cond_e
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    :goto_1c
    add-int v1, v4, v2

    .line 1478
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_f
    move v2, v3

    .line 1479
    goto :goto_1c

    .line 1482
    .end local v0    # "i":I
    :cond_10
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_b

    .line 1485
    .restart local v0    # "i":I
    :cond_11
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    :goto_1d
    add-int v1, v4, v2

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_12
    move v2, v3

    .line 1485
    goto :goto_1d

    .line 1488
    .end local v0    # "i":I
    :cond_13
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_d

    .line 1491
    .restart local v0    # "i":I
    :cond_14
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    :goto_1e
    add-int v1, v4, v2

    .line 1490
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_15
    move v2, v3

    .line 1491
    goto :goto_1e

    .line 1494
    .end local v0    # "i":I
    :cond_16
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_f

    .line 1497
    .restart local v0    # "i":I
    :cond_17
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v2, v2, v0

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Rule;->hashCode()I

    move-result v2

    :goto_1f
    add-int v1, v4, v2

    .line 1496
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_18
    move v2, v3

    .line 1497
    goto :goto_1f

    .end local v0    # "i":I
    :cond_19
    move v2, v3

    .line 1500
    goto/16 :goto_10

    :cond_1a
    move v2, v3

    .line 1501
    goto/16 :goto_11

    :cond_1b
    move v2, v3

    .line 1502
    goto/16 :goto_12

    :cond_1c
    move v2, v3

    .line 1503
    goto/16 :goto_13

    :cond_1d
    move v2, v3

    .line 1504
    goto/16 :goto_14

    .line 1506
    :cond_1e
    const/4 v2, 0x1

    goto/16 :goto_15

    .line 1507
    :cond_1f
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_17

    .line 1510
    .restart local v0    # "i":I
    :cond_20
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    add-int v1, v4, v2

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    :cond_21
    move v2, v3

    .line 1510
    goto :goto_20
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 11
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1701
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v7

    .line 1702
    .local v7, "tag":I
    sparse-switch v7, :sswitch_data_0

    .line 1706
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 1710
    :goto_1
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v9, p1, v7}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1712
    return-object p0

    .line 1704
    :sswitch_0
    return-object p0

    .line 1707
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    goto :goto_1

    .line 1717
    :sswitch_1
    const/16 v9, 0xa

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1718
    .local v0, "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v1, v9

    .line 1719
    .local v1, "i":I
    add-int v9, v1, v0

    new-array v6, v9, [Ljava/lang/String;

    .line 1720
    .local v6, "newArray":[Ljava/lang/String;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v9, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1721
    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .line 1722
    :goto_2
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_2

    .line 1727
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    goto :goto_0

    .line 1723
    :cond_2
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 1724
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1722
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1731
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v6    # "newArray":[Ljava/lang/String;
    :sswitch_2
    const/16 v9, 0x12

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1732
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v9

    .line 1733
    .restart local v1    # "i":I
    :goto_3
    add-int v9, v1, v0

    new-array v5, v9, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1734
    .local v5, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v9, :cond_4

    .line 1737
    :goto_4
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 1738
    :goto_5
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_5

    .line 1744
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v10, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v10}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v10, v9, v1

    .line 1745
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_3
    move v1, v8

    .line 1732
    goto :goto_3

    .line 1735
    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_4
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v9, v8, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 1739
    :cond_5
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v10, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v10}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v10, v9, v1

    .line 1740
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1741
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1738
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1749
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_3
    const/16 v9, 0x1a

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1750
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v1, v9

    .line 1751
    .restart local v1    # "i":I
    :goto_6
    add-int v9, v1, v0

    new-array v3, v9, [Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1752
    .local v3, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v9, :cond_7

    .line 1755
    :goto_7
    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 1756
    :goto_8
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_8

    .line 1762
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v10, v9, v1

    .line 1763
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :cond_6
    move v1, v8

    .line 1750
    goto :goto_6

    .line 1753
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :cond_7
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v9, v8, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 1757
    :cond_8
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v10, v9, v1

    .line 1758
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1759
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1756
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1767
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Property;
    :sswitch_4
    const/16 v9, 0x22

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1768
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v9

    .line 1769
    .restart local v1    # "i":I
    :goto_9
    add-int v9, v1, v0

    new-array v2, v9, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1770
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v9, :cond_a

    .line 1773
    :goto_a
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1774
    :goto_b
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_b

    .line 1780
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1781
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_9
    move v1, v8

    .line 1768
    goto :goto_9

    .line 1771
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_a
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v9, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    .line 1775
    :cond_b
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1776
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1777
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1774
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1785
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_5
    const/16 v9, 0x2a

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1786
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v9

    .line 1787
    .restart local v1    # "i":I
    :goto_c
    add-int v9, v1, v0

    new-array v2, v9, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1788
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v9, :cond_d

    .line 1791
    :goto_d
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1792
    :goto_e
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_e

    .line 1798
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1799
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_c
    move v1, v8

    .line 1786
    goto :goto_c

    .line 1789
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_d
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v9, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    .line 1793
    :cond_e
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1794
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1795
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1792
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1803
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_6
    const/16 v9, 0x32

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1804
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v1, v9

    .line 1805
    .restart local v1    # "i":I
    :goto_f
    add-int v9, v1, v0

    new-array v2, v9, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1806
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v9, :cond_10

    .line 1809
    :goto_10
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 1810
    :goto_11
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_11

    .line 1816
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1817
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_f
    move v1, v8

    .line 1804
    goto :goto_f

    .line 1807
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_10
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v9, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10

    .line 1811
    :cond_11
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v10, v9, v1

    .line 1812
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1813
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1810
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1821
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :sswitch_7
    const/16 v9, 0x3a

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1822
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v1, v9

    .line 1823
    .restart local v1    # "i":I
    :goto_12
    add-int v9, v1, v0

    new-array v4, v9, [Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1824
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v9, :cond_13

    .line 1827
    :goto_13
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 1828
    :goto_14
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_14

    .line 1834
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v10, v9, v1

    .line 1835
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :cond_12
    move v1, v8

    .line 1822
    goto :goto_12

    .line 1825
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :cond_13
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13

    .line 1829
    :cond_14
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    new-instance v10, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v10}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v10, v9, v1

    .line 1830
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v9, v9, v1

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1831
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1828
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1839
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    goto/16 :goto_0

    .line 1843
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    goto/16 :goto_0

    .line 1847
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    goto/16 :goto_0

    .line 1851
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    goto/16 :goto_0

    .line 1855
    :sswitch_c
    new-instance v9, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v9}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    iput-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1856
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {p1, v9}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1860
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v9

    iput v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    goto/16 :goto_0

    .line 1864
    :sswitch_e
    const/16 v9, 0x82

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1865
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v1, v9

    .line 1866
    .restart local v1    # "i":I
    add-int v9, v1, v0

    new-array v6, v9, [Ljava/lang/String;

    .line 1867
    .restart local v6    # "newArray":[Ljava/lang/String;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v9, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1868
    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .line 1869
    :goto_15
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_15

    .line 1874
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    goto/16 :goto_0

    .line 1870
    :cond_15
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 1871
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1869
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1878
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v6    # "newArray":[Ljava/lang/String;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    goto/16 :goto_0

    .line 1882
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    goto/16 :goto_0

    .line 1886
    :sswitch_11
    const/16 v9, 0x9a

    invoke-static {p1, v9}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1887
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v1, v9

    .line 1888
    .restart local v1    # "i":I
    add-int v9, v1, v0

    new-array v6, v9, [Ljava/lang/String;

    .line 1889
    .restart local v6    # "newArray":[Ljava/lang/String;
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v9, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1890
    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .line 1891
    :goto_16
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_16

    .line 1896
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    goto/16 :goto_0

    .line 1892
    :cond_16
    iget-object v9, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 1893
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1891
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1702
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7d -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x90 -> :sswitch_10
        0x9a -> :sswitch_11
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
    .line 1344
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 14
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1520
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-nez v12, :cond_a

    .line 1525
    :cond_0
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v12, :cond_b

    .line 1530
    :cond_1
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v12, :cond_c

    .line 1535
    :cond_2
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v12, :cond_d

    .line 1540
    :cond_3
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v12, :cond_e

    .line 1545
    :cond_4
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v12, :cond_f

    .line 1550
    :cond_5
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v12, :cond_10

    .line 1555
    :cond_6
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1558
    :goto_0
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1561
    :goto_1
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string/jumbo v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1564
    :goto_2
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1567
    :goto_3
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v12, :cond_15

    .line 1570
    :goto_4
    iget v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_7

    .line 1571
    iget v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/16 v13, 0xf

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1573
    :cond_7
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-nez v12, :cond_16

    .line 1578
    :cond_8
    iget v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-nez v12, :cond_17

    .line 1581
    :goto_5
    iget-boolean v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-nez v12, :cond_18

    .line 1584
    :goto_6
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-nez v12, :cond_19

    .line 1589
    :cond_9
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v12, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1591
    return-void

    .line 1521
    :cond_a
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_7
    if-ge v10, v11, :cond_0

    aget-object v9, v4, v10

    .line 1522
    .local v9, "element":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {p1, v12, v9}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1521
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1526
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "element":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_b
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v3, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v11, v3

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_8
    if-ge v10, v11, :cond_1

    aget-object v8, v3, v10

    .line 1527
    .local v8, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v12, 0x2

    invoke-virtual {p1, v12, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1526
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1531
    .end local v3    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v8    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_c
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    array-length v11, v1

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_9
    if-ge v10, v11, :cond_2

    aget-object v6, v1, v10

    .line 1532
    .local v6, "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    const/4 v12, 0x3

    invoke-virtual {p1, v12, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1531
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 1536
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v6    # "element":Lcom/google/analytics/containertag/proto/Serving$Property;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v11, v0

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_a
    if-ge v10, v11, :cond_3

    aget-object v5, v0, v10

    .line 1537
    .local v5, "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v12, 0x4

    invoke-virtual {p1, v12, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1536
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 1541
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v11, v0

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_b
    if-ge v10, v11, :cond_4

    aget-object v5, v0, v10

    .line 1542
    .restart local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v12, 0x5

    invoke-virtual {p1, v12, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1541
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1546
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_f
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    array-length v11, v0

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_c
    if-ge v10, v11, :cond_5

    aget-object v5, v0, v10

    .line 1547
    .restart local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    const/4 v12, 0x6

    invoke-virtual {p1, v12, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1546
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 1551
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_10
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    .local v2, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    array-length v11, v2

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_d
    if-ge v10, v11, :cond_6

    aget-object v7, v2, v10

    .line 1552
    .local v7, "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    const/4 v12, 0x7

    invoke-virtual {p1, v12, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1551
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 1556
    .end local v2    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v7    # "element":Lcom/google/analytics/containertag/proto/Serving$Rule;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_11
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const/16 v13, 0x9

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1559
    :cond_12
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const/16 v13, 0xa

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1562
    :cond_13
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const/16 v13, 0xc

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 1565
    :cond_14
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const/16 v13, 0xd

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1568
    :cond_15
    iget-object v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    const/16 v13, 0xe

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_4

    .line 1574
    :cond_16
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v11, v4

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_e
    if-ge v10, v11, :cond_8

    aget-object v9, v4, v10

    .line 1575
    .restart local v9    # "element":Ljava/lang/String;
    const/16 v12, 0x10

    invoke-virtual {p1, v12, v9}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1574
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 1579
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "element":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_17
    iget v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    const/16 v13, 0x11

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    goto/16 :goto_5

    .line 1582
    :cond_18
    iget-boolean v12, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    const/16 v13, 0x12

    invoke-virtual {p1, v13, v12}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    goto/16 :goto_6

    .line 1585
    :cond_19
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v11, v4

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_f
    if-ge v10, v11, :cond_9

    aget-object v9, v4, v10

    .line 1586
    .restart local v9    # "element":Ljava/lang/String;
    const/16 v12, 0x13

    invoke-virtual {p1, v12, v9}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1585
    add-int/lit8 v10, v10, 0x1

    goto :goto_f
.end method
