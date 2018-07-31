.class public Lcom/android/settings/applications/ProcessStatsDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProcessStatsDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcessStatsDetail$1;,
        Lcom/android/settings/applications/ProcessStatsDetail$2;,
        Lcom/android/settings/applications/ProcessStatsDetail$3;,
        Lcom/android/settings/applications/ProcessStatsDetail$PkgService;
    }
.end annotation


# static fields
.field public static final EXTRA_MAX_MEMORY_USAGE:Ljava/lang/String; = "max_memory_usage"

.field public static final EXTRA_PACKAGE_ENTRY:Ljava/lang/String; = "package_entry"

.field public static final EXTRA_TOTAL_SCALE:Ljava/lang/String; = "total_scale"

.field public static final EXTRA_TOTAL_TIME:Ljava/lang/String; = "total_time"

.field public static final EXTRA_WEIGHT_TO_RAM:Ljava/lang/String; = "weight_to_ram"

.field private static final KEY_DETAILS_HEADER:Ljava/lang/String; = "status_header"

.field private static final KEY_FREQUENCY:Ljava/lang/String; = "frequency"

.field private static final KEY_MAX_USAGE:Ljava/lang/String; = "max_usage"

.field private static final KEY_PROCS:Ljava/lang/String; = "processes"

.field public static final MENU_FORCE_STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcessStatsDetail"

.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sServiceCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field

.field static final sServicePkgCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcessStatsDetail$PkgService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mForceStop:Landroid/view/MenuItem;

.field private mMaxMemoryUsage:D

.field private mOnePercentTime:J

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

.field private final mServiceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/CancellablePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalScale:D

.field private mTotalTime:J

