.class Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageRankInfo"
.end annotation


# instance fields
.field public clusterID:I

.field private hasAddLaunchTimes:Z

.field private isFinishLaunch:Z

.field private mCurRecordIndex:I

.field private mDayRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$DayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCountTime:J

.field private mLastLaunchTime:J

.field private mPackageName:Ljava/lang/String;

.field private mTempLastLaunchTime:J

.field public mTotalFGScore:D

.field private mTotalForegroundTime:J

.field private mTotalLaunchTime:J

.field public mTotalLaunchTimesScore:D

.field public mTotalLruScore:D


# direct methods
.method static synthetic -get0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    return-wide p1
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isNewAdd"    # Z
    .param p3, "hasRecord"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    .line 1310
    iput v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    .line 1313
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    .line 1314
    iput-boolean v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    .line 1317
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    .line 1319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1320
    .local v2, "now":J
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get1()J

    move-result-wide v4

    rem-long v4, v2, v4

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    .line 1322
    if-eqz p2, :cond_0

    .line 1323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get6()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 1324
    new-instance v1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1325
    .local v1, "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1328
    .end local v0    # "i":I
    .end local v1    # "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_0
    if-nez p3, :cond_1

    .line 1329
    new-instance v1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1330
    .restart local v1    # "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {v1, v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set6(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1331
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    .end local v1    # "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_1
    return-void
.end method

