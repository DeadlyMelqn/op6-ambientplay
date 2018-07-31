.class public Lcom/android/settings/deviceinfo/StorageSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageSummaryPreference.java"


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 36
    const v0, 0x7f0401cc

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setLayoutResource(I)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setEnabled(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 47
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 48
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget v2, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    iget v2, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 51
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setScaleY(F)V

    .line 56
    :goto_0
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "summary":Landroid/widget/TextView;
    const-string/jumbo v2, "#8a000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 60
    return-void

    .line 53
    .end local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPercent(JJ)V
    .locals 5
    .param p1, "usedBytes"    # J
    .param p3, "totalBytes"    # J

    .prologue
    .line 41
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v1, v0

    .line 42
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x64

    .line 41
    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
