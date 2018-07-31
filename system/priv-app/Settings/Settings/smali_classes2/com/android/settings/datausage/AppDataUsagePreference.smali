.class public Lcom/android/settings/datausage/AppDataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "AppDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/settingslib/AppItem;
    .param p3, "percent"    # I
    .param p4, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p5, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    .line 43
    iput p3, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    .line 44
    const v0, 0x7f04006e

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setLayoutResource(I)V

    .line 45
    const v0, 0x7f040232

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setWidgetLayoutResource(I)V

    .line 46
    iget-boolean v0, p2, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 47
    const v0, 0x7f0f0db7

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(I)V

    .line 54
    :goto_0
    invoke-static {p4, p2, p0, p5}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;Ljava/util/concurrent/ExecutorService;)V

    .line 56
    return-void

    .line 49
    :cond_0
    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p1, v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getItem()Lcom/android/settingslib/AppItem;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 63
    const v1, 0x102000d

    .line 62
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 65
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-boolean v1, v1, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-wide v2, v1, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 66
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    :goto_0
    iget v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 71
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