.method private getIndexOfRecord(J)I
    .locals 15
    .param p1, "curTime"    # J

    .prologue
    .line 1468
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v6, v5

    .line 1469
    .local v6, "size":J
    iget-wide v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    sub-long v8, p1, v8

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get1()J

    move-result-wide v10

    div-long v0, v8, v10

    .line 1470
    .local v0, "days":J
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get2()I

    move-result v8

    sub-int v2, v5, v8

    .line 1471
    .local v2, "daysToDelete":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1472
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1471
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1474
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_2

    .line 1475
    const/4 v3, 0x0

    :goto_1
    int-to-long v8, v3

    cmp-long v5, v8, v0

    if-gez v5, :cond_2

    .line 1476
    new-instance v4, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v4, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-wide v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get1()J

    move-result-wide v10

    add-int/lit8 v5, v3, 0x1

    int-to-long v12, v5

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-static {v4, v8, v9}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set6(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1478
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get2()I

    move-result v8

    if-lt v5, v8, :cond_1

    .line 1479
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1480
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1483
    .end local v4    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get8(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    .line 1484
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    .line 1485
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get6()I

    move-result v5

    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 1486
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager;->-set1(I)I

    .line 1488
    :cond_3
    iget v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    return v5
.end method


# virtual methods
.method public cleanData(J)V
    .locals 9
    .param p1, "now"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 1336
    invoke-static {v7}, Lcom/android/server/am/RestartProcessManager;->-set6(Z)Z

    .line 1337
    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager;->-set2(Z)Z

    .line 1338
    invoke-static {p1, p2}, Lcom/android/server/am/RestartProcessManager;->-set5(J)J

    .line 1339
    const-string/jumbo v1, ""

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager;->-set3(Ljava/lang/String;)Ljava/lang/String;

    .line 1341
    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    .line 1342
    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    .line 1343
    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    .line 1345
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get1()J

    move-result-wide v2

    rem-long v2, p1, v2

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    .line 1346
    iput-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    .line 1347
    iput-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    .line 1348
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1350
    new-instance v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v0, "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {v0, v2, v3}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set6(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1352
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    iput v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    .line 1354
    iput-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    .line 1355
    iput-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    .line 1356
    iput-boolean v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    .line 1357
    return-void
.end method

.method public dump()V
    .locals 4

    .prologue
    .line 1492
    const-string/jumbo v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : X : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Z : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1493
    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    .line 1492
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public increaseLaunchTime(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-virtual {v0}, Lcom/android/server/am/RestartProcessManager$DayRecord;->increaseLaunchTime()V

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    .line 1442
    const-string/jumbo v1, "RestartProcessManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Increase Total Launch Time : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", times : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1443
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get10(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v4

    .line 1442
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1443
    const-string/jumbo v2, ", index : "

    .line 1442
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1443
    iget v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    .line 1442
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    return-void
.end method

.method public resetOldRecord()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1401
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    .line 1402
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    .line 1403
    return-void
.end method

.method public resetScore()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1406
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    .line 1407
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    .line 1408
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    .line 1409
    return-void
.end method

.method public setCluster(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1497
    iput p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->clusterID:I

    .line 1498
    return-void
.end method

.method public setFinishTime(J)V
    .locals 11
    .param p1, "finishTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 1416
    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    sub-long v0, p1, v2

    .line 1417
    .local v0, "duration":J
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get0()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1418
    const-string/jumbo v2, "RestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Duration is too short, ignore : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    .line 1420
    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get8(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 1421
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    invoke-static {v2, v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set1(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1425
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    if-eqz v2, :cond_0

    .line 1426
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->decreaseLaunchTime()V

    .line 1427
    const-string/jumbo v2, ""

    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager;->-set3(Ljava/lang/String;)Ljava/lang/String;

    .line 1429
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    .line 1430
    return-void

    .line 1423
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v2, v8, v9}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set1(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    goto :goto_0

    .line 1432
    :cond_2
    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    .line 1433
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/am/RestartProcessManager$DayRecord;->setFinishTime(JLjava/lang/String;)V

    .line 1435
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    .line 1436
    return-void
.end method

.method public setLastLaunchTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 1447
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    .line 1448
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    .line 1449
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->updateSelf(J)Z

    .line 1450
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set1(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1451
    return-void
.end method

.method public setTotalLaunchTimes(J)V
    .locals 1
    .param p1, "times"    # J

    .prologue
    .line 1412
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    .line 1413
    return-void
.end method

.method public toRecord()[B
    .locals 5

    .prologue
    .line 1458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1459
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "PackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rec$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1461
    .local v0, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-virtual {v0}, Lcom/android/server/am/RestartProcessManager$DayRecord;->toRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1464
    .end local v0    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public updateSelf(J)Z
    .locals 15
    .param p1, "now"    # J

    .prologue
    .line 1360
    const/4 v4, 0x0

    .line 1361
    .local v4, "hasChangedMaxRecord":Z
    iget-wide v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    sub-long v8, p1, v8

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get1()J

    move-result-wide v10

    div-long v0, v8, v10

    .line 1362
    .local v0, "days":J
    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get2()I

    move-result v9

    sub-int v2, v8, v9

    .line 1364
    .local v2, "daysToDelete":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 1365
    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1364
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1368
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_2

    .line 1369
    const-string/jumbo v8, "RestartProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package record in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  need to add : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", max size is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1370
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get6()I

    move-result v10

    .line 1369
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const/4 v5, 0x0

    :goto_1
    int-to-long v8, v5

    cmp-long v8, v8, v0

    if-gez v8, :cond_2

    .line 1372
    new-instance v7, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1373
    .local v7, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-wide v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get1()J

    move-result-wide v10

    add-int/lit8 v12, v5, 0x1

    int-to-long v12, v12

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set6(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1374
    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get2()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 1375
    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1376
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1379
    .end local v7    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_2
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get6()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v8, v9, :cond_3

    .line 1380
    const-string/jumbo v8, "RestartProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package record size is abnormal in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " , size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1381
    const-string/jumbo v10, ", max size is "

    .line 1380
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1381
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get6()I

    move-result v10

    .line 1380
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get6()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v3, v8, v9

    .line 1384
    .local v3, "diff":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_3

    .line 1385
    new-instance v7, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1386
    .restart local v7    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1384
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1390
    .end local v3    # "diff":I
    .end local v6    # "j":I
    .end local v7    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_3
    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get8(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    .line 1391
    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    .line 1392
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->-get6()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 1393
    iget-object v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager;->-set1(I)I

    .line 1394
    const/4 v4, 0x1

    .line 1396
    :cond_4
    const-string/jumbo v8, "RestartProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateSelf :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    return v4
.end method
