.class public Lcom/android/settings/deviceinfo/StorageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageSettings$1;,
        Lcom/android/settings/deviceinfo/StorageSettings$2;,
        Lcom/android/settings/deviceinfo/StorageSettings$3;,
        Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$MountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;,
        Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    }
.end annotation


# static fields
.field static final COLOR_PRIVATE:[I

.field static final COLOR_PUBLIC:I

.field private static final REQUEST_SHOULD_FINISH:I = 0x63

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field static final TAG:Ljava/lang/String; = "StorageSettings"

.field private static final TAG_DISK_INIT:Ljava/lang/String; = "disk_init"

.field private static final TAG_VOLUME_UNMOUNTED:Ljava/lang/String; = "volume_unmounted"

.field private static sTotalInternalStorage:J


# instance fields
.field private isFinishing:Z

.field private mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private shouldFinish:Z


# direct methods
.method static synthetic -wrap0(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/StorageSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const-string/jumbo v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 84
    const-string/jumbo v1, "#ff26a69a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 85
    const-string/jumbo v1, "#ffab47bc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 86
    const-string/jumbo v1, "#fff2a600"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 87
    const-string/jumbo v1, "#ffec407a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 88
    const-string/jumbo v1, "#ffc0ca33"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 83
    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    .line 612
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$2;-><init>()V

    .line 611
    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 624
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$3;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$3;-><init>()V

    .line 623
    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 99
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->isFinishing:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->shouldFinish:Z

    .line 145
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 75
    return-void
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    const/4 v0, 0x0

    return v0

    .line 163
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized refresh()V
    .locals 38

    .prologue
    monitor-enter p0

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->isFinishing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    .line 176
    .local v3, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v2, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 182
    const/16 v25, 0x0

    .line 183
    .local v25, "privateCount":I
    const-wide/16 v28, 0x0

    .line 184
    .local v28, "privateUsedBytes":J
    const-wide/16 v26, 0x0

    .line 186
    .local v26, "privateTotalBytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v37

    .line 187
    .local v37, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    invoke-interface/range {v37 .. v37}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, "vol$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 190
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_2

    .line 192
    sget-wide v8, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    .line 191
    invoke-static {v4, v8, v9}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v6

    .line 193
    .local v6, "volumeTotalBytes":J
    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v5

    .line 194
    .local v5, "color":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 195
    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V

    .line 194
    invoke-virtual {v8, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 196
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v23

    .line 199
    .local v23, "path":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v34

    .line 200
    .local v34, "totalBytes":J
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v20

    .line 201
    .local v20, "freeBytes":J
    sub-long v28, v34, v20

    .line 202
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v8

    add-long v26, v26, v8

    goto :goto_0

    .line 204
    .end local v5    # "color":I
    .end local v6    # "volumeTotalBytes":J
    .end local v20    # "freeBytes":J
    .end local v23    # "path":Ljava/io/File;
    .end local v34    # "totalBytes":J
    :cond_2
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 206
    new-instance v8, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v11

    const-wide/16 v12, 0x0

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V

    .line 205
    invoke-virtual {v2, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v25    # "privateCount":I
    .end local v26    # "privateTotalBytes":J
    .end local v28    # "privateUsedBytes":J
    .end local v36    # "vol$iterator":Ljava/util/Iterator;
    .end local v37    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 211
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v25    # "privateCount":I
    .restart local v26    # "privateTotalBytes":J
    .restart local v28    # "privateUsedBytes":J
    .restart local v36    # "vol$iterator":Ljava/util/Iterator;
    .restart local v37    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v32

    .line 212
    .local v32, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "rec$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/VolumeRecord;

    .line 213
    .local v30, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_4

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-nez v2, :cond_4

    .line 216
    const v2, 0x7f02025e

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 217
    .local v19, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 220
    new-instance v24, Landroid/support/v7/preference/Preference;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 221
    .local v24, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    const v2, 0x10401f9

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 224
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 230
    .end local v19    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "pref":Landroid/support/v7/preference/Preference;
    .end local v30    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v18

    .line 231
    .local v18, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "disk$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/DiskInfo;

    .line 232
    .local v16, "disk":Landroid/os/storage/DiskInfo;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v2, :cond_6

    move-object/from16 v0, v16

    iget-wide v8, v0, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v12, 0x0

    cmp-long v2, v8, v12

    if-lez v2, :cond_6

    .line 233
    new-instance v24, Landroid/support/v7/preference/Preference;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 234
    .restart local v24    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    const v2, 0x10401ff

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 237
    const v2, 0x7f02025e

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 242
    .end local v16    # "disk":Landroid/os/storage/DiskInfo;
    .end local v24    # "pref":Landroid/support/v7/preference/Preference;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v8, 0x0

    move-wide/from16 v0, v28

    invoke-static {v2, v0, v1, v8}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v33

    .line 243
    .local v33, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v8, 0x7f0f09c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/CharSequence;

    .line 244
    move-object/from16 v0, v33

    iget-object v11, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v9, v12

    move-object/from16 v0, v33

    iget-object v11, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v11, v9, v12

    .line 243
    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 246
    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v8, v11

    .line 245
    const v9, 0x7f0f09cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/android/settings/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 250
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 254
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_b

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_b

    .line 257
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->shouldFinish:Z

    if-eqz v2, :cond_a

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->finish()V

    .line 259
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->shouldFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 260
    return-void

    .line 264
    :cond_a
    :try_start_3
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v10, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v8, "private"

    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 267
    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v15

    .line 267
    const/4 v11, 0x0

    .line 268
    const v12, 0x7f0f0977

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 266
    invoke-static/range {v8 .. v15}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v22

    .line 272
    .local v22, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "show_drawer_menu"

    const/4 v8, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->finish()V

    .line 276
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->isFinishing:Z

    .line 281
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v22    # "intent":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->shouldFinish:Z

    if-nez v2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/deviceinfo/StorageSettings;->shouldFinish:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    monitor-exit p0

    .line 283
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0f0eb0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x270f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 697
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->shouldFinish:Z

    .line 700
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 129
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 131
    sget-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    .line 135
    :cond_0
    const v1, 0x7f08002e

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    .line 137
    const-string/jumbo v1, "storage_internal"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 138
    const-string/jumbo v1, "storage_external"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 140
    new-instance v1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 142
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    .line 143
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 295
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 296
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 300
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, "key":Ljava/lang/String;
    instance-of v0, p1, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    if-eqz v0, :cond_5

    .line 303
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 305
    .local v7, "vol":Landroid/os/storage/VolumeInfo;
    if-nez v7, :cond_0

    .line 306
    return v4

    .line 309
    :cond_0
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 310
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 311
    return v8

    .line 312
    :cond_1
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 313
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f09d4

    invoke-static {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 314
    return v8

    .line 317
    :cond_2
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 318
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    .line 332
    invoke-static {v7, v0, v1}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v0

    invoke-static {v5, v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setVolumeSize(Landroid/os/Bundle;J)V

    .line 336
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 337
    const/16 v4, 0x63

    move-object v0, p0

    move-object v1, p0

    .line 336
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 339
    return v8

    .line 341
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_7

    .line 342
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V

    .line 344
    return v8

    .line 346
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 347
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-class v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 350
    return v8

    .line 354
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_5
    const-string/jumbo v0, "disk:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 356
    const v0, 0x7f0f09d5

    invoke-static {p0, v0, v6}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 357
    return v8

    .line 361
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 362
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string/jumbo v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 364
    const v3, 0x7f0f09b8

    move-object v0, p0

    move-object v1, p0

    .line 363
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 365
    return v8

    .line 368
    .end local v5    # "args":Landroid/os/Bundle;
    .restart local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_7
    return v4
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 289
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    .line 290
    return-void
.end method