.field private mWeightToRam:D


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/ProcessStatsDetail;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/ProcessStatsDetail;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->stopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    .line 294
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$2;-><init>()V

    .line 293
    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    .line 306
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    .line 59
    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 268
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 269
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    return-object p0

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 426
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    if-nez v7, :cond_0

    .line 427
    return-void

    .line 429
    :cond_0
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsEntry;

    iget v7, v7, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_1

    .line 430
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 431
    return-void

    .line 433
    :cond_1
    const/4 v4, 0x0

    .line 434
    .local v4, "isStarted":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 435
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    .line 436
    .local v1, "ent":Lcom/android/settings/applications/ProcStatsEntry;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v7, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 437
    iget-object v7, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 438
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 439
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 440
    return-void

    .line 443
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 444
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v8, 0x200000

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    .line 445
    const/4 v4, 0x1

    .line 436
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 434
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    .end local v5    # "j":I
    :cond_5
    if-eqz v4, :cond_6

    .line 452
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 454
    :cond_6
    return-void

    .line 447
    .restart local v1    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    .restart local v5    # "j":I
    .restart local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method private createDetails()V
    .locals 22

    .prologue
    .line 177
    const v17, 0x7f08000f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->addPreferencesFromResource(I)V

    .line 179
    const-string/jumbo v17, "processes"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->fillProcessesSection()V

    .line 182
    const-string/jumbo v17, "status_header"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/SummaryPreference;

    .line 185
    .local v15, "summaryPreference":Lcom/android/settings/SummaryPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    move-wide/from16 v20, v0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_0

    const/4 v14, 0x1

    .line 186
    .local v14, "statsForeground":Z
    :goto_0
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    move-wide/from16 v18, v0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    move-wide/from16 v20, v0

    mul-double v4, v18, v20

    .line 187
    .local v4, "avgRam":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    move-wide/from16 v18, v0

    div-double v18, v4, v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 188
    .local v6, "avgRatio":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v11, v17, v6

    .line 189
    .local v11, "remainingRatio":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 190
    .local v7, "context":Landroid/content/Context;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v6, v0, v11}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    .line 191
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 192
    double-to-long v0, v4

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    .line 191
    invoke-static/range {v17 .. v20}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v16

    .line 193
    .local v16, "usedResult":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/SummaryPreference;->setAmount(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oneplus/settings/utils/OPUtils;->replaceFileSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/SummaryPreference;->setUnits(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 197
    .local v8, "duration":J
    long-to-float v0, v8

    move/from16 v17, v0

    .line 198
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    .line 197
    div-float v17, v17, v18

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v18

    .line 197
    invoke-static/range {v17 .. v18}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 199
    .local v10, "frequency":Ljava/lang/CharSequence;
    const-string/jumbo v17, "frequency"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalScale:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4090000000000000L    # 1024.0

    mul-double v12, v18, v20

    .line 201
    .local v12, "max":D
    const-string/jumbo v17, "max_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object v18

    double-to-long v0, v12

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    .line 201
    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    return-void

    .line 185
    .end local v4    # "avgRam":D
    .end local v6    # "avgRatio":F
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "duration":J
    .end local v10    # "frequency":Ljava/lang/CharSequence;
    .end local v11    # "remainingRatio":F
    .end local v12    # "max":D
    .end local v14    # "statsForeground":Z
    .end local v16    # "usedResult":Landroid/text/format/Formatter$BytesResult;
    :cond_0
    const/4 v14, 0x0

    .restart local v14    # "statsForeground":Z
    goto/16 :goto_0

    .line 186
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    move-wide/from16 v18, v0

    goto/16 :goto_1
.end method

.method private doStopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 411
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->updateRunningServices()V

    .line 412
    return-void
.end method

.method private fillProcessesSection()V
    .locals 18

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 235
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v4, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    const/4 v7, 0x0

    .local v7, "ie":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry;

    .line 238
    .local v5, "entry":Lcom/android/settings/applications/ProcStatsEntry;
    iget-object v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    const-string/jumbo v13, "os"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 239
    iget-object v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    iput-object v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    .line 243
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 241
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/android/settings/applications/ProcessStatsDetail;->getProcessName(Ljava/lang/String;Lcom/android/settings/applications/ProcStatsEntry;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 245
    .end local v5    # "entry":Lcom/android/settings/applications/ProcStatsEntry;
    :cond_1
    sget-object v12, Lcom/android/settings/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    invoke-static {v4, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 246
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 247
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry;

    .line 248
    .restart local v5    # "entry":Lcom/android/settings/applications/ProcStatsEntry;
    new-instance v9, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 249
    .local v9, "processPref":Landroid/support/v7/preference/Preference;
    iget-object v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 252
    iget-wide v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v14, v5, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 253
    .local v2, "duration":J
    iget-wide v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    mul-double/2addr v12, v14

    double-to-long v12, v12

    .line 254
    iget-wide v14, v5, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-long v14, v14

    .line 253
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 255
    .local v10, "memoryUse":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12, v10, v11}, Lcom/oneplus/settings/utils/OPUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "memoryString":Ljava/lang/String;
    long-to-float v12, v2

    .line 257
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v13, v14

    .line 256
    div-float/2addr v12, v13

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 256
    invoke-static {v12, v13}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 259
    .local v6, "frequency":Ljava/lang/CharSequence;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const v13, 0x7f0f1071

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/settings/applications/ProcessStatsDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 258
    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 246
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 262
    .end local v2    # "duration":J
    .end local v5    # "entry":Lcom/android/settings/applications/ProcStatsEntry;
    .end local v6    # "frequency":Ljava/lang/CharSequence;
    .end local v8    # "memoryString":Ljava/lang/String;
    .end local v9    # "processPref":Landroid/support/v7/preference/Preference;
    .end local v10    # "memoryUse":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_3

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 265
    :cond_3
    return-void
.end method

.method private fillServicesSection(Lcom/android/settings/applications/ProcStatsEntry;Landroid/support/v7/preference/PreferenceCategory;)V
    .locals 18
    .param p1, "entry"    # Lcom/android/settings/applications/ProcStatsEntry;
    .param p2, "processPref"    # Landroid/support/v7/preference/PreferenceCategory;

    .prologue
    .line 324
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 325
    .local v8, "pkgServices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/ProcessStatsDetail$PkgService;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v7, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcessStatsDetail$PkgService;>;"
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 327
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 328
    .local v6, "pkg":Ljava/lang/String;
    const/4 v9, 0x0

    .line 329
    .local v9, "psvc":Lcom/android/settings/applications/ProcessStatsDetail$PkgService;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 330
    .local v12, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .end local v9    # "psvc":Lcom/android/settings/applications/ProcessStatsDetail$PkgService;
    .local v3, "is":I
    :goto_1
    if-ltz v3, :cond_2

    .line 331
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .line 332
    .local v5, "pent":Lcom/android/settings/applications/ProcStatsEntry$Service;
    iget-wide v14, v5, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mOnePercentTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_1

    .line 333
    if-nez v9, :cond_0

    .line 334
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;

    .line 335
    .local v9, "psvc":Lcom/android/settings/applications/ProcessStatsDetail$PkgService;
    if-nez v9, :cond_0

    .line 336
    new-instance v9, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;

    .end local v9    # "psvc":Lcom/android/settings/applications/ProcessStatsDetail$PkgService;
    invoke-direct {v9}, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;-><init>()V

    .line 337
    .restart local v9    # "psvc":Lcom/android/settings/applications/ProcessStatsDetail$PkgService;
    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v9    # "psvc":Lcom/android/settings/applications/ProcessStatsDetail$PkgService;
    :cond_0
    iget-object v13, v9, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-wide v14, v9, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;->mDuration:J

    iget-wide v0, v5, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v9, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;->mDuration:J

    .line 330
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 326
    .end local v5    # "pent":Lcom/android/settings/applications/ProcStatsEntry$Service;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v3    # "is":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_3
    sget-object v13, Lcom/android/settings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    invoke-static {v7, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 347
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_5

    .line 348
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;

    iget-object v12, v13, Lcom/android/settings/applications/ProcessStatsDetail$PkgService;->mServices:Ljava/util/ArrayList;

    .line 349
    .restart local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    sget-object v13, Lcom/android/settings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 350
    const/4 v3, 0x0

    .restart local v3    # "is":I
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 351
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .line 352
    .local v10, "service":Lcom/android/settings/applications/ProcStatsEntry$Service;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/applications/ProcessStatsDetail;->getLabel(Lcom/android/settings/applications/ProcStatsEntry$Service;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 353
    .local v4, "label":Ljava/lang/CharSequence;
    new-instance v11, Lcom/android/settings/CancellablePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/android/settings/CancellablePreference;-><init>(Landroid/content/Context;)V

    .line 354
    .local v11, "servicePref":Lcom/android/settings/CancellablePreference;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/settings/CancellablePreference;->setSelectable(Z)V

    .line 355
    invoke-virtual {v11, v4}, Lcom/android/settings/CancellablePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    iget-wide v14, v10, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    long-to-float v13, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v14, v14

    div-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 356
    invoke-static {v13, v14}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/settings/CancellablePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v10, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v0, v10, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 347
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v10    # "service":Lcom/android/settings/applications/ProcStatsEntry$Service;
    .end local v11    # "servicePref":Lcom/android/settings/CancellablePreference;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 362
    .end local v3    # "is":I
    .end local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_5
    return-void
.end method

.method private getLabel(Lcom/android/settings/applications/ProcStatsEntry$Service;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "service"    # Lcom/android/settings/applications/ProcStatsEntry$Service;

    .prologue
    .line 367
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 368
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p1, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 367
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 369
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget v4, v2, Landroid/content/pm/ServiceInfo;->labelRes:I

    if-eqz v4, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 372
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 374
    :cond_0
    iget-object v1, p1, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 375
    .local v1, "label":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 376
    .local v3, "tail":I
    if-ltz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 377
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    :cond_1
    return-object v1
.end method

.method private static getProcessName(Ljava/lang/String;Lcom/android/settings/applications/ProcStatsEntry;)Ljava/lang/String;
    .locals 4
    .param p0, "appLabel"    # Ljava/lang/String;
    .param p1, "entry"    # Lcom/android/settings/applications/ProcStatsEntry;

    .prologue
    .line 276
    iget-object v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 277
    .local v0, "processName":Ljava/lang/String;
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 280
    :cond_0
    iget-object v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 282
    return-object p0

    .line 284
    :cond_1
    iget-object v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 285
    .local v1, "start":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 286
    add-int/lit8 v1, v1, 0x1

    .line 288
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 290
    .end local v1    # "start":I
    :cond_3
    return-object v0
.end method

.method private killProcesses()V
    .locals 6

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 416
    const-string/jumbo v5, "activity"

    .line 415
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 417
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 418
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    .line 419
    .local v1, "ent":Lcom/android/settings/applications/ProcStatsEntry;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 420
    iget-object v4, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 417
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v1    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method private showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 397
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    const v1, 0x7f0f0b8a

    .line 397
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 399
    const v1, 0x7f0f0b8b

    .line 397
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 400
    new-instance v1, Lcom/android/settings/applications/ProcessStatsDetail$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail$5;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0f0b32

    .line 397
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 405
    const v1, 0x7f0f0b33

    const/4 v2, 0x0

    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 407
    return-void
.end method

.method private stopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 385
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    return-void

    .line 389
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "ProcessStatsDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    return-void

    .line 393
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method private updateRunningServices()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    check-cast v1, Landroid/app/ActivityManager;

    .line 145
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 148
    .local v5, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 149
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 150
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/CancellablePreference;

    invoke-virtual {v7, v9}, Lcom/android/settings/CancellablePreference;->setCancellable(Z)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 155
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 156
    .local v4, "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v7, :cond_2

    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v7, :cond_2

    .line 154
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_2
    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_1

    .line 162
    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 163
    .local v6, "service":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/CancellablePreference;

    .line 164
    .local v3, "pref":Lcom/android/settings/CancellablePreference;
    if-eqz v3, :cond_1

    .line 165
    new-instance v7, Lcom/android/settings/applications/ProcessStatsDetail$4;

    invoke-direct {v7, p0, v6}, Lcom/android/settings/applications/ProcessStatsDetail$4;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V

    invoke-virtual {v3, v7}, Lcom/android/settings/CancellablePreference;->setOnCancelListener(Lcom/android/settings/CancellablePreference$OnCancelListener;)V

    .line 171
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/settings/CancellablePreference;->setCancellable(Z)V

    goto :goto_2

    .line 174
    .end local v3    # "pref":Lcom/android/settings/CancellablePreference;
    .end local v4    # "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v6    # "service":Landroid/content/ComponentName;
    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x15

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package_entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 103
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 104
    const-string/jumbo v1, "weight_to_ram"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    .line 105
    const-string/jumbo v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    .line 106
    const-string/jumbo v1, "max_memory_usage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    .line 107
    const-string/jumbo v1, "total_scale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalScale:D

    .line 108
    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mOnePercentTime:J

    .line 110
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->createDetails()V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->setHasOptionsMenu(Z)V

    .line 113
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 207
    const/4 v0, 0x1

    const v1, 0x7f0f0b05

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    .line 208
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 209
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 215
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->killProcesses()V

    .line 216
    const/4 v0, 0x1

    return v0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->updateRunningServices()V

    .line 139
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->finish()V

    .line 121
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 123
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 126
    return-void

    .line 124
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method
