.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;
    }
.end annotation


# static fields
.field public static final ACTION_BROWSE:Ljava/lang/String; = "android.provider.action.BROWSE"

.field private static final AUTHORITY_MEDIA:Ljava/lang/String; = "com.android.providers.media.documents"

.field public static final BROWSER_TYPE:Ljava/lang/String; = "browser_type"

.field private static final DIRECTORY_VIDEO:Ljava/lang/String; = "Video"

.field private static final EXTRA_VOLUME_SIZE:Ljava/lang/String; = "volume_size"

.field public static final FILETYPE_AUDIO:I = 0x1

.field public static final FILETYPE_IMAGE:I = 0x0

.field public static final FILETYPE_VIDEO:I = 0x2

.field private static final ITEMS_NO_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED:[I

.field public static final NEW_FILEMANAGE_ACTION:Ljava/lang/String; = "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

.field public static final ONEPLUS_FILEMANAGE_DIR_INTENT:Ljava/lang/String; = "android.intent.action.ONEPLUS_BROWSER_DIR"

.field private static final STORAGE_CLEANUP_PACKAGE:Ljava/lang/String; = "com.qti.storagecleaner"

.field private static final STORAGE_CLENUP_CLASS:Ljava/lang/String; = "com.qti.storagecleaner.CleanerActivity"

.field private static final TAG_CONFIRM_CLEAR_CACHE:Ljava/lang/String; = "confirmClearCache"

.field private static final TAG_OTHER_INFO:Ljava/lang/String; = "otherInfo"

.field private static final TAG_RENAME:Ljava/lang/String; = "rename"

.field private static final TAG_SYSTEM_INFO:Ljava/lang/String; = "systemInfo"

.field private static final TAG_USER_INFO:Ljava/lang/String; = "userInfo"


# instance fields
.field private mCalculateUsedTimes:I

.field private mCleanPref:Landroid/support/v7/preference/Preference;

.field mContext:Landroid/content/Context;

.field private mCurrentUser:Landroid/content/pm/UserInfo;

.field private mExplore:Landroid/support/v7/preference/Preference;

.field private mHeaderPoolIndex:I

.field private mHeaderPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPoolIndex:I

.field private mItemPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadMediaCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

.field private mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

.field private mMemoryPreference:Landroid/support/v7/preference/Preference;

.field private mNeedsUpdate:Z

.field private final mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private mStorageExceptMediaUsed:J

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageMediaAudio:J

.field private mStorageMediaExternal:J

.field private mStorageMediaImage:J

.field private mStorageMediaVideo:J

.field private mStorageSummaryDonutPreference:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

.field private mStorageUsed:J

.field private mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .param p1, "-value"    # Landroid/os/storage/VolumeInfo;

    .prologue
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .param p1, "details"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .param p1, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p2, "size"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updateMediaDetails(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f0f09db

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 132
    const/4 v1, 0x0

    aput v4, v0, v1

    .line 131
    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 137
    const v0, 0x7f0f09dc

    .line 138
    const v1, 0x7f0f09dd

    .line 139
    const v2, 0x7f0f09de

    .line 140
    const v3, 0x7f0f09e0

    .line 135
    filled-new-array {v4, v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 183
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 155
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    .line 156
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    .line 167
    iput-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    .line 168
    iput-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    .line 169
    iput-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    .line 170
    iput-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageExceptMediaUsed:J

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    .line 744
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 752
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mLoadMediaCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    .line 988
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setRetainInstance(Z)V

    .line 185
    return-void
.end method

.method private addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 4
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 433
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 440
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 442
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 443
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 444
    return-object v0

    .line 436
    .end local v0    # "category":Landroid/support/v7/preference/PreferenceCategory;
    :cond_0
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 437
    const v3, 0x101008c

    .line 436
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 438
    .restart local v0    # "category":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addCleanPreference(Landroid/support/v7/preference/PreferenceScreen;I)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "titleRes"    # I

    .prologue
    .line 247
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    .line 248
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCleanPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 251
    return-void
.end method

.method private addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V
    .locals 4
    .param p1, "category"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "showShared"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 448
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    .line 449
    .local v1, "itemsToAdd":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 450
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 448
    .end local v0    # "i":I
    .end local v1    # "itemsToAdd":[I
    :cond_0
    sget-object v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .restart local v1    # "itemsToAdd":[I
    goto :goto_0

    .line 452
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "titleRes"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "userId"    # I

    .prologue
    .line 456
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 462
    .local v0, "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :goto_0
    if-eqz p3, :cond_1

    .line 463
    invoke-virtual {v0, p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 464
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 469
    :goto_1
    const v1, 0x7f0f0996

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 470
    iput p4, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 472
    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 473
    return-void

    .line 459
    .end local v0    # "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 460
    .restart local v0    # "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 467
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addMemoryPreference(Landroid/support/v7/preference/PreferenceScreen;I)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "titleRes"    # I

    .prologue
    .line 254
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    .line 255
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 258
    return-void
.end method

.method private addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 427
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 428
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 429
    return-void
.end method

.method private addStorageSummaryDonutPreference(Landroid/support/v7/preference/PreferenceScreen;I)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "titleRes"    # I

    .prologue
    .line 240
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageSummaryDonutPreference:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 241
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageSummaryDonutPreference:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setTitle(I)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageSummaryDonutPreference:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setKey(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageSummaryDonutPreference:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 244
    return-void
.end method

.method private buildAction(I)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 481
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 482
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 483
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 484
    return-object v0
.end method

.method private buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2

    .prologue
    .line 476
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 477
    .local v0, "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    return-object v0
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 968
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_0

    .line 969
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_2

    .line 970
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 970
    goto :goto_0

    :cond_2
    move v0, v1

    .line 969
    goto :goto_0
.end method

.method private isVolumeValid()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 264
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 265
    const v1, 0x7f0f02ea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 268
    :cond_0
    return-void
.end method

.method static setVolumeSize(Landroid/os/Bundle;J)V
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "size"    # J

    .prologue
    .line 488
    const-string/jumbo v0, "volume_size"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 489
    return-void
.end method

.method private startStorageCleanupActivity()V
    .locals 4

    .prologue
    .line 609
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "com.qti.storagecleaner"

    const-string/jumbo v3, "com.qti.storagecleaner.CleanerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "StorageSettings"

    const-string/jumbo v3, "Can\'t start storage cleanup activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static varargs totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J
    .locals 10
    .param p0, "details"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p1, "userId"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 974
    const-wide/16 v2, 0x0

    .line 975
    .local v2, "total":J
    iget-object v4, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 976
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v1, :cond_1

    .line 977
    const/4 v4, 0x0

    array-length v6, p2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, p2, v5

    .line 978
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 979
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 977
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 983
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "StorageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_2
    return-wide v2
.end method

.method private update()V
    .locals 40

    .prologue
    .line 271
    const v35, 0x7f0f09ba

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    .line 272
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v35

    if-nez v35, :cond_0

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->finish()V

    .line 274
    return-void

    .line 277
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setTitle()V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 283
    .local v8, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v22

    .line 285
    .local v22, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 286
    const v35, 0x7f0f02ea

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addStorageSummaryDonutPreference(Landroid/support/v7/preference/PreferenceScreen;I)V

    .line 289
    new-instance v13, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v13, v0}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    .line 290
    .local v13, "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 294
    const v35, 0x7f0f1068

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addMemoryPreference(Landroid/support/v7/preference/PreferenceScreen;I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 299
    .local v7, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v32

    .line 300
    .local v32, "userCount":I
    const/16 v35, 0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-le v0, v1, :cond_3

    const/16 v23, 0x1

    .line 301
    .local v23, "showHeaders":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v35, v0

    if-eqz v35, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v24

    .line 303
    :goto_1
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 304
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 306
    const/4 v6, 0x0

    .line 308
    .local v6, "addedUserCount":I
    const/16 v20, 0x0

    .line 309
    .local v20, "profileCount":I
    const/16 v18, 0x0

    .line 310
    .local v18, "needsReloadMediaSize":Z
    const/4 v11, 0x0

    .line 311
    .local v11, "details":Landroid/support/v7/preference/PreferenceGroup;
    const/16 v33, 0x0

    .end local v11    # "details":Landroid/support/v7/preference/PreferenceGroup;
    .local v33, "userIndex":I
    :goto_2
    move/from16 v0, v33

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    .line 312
    move/from16 v0, v33

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    .line 313
    .local v34, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 314
    add-int/lit8 v20, v20, 0x1

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->hasMultiAppProfiles()Z

    move-result v35

    if-eqz v35, :cond_6

    .line 317
    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    const/16 v36, 0x3e7

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1

    .line 318
    if-eqz v23, :cond_5

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v11

    .line 320
    :cond_1
    :goto_3
    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    const/16 v36, 0x3e7

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2

    .line 321
    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V

    .line 322
    const/16 v18, 0x1

    .line 311
    :cond_2
    :goto_4
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    .line 300
    .end local v6    # "addedUserCount":I
    .end local v18    # "needsReloadMediaSize":Z
    .end local v20    # "profileCount":I
    .end local v23    # "showHeaders":Z
    .end local v33    # "userIndex":I
    .end local v34    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    const/16 v23, 0x0

    .restart local v23    # "showHeaders":Z
    goto/16 :goto_0

    .line 301
    :cond_4
    const/16 v24, 0x0

    .local v24, "showShared":Z
    goto/16 :goto_1

    .line 318
    .end local v24    # "showShared":Z
    .restart local v6    # "addedUserCount":I
    .restart local v18    # "needsReloadMediaSize":Z
    .restart local v20    # "profileCount":I
    .restart local v33    # "userIndex":I
    .restart local v34    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    move-object/from16 v11, v22

    .local v11, "details":Landroid/support/v7/preference/PreferenceGroup;
    goto :goto_3

    .line 325
    .end local v11    # "details":Landroid/support/v7/preference/PreferenceGroup;
    :cond_6
    if-eqz v23, :cond_7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v11

    .line 326
    .restart local v11    # "details":Landroid/support/v7/preference/PreferenceGroup;
    :goto_5
    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v35

    invoke-direct {v0, v11, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V

    .line 327
    const/16 v18, 0x1

    .line 328
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 325
    .end local v11    # "details":Landroid/support/v7/preference/PreferenceGroup;
    :cond_7
    move-object/from16 v11, v22

    .restart local v11    # "details":Landroid/support/v7/preference/PreferenceGroup;
    goto :goto_5

    .line 334
    .end local v11    # "details":Landroid/support/v7/preference/PreferenceGroup;
    .end local v34    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_8
    sub-int v35, v32, v6

    if-lez v35, :cond_a

    .line 336
    const v35, 0x7f0f09c5

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v19

    .line 337
    .local v19, "otherUsers":Landroid/support/v7/preference/PreferenceGroup;
    const/16 v33, 0x0

    :goto_6
    move/from16 v0, v33

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    .line 338
    move/from16 v0, v33

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    .line 339
    .restart local v34    # "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v35

    if-nez v35, :cond_9

    .line 340
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v37

    move-object/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 337
    :cond_9
    add-int/lit8 v33, v33, 0x1

    goto :goto_6

    .line 345
    .end local v19    # "otherUsers":Landroid/support/v7/preference/PreferenceGroup;
    .end local v34    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_a
    const v35, 0x7f0f09df

    const/16 v36, 0x0

    const/16 v37, -0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v35

    move-object/from16 v3, v36

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 347
    if-eqz v24, :cond_b

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 361
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v12

    .line 362
    .local v12, "file":Ljava/io/File;
    new-instance v25, Lcom/android/settings/deviceinfo/StorageUsageInfo;

    invoke-direct/range {v25 .. v25}, Lcom/android/settings/deviceinfo/StorageUsageInfo;-><init>()V

    .line 363
    .local v25, "storageUsageInfo":Lcom/android/settings/deviceinfo/StorageUsageInfo;
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageUsageInfo;->loadStorageInfo(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/deviceinfo/StorageUsageInfo;->getTotalBytes()J

    move-result-wide v26

    .line 365
    .local v26, "totalBytes":J
    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/deviceinfo/StorageUsageInfo;->getFreeBytes()J

    move-result-wide v14

    .line 366
    .local v14, "freeBytes":J
    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/deviceinfo/StorageUsageInfo;->getUsedBytes()J

    move-result-wide v30

    .line 367
    .local v30, "usedBytes":J
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-wide/from16 v1, v30

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v21

    .line 378
    .local v21, "result":Landroid/text/format/Formatter$BytesResult;
    move-wide/from16 v0, v26

    invoke-static {v8, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v29

    .line 379
    .local v29, "usedString":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 380
    .local v28, "totalSize":Ljava/lang/String;
    sget v35, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v36, 0x1a

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_c

    .line 381
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    .line 382
    .local v10, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    .line 383
    .local v17, "language":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    .line 385
    .local v9, "country":Ljava/lang/String;
    const-string/jumbo v35, "zh"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_c

    const-string/jumbo v35, "CN"

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 386
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    sget-object v35, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_c

    .line 387
    sget-object v35, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    aget-object v35, v35, v16

    sget-object v36, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    aget-object v36, v36, v16

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 388
    sget-object v35, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    aget-object v35, v35, v16

    sget-object v36, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    aget-object v36, v36, v16

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 386
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 392
    .end local v9    # "country":Ljava/lang/String;
    .end local v10    # "defaultLocale":Ljava/util/Locale;
    .end local v16    # "i":I
    .end local v17    # "language":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageSummaryDonutPreference:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    move-object/from16 v35, v0

    const v36, 0x7f0f09c9

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v36

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v38, v37, v39

    const/16 v38, 0x1

    aput-object v28, v37, v38

    invoke-static/range {v36 .. v37}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageSummaryDonutPreference:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v29, v36, v37

    const v37, 0x7f0f09ca

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageSummaryDonutPreference:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-wide/from16 v1, v30

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setPercent(JJ)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageSummaryDonutPreference:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 399
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 401
    if-eqz v18, :cond_d

    .line 402
    const-string/jumbo v35, "StorageSettings"

    const-string/jumbo v36, "startLoadInfo"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sget-object v35, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget-object v36, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->All:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mLoadMediaCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v37}, Lcom/oneplus/settings/storage/OPMediaProvider;->startLoadInfo(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V

    .line 410
    :goto_8
    return-void

    .line 405
    :cond_d
    const-string/jumbo v35, "StorageSettings"

    const-string/jumbo v36, "forceMeasure"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->forceMeasure()V

    goto :goto_8
.end method

.method private updateDetails(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 38
    .param p1, "details"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 765
    const-wide/16 v14, 0x0

    .line 766
    .local v14, "mStorageApp":J
    const-wide/16 v20, 0x0

    .line 767
    .local v20, "mStorageImg":J
    const-wide/16 v24, 0x0

    .line 768
    .local v24, "mStorageVideo":J
    const-wide/16 v16, 0x0

    .line 769
    .local v16, "mStorageAudio":J
    const-wide/16 v18, 0x0

    .line 770
    .local v18, "mStorageCache":J
    const-wide/16 v22, 0x0

    .line 771
    .local v22, "mStorageUsers":J
    const/4 v11, 0x0

    .line 772
    .local v11, "itemOther":Lcom/android/settings/deviceinfo/StorageItemPreference;
    const/4 v10, 0x0

    .line 773
    .local v10, "itemApp":Lcom/android/settings/deviceinfo/StorageItemPreference;
    const-wide/16 v30, 0x0

    .line 774
    .local v30, "tempStorageOther":J
    const/4 v8, 0x0

    .end local v10    # "itemApp":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .end local v11    # "itemOther":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v8, v0, :cond_0

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 776
    .local v9, "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    iget v13, v9, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 779
    .local v13, "userId":I
    :try_start_0
    invoke-virtual {v9}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 783
    .local v12, "itemTitleId":I
    :goto_1
    sparse-switch v12, :sswitch_data_0

    .line 774
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 780
    .end local v12    # "itemTitleId":I
    :catch_0
    move-exception v5

    .line 781
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    .restart local v12    # "itemTitleId":I
    goto :goto_1

    .line 785
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    move-object v10, v9

    .line 786
    .local v10, "itemApp":Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v34

    add-long v14, v14, v34

    .line 787
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 814
    .end local v10    # "itemApp":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :sswitch_1
    move-object v11, v9

    .line 815
    .local v11, "itemOther":Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v30

    .line 816
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 819
    .end local v11    # "itemOther":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :sswitch_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v34, v0

    add-long v18, v18, v34

    .line 820
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 823
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v32

    .line 824
    .local v32, "userSize":J
    add-long v22, v22, v32

    .line 825
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 829
    .end local v9    # "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .end local v12    # "itemTitleId":I
    .end local v13    # "userId":I
    .end local v32    # "userSize":J
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    .line 831
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    move-wide/from16 v36, v0

    add-long v34, v34, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    move-wide/from16 v36, v0

    add-long v26, v34, v36

    .line 832
    .local v26, "mediaStorageUsed":J
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "updateDetails: mediaStorageUsed = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "updateDetails: mStorageMediaImage = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "updateDetails: mStorageMediaVideo = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "updateDetails: mStorageMediaAudio = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "updateDetails: mStorageApp = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "updateDetails: mStorageMediaExternal = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaExternal:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-wide/16 v28, 0x0

    .line 840
    .local v28, "storageAppUsed":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaExternal:J

    move-wide/from16 v34, v0

    cmp-long v34, v14, v34

    if-lez v34, :cond_6

    .line 841
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaExternal:J

    move-wide/from16 v34, v0

    sub-long v28, v14, v34

    .line 846
    :goto_3
    if-eqz v10, :cond_1

    .line 847
    const-wide/16 v34, 0x0

    cmp-long v34, v28, v34

    if-lez v34, :cond_7

    .line 848
    move-wide/from16 v14, v28

    .line 849
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v10, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 855
    :cond_1
    :goto_4
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    move/from16 v34, v0

    sget-object v35, Lcom/oneplus/settings/storage/OPMediaProvider;->sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_5

    .line 856
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaExternal:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-lez v34, :cond_2

    .line 858
    add-long v34, v28, v18

    add-long v34, v34, v22

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageExceptMediaUsed:J

    .line 861
    :cond_2
    add-long v34, v28, v26

    add-long v34, v34, v18

    add-long v6, v34, v22

    .line 864
    .local v6, "calculateUsed":J
    const/4 v4, 0x0

    .line 865
    .local v4, "DBG_DETAILS":Z
    if-eqz v4, :cond_3

    .line 866
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "storageAppUsed = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "mStorageMediaExternal = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaExternal:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "mStorageExceptMediaUsed = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageExceptMediaUsed:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "mStorageCache = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "mStorageUsers = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "calculateUsed = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "mStorageUsed = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    move-wide/from16 v34, v0

    cmp-long v34, v34, v6

    if-lez v34, :cond_8

    .line 880
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    move-wide/from16 v34, v0

    sub-long v30, v34, v6

    .line 881
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v11, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 888
    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "tempStorageOther = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    .end local v4    # "DBG_DETAILS":Z
    .end local v6    # "calculateUsed":J
    :cond_5
    return-void

    .line 843
    :cond_6
    move-wide/from16 v28, v14

    goto/16 :goto_3

    .line 851
    :cond_7
    const-string/jumbo v34, "StorageSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "Please check: storageAppUsed = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 883
    .restart local v4    # "DBG_DETAILS":Z
    .restart local v6    # "calculateUsed":J
    :cond_8
    cmp-long v34, v30, v26

    if-lez v34, :cond_4

    .line 884
    sub-long v30, v30, v26

    .line 885
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v11, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_5

    .line 783
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x7f0f09db -> :sswitch_0
        0x7f0f09df -> :sswitch_2
        0x7f0f09e0 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateMediaDetails(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V
    .locals 18
    .param p1, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p2, "size"    # J

    .prologue
    .line 895
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Files:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 896
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaExternal:J

    .line 897
    const-string/jumbo v14, "StorageSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "PrivateVolumeSettings mStorageMediaExternal size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    const/4 v9, 0x0

    .line 900
    .local v9, "itemOther":Lcom/android/settings/deviceinfo/StorageItemPreference;
    const-wide/16 v12, 0x0

    .line 901
    .local v12, "tempStorageOther":J
    const/4 v7, 0x0

    .end local v9    # "itemOther":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    if-ge v7, v14, :cond_2

    .line 902
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 903
    .local v8, "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    iget v11, v8, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 906
    .local v11, "userId":I
    :try_start_0
    invoke-virtual {v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 910
    .local v10, "itemTitleId":I
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 901
    :cond_1
    :goto_2
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 907
    .end local v10    # "itemTitleId":I
    :catch_0
    move-exception v6

    .line 908
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    .restart local v10    # "itemTitleId":I
    goto :goto_1

    .line 912
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Image:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1

    .line 913
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    .line 914
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 915
    const-string/jumbo v14, "StorageSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "PrivateVolumeSettings mStorageMediaImage size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 920
    :pswitch_2
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Video:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1

    .line 921
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    .line 922
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 923
    const-string/jumbo v14, "StorageSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "PrivateVolumeSettings mStorageMediaVideo size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 928
    :pswitch_3
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Audio:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1

    .line 929
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    .line 930
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 931
    const-string/jumbo v14, "StorageSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "PrivateVolumeSettings mStorageMediaAudio size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 936
    :pswitch_4
    move-object v9, v8

    .line 937
    .local v9, "itemOther":Lcom/android/settings/deviceinfo/StorageItemPreference;
    goto/16 :goto_2

    .line 941
    .end local v8    # "item":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .end local v9    # "itemOther":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .end local v10    # "itemTitleId":I
    .end local v11    # "userId":I
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    .line 942
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCalculateUsedTimes:I

    sget-object v15, Lcom/oneplus/settings/storage/OPMediaProvider;->sTypeArray:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    array-length v15, v15

    if-le v14, v15, :cond_3

    .line 943
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageExceptMediaUsed:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaImage:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaVideo:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageMediaAudio:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 944
    .local v4, "calculateUsed":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    cmp-long v14, v14, v4

    if-lez v14, :cond_3

    .line 949
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageUsed:J

    sub-long v12, v14, v4

    .line 950
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 955
    .end local v4    # "calculateUsed":J
    :cond_3
    sget-object v14, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Files:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_4

    .line 956
    const-string/jumbo v14, "StorageSettings"

    const-string/jumbo v15, "Load media done!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-virtual {v14}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->forceMeasure()V

    .line 960
    :cond_4
    return-void

    .line 910
    :pswitch_data_0
    .packed-switch 0x7f0f09dc
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 965
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 189
    const/16 v0, 0x2a

    return v0
.end method

.method public hasMultiAppProfiles()Z
    .locals 5

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "hasMultiAppProfiles":Z
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 417
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_0

    .line 418
    const/4 v0, 0x1

    .line 422
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 196
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 200
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 204
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    .line 207
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 208
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 214
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 216
    new-instance v1, Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    .line 217
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 219
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 221
    return-void

    .line 224
    :cond_0
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 227
    new-instance v1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 228
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    .line 230
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 232
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    .line 235
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setResult(I)V

    .line 237
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 527
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 528
    const v0, 0x7f140006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 529
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 520
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->onDestroy()V

    .line 523
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 577
    .local v6, "context":Landroid/content/Context;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 578
    .local v5, "args":Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 604
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 580
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    .line 581
    return v8

    .line 583
    :pswitch_1
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 584
    return v8

    .line 586
    :pswitch_2
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 588
    const v3, 0x7f0f09b3

    move-object v0, p0

    move-object v1, p0

    .line 587
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 589
    return v8

    .line 591
    :pswitch_3
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 593
    const v3, 0x7f0f09b4

    move-object v0, p0

    move-object v1, p0

    .line 592
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 594
    return v8

    .line 596
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 599
    return v8

    .line 601
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startStorageCleanupActivity()V

    .line 602
    return v8

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a045d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 513
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 514
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 515
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 17
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 621
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_1

    move-object/from16 v1, p1

    .line 622
    check-cast v1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v0, v1, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v16, v0

    .line 625
    .local v16, "userId":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 629
    .local v15, "itemTitleId":I
    :goto_1
    const/4 v13, 0x0

    .line 630
    .local v13, "intent":Landroid/content/Intent;
    sparse-switch v15, :sswitch_data_0

    .line 729
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_2
    if-eqz v13, :cond_7

    .line 731
    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_6

    .line 732
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 739
    :goto_3
    const/4 v1, 0x1

    return v1

    .line 622
    .end local v15    # "itemTitleId":I
    .end local v16    # "userId":I
    :cond_1
    const/16 v16, -0x1

    .restart local v16    # "userId":I
    goto :goto_0

    .line 626
    :catch_0
    move-exception v12

    .line 627
    .local v12, "e":Ljava/lang/NumberFormatException;
    const/4 v15, 0x0

    .restart local v15    # "itemTitleId":I
    goto :goto_1

    .line 634
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "intent":Landroid/content/Intent;
    :sswitch_0
    :try_start_2
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.security.action.CLEAN_ACTIVITY"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 635
    .local v14, "intent":Landroid/content/Intent;
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v13    # "intent":Landroid/content/Intent;
    move-object v13, v14

    .line 639
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_4
    const/4 v1, 0x1

    return v1

    .line 636
    .restart local v13    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v11

    .line 637
    .end local v13    # "intent":Landroid/content/Intent;
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    :goto_5
    const-string/jumbo v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 642
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v13    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 643
    .local v6, "args":Landroid/os/Bundle;
    const-class v1, Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 644
    const v4, 0x7f0f1068

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    .line 643
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 645
    const/4 v1, 0x1

    return v1

    .line 649
    .end local v6    # "args":Landroid/os/Bundle;
    :sswitch_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 650
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string/jumbo v1, "classname"

    .line 651
    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string/jumbo v1, "volumeUuid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string/jumbo v1, "volumeName"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 655
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const v8, 0x7f0f1063

    const/4 v9, 0x0

    .line 656
    const/4 v10, 0x0

    .line 654
    invoke-static/range {v4 .. v10}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v13

    .local v13, "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 661
    .end local v6    # "args":Landroid/os/Bundle;
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.action.BROWSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 663
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string/jumbo v1, "browser_type"

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    :goto_6
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 666
    :cond_2
    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "images_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_6

    .line 673
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.action.BROWSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    const-string/jumbo v1, "browser_type"

    const/4 v2, 0x2

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    :goto_7
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 678
    :cond_3
    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "videos_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_7

    .line 685
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_5
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.action.BROWSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 687
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string/jumbo v1, "browser_type"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    :goto_8
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 690
    :cond_4
    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "audio_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_8

    .line 697
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 698
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_DIR"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 700
    const/4 v1, 0x1

    return v1

    .line 702
    .local v13, "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 702
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;)V

    .line 704
    const/4 v1, 0x1

    return v1

    .line 709
    :sswitch_7
    invoke-static/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    .line 710
    const/4 v1, 0x1

    return v1

    .line 716
    :sswitch_8
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.ONEPLUS_BROWSER_DIR"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.intent.action.ONEPLUS_BROWSER_DIR"

    invoke-static {v1, v13, v2}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v13

    goto/16 :goto_2

    .line 724
    .local v13, "intent":Landroid/content/Intent;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 725
    const/4 v1, 0x1

    return v1

    .line 734
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v13, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 736
    :catch_2
    move-exception v11

    .line 737
    .restart local v11    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 741
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    .line 636
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v11

    .restart local v11    # "e":Landroid/content/ActivityNotFoundException;
    move-object v13, v14

    .end local v14    # "intent":Landroid/content/Intent;
    .local v13, "intent":Landroid/content/Intent;
    goto/16 :goto_5

    .line 630
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x7f0f041d -> :sswitch_0
        0x7f0f09ba -> :sswitch_8
        0x7f0f09db -> :sswitch_2
        0x7f0f09dc -> :sswitch_3
        0x7f0f09dd -> :sswitch_4
        0x7f0f09de -> :sswitch_5
        0x7f0f09df -> :sswitch_7
        0x7f0f09e0 -> :sswitch_6
        0x7f0f1068 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 533
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    .line 535
    :cond_0
    const v8, 0x7f0a045d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 536
    .local v5, "rename":Landroid/view/MenuItem;
    const v8, 0x7f0a045e

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 537
    .local v3, "mount":Landroid/view/MenuItem;
    const v8, 0x7f0a045f

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 538
    .local v7, "unmount":Landroid/view/MenuItem;
    const v8, 0x7f0a0460

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 539
    .local v1, "format":Landroid/view/MenuItem;
    const v8, 0x7f0a0461

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 540
    .local v2, "migrate":Landroid/view/MenuItem;
    const v8, 0x7f0a0462

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 543
    .local v0, "cleanUp":Landroid/view/MenuItem;
    const v8, 0x7f0a0463

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 544
    .local v6, "storageFree":Landroid/view/MenuItem;
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 549
    const-string/jumbo v8, "private"

    iget-object v11, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v11}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 550
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 551
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 552
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 553
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 561
    :goto_0
    const v8, 0x7f0f09b5

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 567
    .local v4, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v4, :cond_1

    .line 568
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 569
    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v8, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v10, v8, 0x1

    .line 567
    :cond_1
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 572
    return-void

    .line 555
    .end local v4    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-ne v8, v9, :cond_3

    move v8, v9

    :goto_1
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 556
    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v8

    if-nez v8, :cond_4

    move v8, v9

    :goto_2
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 557
    iget-object v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 558
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v8, v10

    .line 555
    goto :goto_1

    :cond_4
    move v8, v10

    .line 556
    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 493
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 496
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 497
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 499
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 504
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    if-eqz v0, :cond_1

    .line 505
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setTitle()V

    goto :goto_0
.end method
