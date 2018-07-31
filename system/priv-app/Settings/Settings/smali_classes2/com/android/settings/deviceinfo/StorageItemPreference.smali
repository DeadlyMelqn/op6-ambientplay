.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageItemPreference.java"


# static fields
.field private static final PROGRESS_MAX:I = 0x64


# instance fields
.field private progress:I

.field private progressBar:Landroid/widget/ProgressBar;

.field public userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progress:I

    .line 42
    const v0, 0x7f0401cb

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progress:I

    .line 47
    const v0, 0x7f0401cb

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progress:I

    .line 53
    const v0, 0x7f0401cb

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 82
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBar()V

    .line 84
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 85
    return-void
.end method

.method public setStorageSize(JJ)V
    .locals 7
    .param p1, "size"    # J
    .param p3, "total"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "sizeString":Ljava/lang/String;
    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "sizeString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    cmp-long v1, p3, v4

    if-nez v1, :cond_1

    .line 59
    iput v2, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progress:I

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBar()V

    .line 64
    return-void

    .line 61
    :cond_1
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v1, v2

    iput v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progress:I

    goto :goto_0
.end method

.method protected updateProgressBar()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    iget v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 72
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 78
    return-void
.end method
