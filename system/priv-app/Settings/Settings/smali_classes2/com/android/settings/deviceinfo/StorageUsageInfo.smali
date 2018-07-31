.class public Lcom/android/settings/deviceinfo/StorageUsageInfo;
.super Ljava/lang/Object;
.source "StorageUsageInfo.java"


# instance fields
.field private mTotalBytes:J

.field private mUsedBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFreeBytes()J
    .locals 4

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageUsageInfo;->mTotalBytes:J

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/StorageUsageInfo;->mUsedBytes:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageUsageInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public getUsedBytes()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageUsageInfo;->mUsedBytes:J

    return-wide v0
.end method

.method public loadStorageInfo(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 15
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 16
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 17
    .local v0, "availableBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    .line 19
    .local v6, "totalBlocks":J
    mul-long v8, v2, v6

    iput-wide v8, p0, Lcom/android/settings/deviceinfo/StorageUsageInfo;->mTotalBytes:J

    .line 20
    sub-long v8, v6, v0

    mul-long/2addr v8, v2

    iput-wide v8, p0, Lcom/android/settings/deviceinfo/StorageUsageInfo;->mUsedBytes:J

    .line 21
    return-void
.end method
