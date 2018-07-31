.class public Landroid/metrics/LogMaker;
.super Ljava/lang/Object;
.source "LogMaker.java"


# static fields
.field public static final MAX_SERIALIZED_SIZE:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "LogBuilder"


# instance fields
.field private entries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "category"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 53
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "items"    # [Ljava/lang/Object;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->deserialize([Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    goto :goto_0
.end method


# virtual methods
.method public addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 243
    if-nez p2, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->clearTaggedData(I)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->isValidValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 248
    const-string/jumbo v1, "Value must be loggable type - int, long, float, String"

    .line 247
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_2

    .line 251
    const-string/jumbo v0, "LogBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Log value too long, omitted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-object p0

    .line 253
    :cond_2
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public clearCategory()Landroid/metrics/LogMaker;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 73
    return-object p0
.end method

.method public clearPackageName()Landroid/metrics/LogMaker;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 149
    return-object p0
.end method

.method public clearProcessId()Landroid/metrics/LogMaker;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x361

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 169
    return-object p0
.end method

.method public clearSubtype()Landroid/metrics/LogMaker;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 97
    return-object p0
.end method

.method public clearTaggedData(I)Landroid/metrics/LogMaker;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 265
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 266
    return-object p0
.end method

.method public clearTimestamp()Landroid/metrics/LogMaker;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x325

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    return-object p0
.end method

.method public clearType()Landroid/metrics/LogMaker;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 85
    return-object p0
.end method

.method public clearUid()Landroid/metrics/LogMaker;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x3af

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 190
    return-object p0
.end method

.method public deserialize([Ljava/lang/Object;)V
    .locals 7
    .param p1, "items"    # [Ljava/lang/Object;

    .prologue
    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, v0

    .line 411
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_3

    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 412
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v2, p1, v1

    .line 413
    .local v2, "key":Ljava/lang/Object;
    array-length v4, p1

    if-ge v0, v4, :cond_0

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-object v3, p1, v0

    .local v3, "value":Ljava/lang/Object;
    move v0, v1

    .line 414
    .end local v1    # "i":I
    .end local v3    # "value":Ljava/lang/Object;
    .restart local v0    # "i":I
    :goto_1
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 415
    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 413
    .end local v1    # "i":I
    .restart local v0    # "i":I
    .restart local v2    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 417
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v5, "LogBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid key "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_2

    const-string/jumbo v4, "null"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 420
    .end local v0    # "i":I
    .end local v2    # "key":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public getCategory()I
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x2f5

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 287
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 289
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getCounterBucket()J
    .locals 4

    .prologue
    .line 365
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x321

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 367
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 369
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getCounterName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 355
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x31f

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 357
    check-cast v0, Ljava/lang/String;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0

    .line 359
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCounterValue()I
    .locals 3

    .prologue
    .line 381
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x322

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 382
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 383
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 385
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x326

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Ljava/lang/String;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0

    .line 329
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProcessId()I
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x361

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 337
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 339
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSubtype()I
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x2f7

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 307
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 309
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getTaggedData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 280
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 4

    .prologue
    .line 315
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x325

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 317
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 319
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getType()I
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x2f6

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 297
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 299
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getUid()I
    .locals 3

    .prologue
    .line 345
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x3af

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 346
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 347
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 349
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public isLongCounterBucket()Z
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x321

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 376
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    return v1
.end method

.method public isSubsetOf(Landroid/metrics/LogMaker;)Z
    .locals 6
    .param p1, "that"    # Landroid/metrics/LogMaker;

    .prologue
    const/4 v5, 0x0

    .line 427
    if-nez p1, :cond_0

    .line 428
    return v5

    .line 430
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 431
    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 432
    .local v1, "key":I
    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 433
    .local v3, "thisValue":Ljava/lang/Object;
    iget-object v4, p1, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 434
    .local v2, "thatValue":Ljava/lang/Object;
    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 435
    :cond_1
    return v5

    .line 434
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    .end local v1    # "key":I
    .end local v2    # "thatValue":Ljava/lang/Object;
    .end local v3    # "thisValue":Ljava/lang/Object;
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method public isValidValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 273
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 274
    instance-of v0, p1, Ljava/lang/String;

    .line 273
    if-nez v0, :cond_0

    .line 275
    instance-of v0, p1, Ljava/lang/Long;

    .line 273
    if-nez v0, :cond_0

    .line 276
    instance-of v0, p1, Ljava/lang/Float;

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public serialize()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 393
    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    .line 394
    .local v1, "out":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 395
    mul-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 396
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v2, v3

    .line 399
    .local v2, "size":I
    const/16 v3, 0xfa0

    if-le v2, v3, :cond_1

    .line 400
    const-string/jumbo v3, "LogBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Log line too long, did not emit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    .line 403
    :cond_1
    return-object v1
.end method

.method public setCategory(I)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "category"    # I

    .prologue
    .line 66
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    return-object p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 141
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x326

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x367

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    return-object p0
.end method

.method public setCounterBucket(I)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "bucket"    # I

    .prologue
    .line 211
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x321

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    return-object p0
.end method

.method public setCounterBucket(J)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "bucket"    # J

    .prologue
    .line 222
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x321

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    return-object p0
.end method

.method public setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x31f

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    return-object p0
.end method

.method public setCounterValue(I)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 233
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x322

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    return-object p0
.end method

.method public setLatency(J)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "milliseconds"    # J

    .prologue
    .line 106
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x319

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    return-object p0
.end method

.method public setProcessId(I)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 160
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x361

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    return-object p0
.end method

.method public setSubtype(I)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "subtype"    # I

    .prologue
    .line 90
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    return-object p0
.end method

.method public setTimestamp(J)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 118
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x325

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    return-object p0
.end method

.method public setType(I)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 78
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    return-object p0
.end method

.method public setUid(I)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 180
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3af

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    return-object p0
.end method
