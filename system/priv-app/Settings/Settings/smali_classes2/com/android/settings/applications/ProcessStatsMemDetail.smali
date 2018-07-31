.class public Lcom/android/settings/applications/ProcessStatsMemDetail;
.super Lcom/android/settings/InstrumentedFragment;
.source "ProcessStatsMemDetail.java"


# static fields
.field public static final EXTRA_MEM_CACHED_WEIGHT:Ljava/lang/String; = "mem_cached_weight"

.field public static final EXTRA_MEM_FREE_WEIGHT:Ljava/lang/String; = "mem_free_weight"

.field public static final EXTRA_MEM_KERNEL_WEIGHT:Ljava/lang/String; = "mem_kernel_weight"

.field public static final EXTRA_MEM_NATIVE_WEIGHT:Ljava/lang/String; = "mem_native_weight"

.field public static final EXTRA_MEM_STATE_WEIGHTS:Ljava/lang/String; = "mem_state_weights"

.field public static final EXTRA_MEM_TIMES:Ljava/lang/String; = "mem_times"

.field public static final EXTRA_MEM_TOTAL_WEIGHT:Ljava/lang/String; = "mem_total_weight"

.field public static final EXTRA_MEM_ZRAM_WEIGHT:Ljava/lang/String; = "mem_zram_weight"

.field public static final EXTRA_TOTAL_TIME:Ljava/lang/String; = "total_time"

.field public static final EXTRA_USE_USS:Ljava/lang/String; = "use_uss"


# instance fields
.field mMemCachedWeight:D

.field mMemFreeWeight:D

.field mMemKernelWeight:D

.field mMemNativeWeight:D

.field private mMemStateParent:Landroid/view/ViewGroup;

.field mMemStateWeights:[D

.field mMemTimes:[J

.field mMemTotalWeight:D

.field private mMemUseParent:Landroid/view/ViewGroup;

.field mMemZRamWeight:D

.field private mRootView:Landroid/view/View;

.field mTotalTime:J

.field mUseUss:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "level"    # F
    .param p4, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04002a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 112
    .local v1, "item":Landroid/view/ViewGroup;
    const v5, 0x1020018

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 111
    const v6, 0x7f040232

    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 113
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    const v5, 0x1020006

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 115
    const v5, 0x1020016

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 116
    .local v3, "titleView":Landroid/widget/TextView;
    const v5, 0x1020014

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 117
    .local v4, "valueView":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v5, 0x102000d

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 120
    .local v2, "progress":Landroid/widget/ProgressBar;
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, p3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 121
    return-void
.end method

.method private addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V
    .locals 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "weight"    # D

    .prologue
    .line 135
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-lez v2, :cond_0

    .line 136
    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTotalWeight:D

    div-double v2, p3, v2

    double-to-float v0, v2

    .line 137
    .local v0, "level":F
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 138
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, p3

    iget-wide v6, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    double-to-long v4, v4

    .line 137
    invoke-static {v2, v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V

    .line 141
    .end local v0    # "level":F
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createDetails()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f0a02cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateParent:Landroid/view/ViewGroup;

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f0a02cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    .line 103
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->fillMemStateSection()V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->fillMemUseSection()V

    .line 105
    return-void
.end method

.method private fillMemStateSection()V
    .locals 8

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 125
    .local v1, "labels":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    aget-wide v4, v3, v0

    long-to-float v3, v4

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 128
    .local v2, "level":F
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateParent:Landroid/view/ViewGroup;

    aget-object v4, v1, v0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    aget-wide v6, v6, v0

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V

    .line 125
    .end local v2    # "level":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method

.method private fillMemUseSection()V
    .locals 6

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 145
    .local v1, "labels":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0cc9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemKernelWeight:D

    .line 145
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0ccc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemZRamWeight:D

    .line 147
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 149
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0cca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemNativeWeight:D

    .line 149
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateWeights:[D

    aget-wide v4, v4, v0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0ccb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemCachedWeight:D

    .line 154
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 156
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0ccd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemFreeWeight:D

    .line 156
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 158
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0cce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTotalWeight:D

    .line 158
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 160
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x16

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "mem_times"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    .line 67
    const-string/jumbo v1, "mem_state_weights"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateWeights:[D

    .line 68
    const-string/jumbo v1, "mem_cached_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemCachedWeight:D

    .line 69
    const-string/jumbo v1, "mem_free_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemFreeWeight:D

    .line 70
    const-string/jumbo v1, "mem_zram_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemZRamWeight:D

    .line 71
    const-string/jumbo v1, "mem_kernel_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemKernelWeight:D

    .line 72
    const-string/jumbo v1, "mem_native_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemNativeWeight:D

    .line 73
    const-string/jumbo v1, "mem_total_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTotalWeight:D

    .line 74
    const-string/jumbo v1, "use_uss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mUseUss:Z

    .line 75
    const-string/jumbo v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 81
    const v1, 0x7f040182

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 84
    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->createDetails()V

    .line 86
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 97
    return-void
.end method
