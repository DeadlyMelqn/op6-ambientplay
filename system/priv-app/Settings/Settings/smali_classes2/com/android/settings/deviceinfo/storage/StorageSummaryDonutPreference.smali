.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageSummaryDonutPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$BoldLinkSpan;
    }
.end annotation


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:I

    .line 62
    const v0, 0x7f0401cd

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setLayoutResource(I)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 77
    const v2, 0x7f0a033a

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/DonutView;

    .line 78
    .local v1, "donut":Lcom/android/settings/widget/DonutView;
    if-eqz v1, :cond_0

    .line 79
    iget v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:I

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/DonutView;->setPercentage(I)V

    .line 82
    :cond_0
    const v2, 0x7f0a0339

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    .local v0, "deletionHelperButton":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a0339

    if-ne v4, v3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    new-array v3, v5, [I

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.oneplus.security"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.oneplus.security.action.CLEAN_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 99
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setPercent(JJ)V
    .locals 9
    .param p1, "usedBytes"    # J
    .param p3, "totalBytes"    # J

    .prologue
    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x0

    .line 67
    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    mul-long v0, p1, v4

    long-to-double v0, v0

    long-to-double v2, p3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    cmp-long v2, p1, v6

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    int-to-long v2, v2

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:I

    .line 72
    return-void

    .line 71
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
