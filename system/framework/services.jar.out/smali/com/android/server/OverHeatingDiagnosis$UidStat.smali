.class Lcom/android/server/OverHeatingDiagnosis$UidStat;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidStat"
.end annotation


# instance fields
.field mLastUpdate:J

.field mState:I

.field final mStats:Landroid/util/SparseLongArray;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "uid"    # I

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1332
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    .line 1338
    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mUid:I

    .line 1339
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    .line 1340
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mLastUpdate:J

    .line 1341
    return-void
.end method

.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;II)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1332
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    .line 1344
    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mUid:I

    .line 1345
    iput p3, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    .line 1346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mLastUpdate:J

    .line 1347
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p3, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1348
    return-void
.end method


# virtual methods
.method dump()V
    .locals 8

    .prologue
    .line 1397
    const-string/jumbo v4, "OverHeatingDiagnosis"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " foreground="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->getTotalTimeInForeground()J

    move-result-wide v6

    .line 1397
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1398
    const-string/jumbo v6, " total="

    .line 1397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->getTotalTime()J

    move-result-wide v6

    .line 1397
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1400
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 1401
    .local v1, "state":I
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    .line 1402
    .local v2, "time":J
    const-string/jumbo v4, "OverHeatingDiagnosis"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1404
    .end local v1    # "state":I
    .end local v2    # "time":J
    :cond_0
    return-void
.end method

.method getState()I
    .locals 1

    .prologue
    .line 1351
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    return v0
.end method

.method getTotalTime()J
    .locals 6

    .prologue
    .line 1388
    const-wide/16 v2, 0x0

    .line 1389
    .local v2, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1393
    :cond_0
    return-wide v2
.end method

.method getTotalTimeInForeground()J
    .locals 6

    .prologue
    .line 1377
    const-wide/16 v2, 0x0

    .line 1378
    .local v2, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1379
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 1380
    .local v1, "procState":I
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4, v1}, Lcom/android/server/OverHeatingDiagnosis;->isProcessStateForeground(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1381
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1378
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1384
    .end local v1    # "procState":I
    :cond_1
    return-wide v2
.end method

.method update(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 1355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1357
    .local v0, "current":J
    iget v6, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_1

    .line 1359
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p1, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1372
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    .line 1373
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mLastUpdate:J

    .line 1374
    return-void

    .line 1363
    :cond_1
    iget-wide v6, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mLastUpdate:J

    sub-long v2, v0, v6

    .line 1364
    .local v2, "delta":J
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    iget v7, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    invoke-virtual {v6, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    add-long v4, v6, v2

    .line 1365
    .local v4, "total":J
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    iget v7, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mState:I

    invoke-virtual {v6, v7, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1368
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_0

    .line 1369
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p1, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_0
.end method
