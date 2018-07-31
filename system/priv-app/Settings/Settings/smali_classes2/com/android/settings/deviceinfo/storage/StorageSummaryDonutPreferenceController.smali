.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "StorageSummaryDonutPreferenceController.java"


# instance fields
.field private mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

.field private mTotalBytes:J

.field private mUsedBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 46
    const-string/jumbo v0, "pref_summary"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 47
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 48
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "pref_summary"

    return-object v0
.end method

.method public invalidateData()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 70
    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public updateBytes(JJ)V
    .locals 1
    .param p1, "used"    # J
    .param p3, "total"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    .line 89
    iput-wide p3, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->invalidateData()V

    .line 91
    return-void
.end method

.method public updateSizes(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/os/storage/VolumeInfo;)V
    .locals 8
    .param p1, "svp"    # Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 99
    .local v0, "sharedDataSize":J
    invoke-interface {p1}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getPrimaryStorageSize()J

    move-result-wide v2

    .line 101
    .local v2, "totalSize":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    .line 102
    move-wide v2, v0

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    sub-long v4, v2, v6

    .line 106
    .local v4, "usedBytes":J
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateBytes(JJ)V

    .line 107
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object v1, p1

    .line 53
    check-cast v1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 54
    .local v1, "summary":Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    .line 54
    invoke-static {v2, v4, v5, v8}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 57
    .local v0, "result":Landroid/text/format/Formatter$BytesResult;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f0f1243

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 56
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 57
    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v3, v8

    .line 58
    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v3, v9

    .line 56
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v9, [Ljava/lang/Object;

    .line 60
    iget-object v4, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    invoke-static {v4, v6, v7}, Lcom/oneplus/settings/utils/OPUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 59
    const v4, 0x7f0f1244

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setPercent(JJ)V

    .line 62
    invoke-virtual {v1, v9}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 63
    return-void
.end method
