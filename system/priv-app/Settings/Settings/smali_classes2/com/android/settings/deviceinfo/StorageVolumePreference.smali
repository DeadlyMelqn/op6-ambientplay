.class public Lcom/android/settings/deviceinfo/StorageVolumePreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageVolumePreference$1;
    }
.end annotation


# instance fields
.field private mColor:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mUsedPercent:I

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/deviceinfo/StorageVolumePreference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "color"    # I
    .param p4, "totalBytes"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 130
    new-instance v8, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;

    invoke-direct {v8, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreference;)V

    iput-object v8, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 55
    const-class v8, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    iput-object v8, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 56
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 57
    iput p3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 59
    const v8, 0x7f0401ce

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setLayoutResource(I)V

    .line 61
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setKey(Ljava/lang/String;)V

    .line 62
    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    const-string/jumbo v8, "private"

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 66
    const v8, 0x7f020250

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 71
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 73
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    .line 74
    .local v3, "path":Ljava/io/File;
    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-gtz v8, :cond_0

    .line 75
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide p4

    .line 80
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide p4

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 82
    .local v0, "freeBytes":J
    sub-long v6, p4, v0

    .line 83
    .local v6, "usedBytes":J
    invoke-static {p1, v6, v7}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "used":Ljava/lang/String;
    invoke-static {p1, p4, p5}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "total":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const v9, 0x7f0f09c8

    invoke-virtual {p1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-lez v8, :cond_1

    .line 87
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v6

    div-long/2addr v8, p4

    long-to-int v8, v8

    iput v8, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 90
    :cond_1
    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v3}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    .line 91
    const v8, 0x1010543

    invoke-static {p1, v8}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 92
    const v8, 0x7f02027e

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 100
    .end local v0    # "freeBytes":J
    .end local v3    # "path":Ljava/io/File;
    .end local v4    # "total":Ljava/lang/String;
    .end local v5    # "used":Ljava/lang/String;
    .end local v6    # "usedBytes":J
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 101
    iget v8, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-nez v8, :cond_3

    .line 105
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    .line 104
    if-eqz v8, :cond_3

    .line 106
    const v8, 0x7f04016c

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setWidgetLayoutResource(I)V

    .line 108
    :cond_3
    return-void

    .line 68
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const v8, 0x7f02025e

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 96
    :cond_5
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(I)V

    .line 97
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    goto :goto_1
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 112
    const v2, 0x7f0a02c0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 113
    .local v1, "unmount":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 114
    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 115
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_0
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 119
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 120
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 122
    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 127
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 128
    return-void

    .line 124
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
