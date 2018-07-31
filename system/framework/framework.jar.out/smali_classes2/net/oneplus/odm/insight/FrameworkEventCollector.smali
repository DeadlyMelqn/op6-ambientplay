.class public Lnet/oneplus/odm/insight/FrameworkEventCollector;
.super Ljava/lang/Object;
.source "FrameworkEventCollector.java"


# static fields
.field public static final MSG_SUBMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FrameworkEventCollector"

.field private static final TAG_VALUES:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDiagnoseManager:Landroid/os/OPDiagnoseManager;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mNeedRecordLogTagSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mSystemAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .prologue
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1
    .param p0, "-this"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .prologue
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic -set0(Lnet/oneplus/odm/insight/FrameworkEventCollector;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 0
    .param p0, "-this"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;
    .param p1, "-value"    # Lnet/oneplus/odm/insight/tracker/OSTracker;

    .prologue
    iput-object p1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "system_server_crash"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "system_server_anr"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "system_server_watchdog"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->TAG_VALUES:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lnet/oneplus/odm/insight/FrameworkEventCollector;->TAG_VALUES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mNeedRecordLogTagSet:Ljava/util/HashSet;

    .line 46
    iput-object p1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initHandler()V

    .line 48
    const-string/jumbo v0, "opdiagnose"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/OPDiagnoseManager;

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    .line 49
    return-void
.end method

.method private getVersionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string/jumbo v3, ""

    .line 251
    .local v3, "version":Ljava/lang/String;
    iget-object v4, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 252
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 253
    const-string/jumbo v4, "FrameworkEventCollector"

    const-string/jumbo v5, "PackageManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string/jumbo v4, ""

    return-object v4

    .line 257
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 258
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 259
    const-string/jumbo v4, "FrameworkEventCollector"

    const-string/jumbo v5, "PackageInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string/jumbo v4, ""

    return-object v4

    .line 262
    :cond_1
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 266
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "FrameworkEventCollector"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string/jumbo v3, ""

    .line 231
    .local v3, "version":Ljava/lang/String;
    iget-object v4, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 232
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 233
    const-string/jumbo v4, "FrameworkEventCollector"

    const-string/jumbo v5, "PackageManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string/jumbo v4, ""

    return-object v4

    .line 237
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 238
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 239
    const-string/jumbo v4, "FrameworkEventCollector"

    const-string/jumbo v5, "PackageInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string/jumbo v4, ""

    return-object v4

    .line 242
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "FrameworkEventCollector"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "FrameworkEventCollector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 188
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 189
    new-instance v0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;-><init>(Lnet/oneplus/odm/insight/FrameworkEventCollector;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method private initSystemAppList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 213
    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5080013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    new-array v0, v2, [I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5080012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    goto :goto_0

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Neither O2 or H2."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isForeground(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v3, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 225
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 226
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private recordDiagnoseEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/OPDiagnoseManager;->addIssueCount(II)Z

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string/jumbo v0, "FrameworkEventCollector"

    const-string/jumbo v1, "mDiagnoseManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recordSystemAppAnr(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v1, "system_app_anr"

    invoke-direct {p0, v1, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recordSystemAppCrash(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const-string/jumbo v2, "FrameworkEventCollector"

    const-string/jumbo v3, "recordSystemAppCrash: packagename is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 107
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "pn"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v2, "fg"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->isForeground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v2, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v2, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v2, "system_app_crash"

    invoke-direct {p0, v2, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FrameworkEventCollector"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recordThirdPartyAnr(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v1, "anr"

    invoke-direct {p0, v1, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recordThirdpatyCrash(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const-string/jumbo v2, "FrameworkEventCollector"

    const-string/jumbo v3, "recordThirdpartyCrash: packagename is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 90
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "pn"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v2, "fg"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->isForeground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v2, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v2, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v2, "crash"

    invoke-direct {p0, v2, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FrameworkEventCollector"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recordWatchDog(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/mdm/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "watchDogFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private submit(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 176
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    if-eqz p2, :cond_0

    .line 178
    const-string/jumbo v2, "ro"

    invoke-static {}, Lnet/oneplus/odm/common/Util;->isRooted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "hashmap"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 181
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 183
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method


# virtual methods
.method public recordAppAnr(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isBgAnr"    # Z

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    const-string/jumbo v2, "FrameworkEventCollector"

    const-string/jumbo v3, "recordSystemAppAnr: packagename is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initSystemAppList()V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "pn"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v2, "fg"

    xor-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v2, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v2, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v2, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordSystemAppAnr(Ljava/util/HashMap;)V

    .line 156
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 151
    .restart local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordThirdPartyAnr(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FrameworkEventCollector"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recordAppCrash(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const-string/jumbo v1, "FrameworkEventCollector"

    const-string/jumbo v2, "recordSystemAppCrash: packagename is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 124
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initSystemAppList()V

    .line 125
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordSystemAppCrash(Ljava/lang/String;)V

    .line 127
    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_APP:I

    invoke-direct {p0, v1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordThirdpatyCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recordSystemError(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mNeedRecordLogTagSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const-string/jumbo v1, "system_server_watchdog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordWatchDog(Ljava/lang/String;)V

    .line 56
    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_BLOCK_SYSTEM_SERVER:I

    invoke-direct {p0, v1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    .line 57
    return-void

    .line 59
    :cond_0
    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_SYSTEM_SERVER:I

    invoke-direct {p0, v1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 63
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
