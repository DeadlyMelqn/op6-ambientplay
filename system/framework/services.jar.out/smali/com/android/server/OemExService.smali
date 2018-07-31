.class public final Lcom/android/server/OemExService;
.super Lcom/oem/os/IOemExService$Stub;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExService$1;,
        Lcom/android/server/OemExService$2;,
        Lcom/android/server/OemExService$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final ACTION_BACK_COVER:Ljava/lang/String; = "com.oem.intent.action.THREE_BACK_COVER"

.field private static final ACTION_BLACK_MODE_INIT:Ljava/lang/String; = "android.settings.OEM_THEME_MODE.init"

.field private static final ACTION_OXYGEN_DARK_MODE_INIT:Ljava/lang/String; = "com.oneplus.oxygen.changetheme.init"

.field static final DEBUG:Z = true

.field static final DEBUG_OEM_OBSERVER:Z = true

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DOZE_MODE_RESET:Ljava/lang/String; = "doze_mode_reset"

.field private static final GET_ONLINECONFIG:I = 0xd348

.field private static final KERNEL_WAKEUP_SOURCES:Ljava/lang/String; = "/d/wakeup_sources"

.field private static final MSG_INSTALL_COMPLETE:I = 0x3

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OemExService"

.field private static final VENDOR_APP_INSTALLED:Ljava/lang/String; = "vendor_app_installed"

.field private static mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private static mDropbox:Landroid/os/DropBoxManager;

.field private static mMapConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackageInstallState:I

.field private static mPackageVerifierEnable:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mOnelineConfigHandler:Landroid/os/Handler;

.field private mSceneModeController:Lcom/android/server/OemSceneModeController;

.field private volatile mSystemReady:Z

.field private mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

.field private mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private threekey:Lcom/oneplus/threekey/ThreeKey;

.field private threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method static synthetic -get0(Lcom/android/server/OemExService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemExService;

    .prologue
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/OemExService;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemExService;

    .prologue
    iget-object v0, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/OemExService;->mMapConfig:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    return v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemExService;

    .prologue
    iget-object v0, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/OemExService;->mPackageInstallState:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/OemExService;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemExService;
    .param p1, "CONFIG_TAG"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->fetchConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/OemExService;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemExService;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->installAPKs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/OemExService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemExService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemExService;->onSystemReady()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    .line 132
    sput v1, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 134
    sput v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OemExService;->mMapConfig:Ljava/util/Map;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 312
    invoke-direct {p0}, Lcom/oem/os/IOemExService$Stub;-><init>()V

    .line 106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    .line 112
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 143
    new-instance v1, Lcom/android/server/OemExService$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/server/OemExService$1;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mOnelineConfigHandler:Landroid/os/Handler;

    .line 169
    new-instance v1, Lcom/android/server/OemExService$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/server/OemExService$2;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    .line 313
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 314
    .local v0, "pm":Landroid/os/PowerManager;
    iput-object p1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    .line 315
    const-string/jumbo v1, "OemExService"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 318
    sput-object v4, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 319
    const-string/jumbo v1, "dropbox"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    sput-object v1, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    .line 321
    return-void
.end method

.method private fetchConfig(Ljava/lang/String;)V
    .locals 5
    .param p1, "CONFIG_TAG"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 459
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mOnelineConfigHandler:Landroid/os/Handler;

    const v2, 0xd348

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 461
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    iget-object v1, p0, Lcom/android/server/OemExService;->mOnelineConfigHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 463
    return-void
.end method

.method private installAPKs(Ljava/lang/String;)V
    .locals 17
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v10, 0x0

    .line 228
    .local v10, "waitTime":I
    :cond_0
    :try_start_0
    const-string/jumbo v11, "vold.internalSD.mount"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 229
    const-wide/16 v12, 0x3e8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 230
    add-int/lit8 v10, v10, 0x1

    .line 231
    sget-boolean v11, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_1

    const-string/jumbo v11, "OemExService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "installAPKs: wait internalSD ready for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " s."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    const/16 v11, 0xa

    if-le v10, v11, :cond_0

    .line 233
    const-string/jumbo v11, "OemExService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "installAPKs: internal sd is not ready for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " s. Skip install."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-void

    .line 237
    :catch_0
    move-exception v5

    .line 238
    .local v5, "ex":Ljava/lang/Exception;
    const-string/jumbo v11, "OemExService"

    const-string/jumbo v12, "installAPKs error:"

    invoke-static {v11, v12, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 243
    .local v8, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "vendor_app_installed"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "strAppInstalled":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_3

    const-string/jumbo v11, "OemExService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "installAPKs("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "): Settings[VENDOR_APP_INSTALLED] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_3
    new-instance v7, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "/system/vendor/etc/apps/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v7, "path":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 250
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 252
    .local v4, "apkFiles":[Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "package_verifier_enable"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    sput v11, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 255
    const/4 v11, 0x0

    array-length v13, v4

    move v12, v11

    :goto_0
    if-ge v12, v13, :cond_c

    aget-object v2, v4, v12

    .line 256
    .local v2, "apkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 258
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "apkFilePath":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v8, v3, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 260
    .local v6, "info":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_b

    .line 262
    sget-boolean v11, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_4

    const-string/jumbo v14, "OemExService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "["

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v15, "] = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_4
    if-eqz v9, :cond_5

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_6

    :cond_5
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_7

    .line 265
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/android/server/OemExService;->shouldUpdateAPK(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v11

    .line 264
    if-eqz v11, :cond_9

    .line 268
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v14, "package_verifier_enable"

    const/4 v15, 0x0

    invoke-static {v11, v14, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    sget v11, Lcom/android/server/OemExService;->mPackageInstallState:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 270
    sget-boolean v11, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_8

    const-string/jumbo v11, "OemExService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "start install \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\': mPackageInstallState = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/server/OemExService;->mPackageInstallState:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "file://"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 274
    new-instance v14, Lcom/android/server/OemExService$PackageInstallObserver;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/OemExService$PackageInstallObserver;-><init>(Lcom/android/server/OemExService;)V

    .line 276
    iget-object v15, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 275
    const/16 v16, 0x102

    .line 273
    move/from16 v0, v16

    invoke-virtual {v8, v11, v14, v0, v15}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 255
    .end local v3    # "apkFilePath":Ljava/lang/String;
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_9
    :goto_2
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto/16 :goto_0

    .line 262
    .restart local v3    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 279
    :cond_b
    sget-boolean v11, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_9

    const-string/jumbo v11, "OemExService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "PackageInfo is not valid on "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 285
    .end local v2    # "apkFile":Ljava/io/File;
    .end local v3    # "apkFilePath":Ljava/lang/String;
    .end local v4    # "apkFiles":[Ljava/io/File;
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_c
    return-void
.end method

.method private onSystemReady()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 372
    const-string/jumbo v3, "OemExService"

    const-string/jumbo v4, "systemReady"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-boolean v6, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 376
    invoke-direct {p0}, Lcom/android/server/OemExService;->sendBroadcastForChangeTheme()V

    .line 378
    new-instance v3, Lcom/oneplus/threekey/ThreeKeyHw;

    iget-object v4, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/oneplus/threekey/ThreeKeyHw;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    .line 384
    iget-object v3, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v3}, Lcom/oneplus/threekey/ThreeKeyHw;->init()V

    .line 386
    new-array v3, v6, [I

    const/16 v4, 0x29

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 387
    new-instance v3, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    iget-object v4, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    .line 391
    :goto_0
    new-instance v3, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;

    iget-object v4, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

    .line 394
    :try_start_0
    new-instance v3, Lcom/oneplus/threekey/ThreeKey;

    iget-object v4, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/oneplus/threekey/ThreeKey;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    .line 395
    iget-object v3, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v4, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v3, v4}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 396
    iget-object v3, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v4, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v3, v4}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 397
    iget-object v3, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v4, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v4}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/threekey/ThreeKey;->init(I)V
    :try_end_0
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_1
    new-array v3, v6, [I

    const/16 v4, 0x19

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 405
    sget-boolean v3, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "OemExService"

    const-string/jumbo v4, "[scene] satrtMonitorSceneChanging"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iget-object v3, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v3, :cond_1

    .line 407
    new-instance v3, Lcom/android/server/OemSceneModeController;

    iget-object v4, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v3}, Lcom/android/server/OemSceneModeController;->startMonitor()V

    .line 415
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "doze_mode_reset"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 416
    .local v0, "doze_mode_reset":I
    if-nez v0, :cond_3

    .line 417
    iget-object v3, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "doze_mode_enabaled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    iget-object v3, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "doze_mode_reset"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    :cond_3
    iget-object v3, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 424
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-array v3, v6, [I

    aput v5, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v3

    if-nez v3, :cond_5

    .line 425
    :cond_4
    const-string/jumbo v3, "persist.sys.debug.app.h2"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 424
    if-eqz v3, :cond_6

    .line 426
    :cond_5
    const-string/jumbo v3, "h2"

    invoke-virtual {p0, v3}, Lcom/android/server/OemExService;->startApkInstall(Ljava/lang/String;)V

    .line 428
    :cond_6
    return-void

    .line 389
    .end local v0    # "doze_mode_reset":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    new-instance v3, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v4, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    goto/16 :goto_0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string/jumbo v3, "OemExService"

    const-string/jumbo v4, "device is not support threekey"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iput-object v7, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    goto/16 :goto_1

    .line 411
    .end local v1    # "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    :cond_8
    sget-boolean v3, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "OemExService"

    const-string/jumbo v4, "[scene] Scene mode not supported"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sendBroadcastForChangeTheme()V
    .locals 2

    .prologue
    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.OEM_THEME_MODE.init"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "blackModeIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 434
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 435
    return-void
.end method

.method private native setLCDGammaData(I)V
.end method

.method private native setLaserCrossTalk(I)V
.end method

.method private native setLaserOffset(I)V
.end method

.method private shouldUpdateAPK(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x0

    .line 293
    :try_start_0
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 294
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 296
    .local v0, "apkVersion":I
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 297
    .local v2, "installedPkgVersion":I
    if-le v0, v2, :cond_0

    .line 298
    const-string/jumbo v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "We should update ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v4, 0x1

    return v4

    .line 301
    :cond_0
    sget-boolean v4, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: installed=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',  preloaded=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v0    # "apkVersion":I
    .end local v2    # "installedPkgVersion":I
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    :goto_0
    return v7

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "OemExService"

    const-string/jumbo v5, "shouldUpdateAPK error:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 2
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 566
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[setThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 568
    return-void
.end method

.method public disableDefaultThreeKey()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 557
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[disableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void
.end method

.method public dumpLightBugreport(Ljava/lang/String;)V
    .locals 28
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 596
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v23, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 597
    .local v19, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-nez v23, :cond_2

    const/4 v5, 0x1

    .line 598
    .local v5, "bufferWasEmpty":Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 601
    .local v14, "elapsedStartTime":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 602
    .local v7, "date":Ljava/util/Date;
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string/jumbo v23, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 605
    .local v20, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v23, "ro.build.display.id"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 607
    .local v6, "buildId":Ljava/lang/String;
    const-string/jumbo v23, "ro.build.fingerprint"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 610
    .local v9, "fingerprint":Ljava/lang/String;
    const-string/jumbo v23, "ro.build.version.sdk"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 612
    .local v21, "sdkVersion":Ljava/lang/String;
    const-string/jumbo v23, "ro.product.model"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 614
    .local v17, "modelName":Ljava/lang/String;
    const-string/jumbo v23, "persist.sys.timezone"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 617
    .local v22, "timeZone":Ljava/lang/String;
    const-string/jumbo v23, "========================================================\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string/jumbo v23, "== dumpstate: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    const-string/jumbo v23, "========================================================\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string/jumbo v23, "Build: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    const-string/jumbo v23, "Build fingerprint: \'"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x27

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    const-string/jumbo v23, "DeviceID: null\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string/jumbo v23, "[ro.build.version.sdk]: ["

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5d

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    const-string/jumbo v23, "[ro.product.model]: ["

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5d

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    const-string/jumbo v23, "[persist.sys.timezone]: ["

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5d

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    sget-object v23, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-eqz v23, :cond_0

    .line 629
    const-string/jumbo v23, "-------------------------------------------------------------------------------\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    sget-object v23, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getPidMap(Ljava/lang/StringBuilder;)V

    .line 633
    const-string/jumbo v23, "-------------------------------------------------------------------------------\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string/jumbo v23, "DUMP OF SERVICE batterystats:\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    sget-object v23, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 638
    const-string/jumbo v23, "========================================================\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string/jumbo v23, "== Checkins\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string/jumbo v23, "========================================================\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string/jumbo v23, "------ CHECKIN BATTERYSTATS (dumpsys -t 30 batterystats -c) ------\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v23, "-c"

    const/16 v24, 0x0

    aput-object v23, v4, v24

    .line 643
    .local v4, "args":[Ljava/lang/String;
    sget-object v23, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 647
    .end local v4    # "args":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v23, "-------------------------------------------------------------------------------\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string/jumbo v23, "DUMP OF SERVICE sensorservice:\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string/jumbo v23, "------ KERNEL WAKE SOURCES (/d/wakeup_sources) ------\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const/16 v16, 0x0

    .line 654
    .local v16, "line":Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/FileReader;

    new-instance v24, Ljava/io/File;

    const-string/jumbo v25, "/d/wakeup_sources"

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v23 .. v24}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 655
    .end local v16    # "line":Ljava/lang/String;
    .local v18, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "line":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 656
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const/16 v23, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 660
    .end local v16    # "line":Ljava/lang/String;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    .line 661
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v23, "OemExService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "IOException : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v8    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 665
    .local v10, "elapsedEndTime":J
    sub-long v24, v10, v14

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x408f400000000000L    # 1000.0

    div-double v12, v24, v26

    .line 666
    .local v12, "elapsedSeconds":D
    const-string/jumbo v23, "--------- "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "s was the duration of dumpLightBugreport"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    sget-object v23, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    if-eqz v23, :cond_1

    .line 670
    sget-object v23, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_1
    return-void

    .line 597
    .end local v5    # "bufferWasEmpty":Z
    .end local v6    # "buildId":Ljava/lang/String;
    .end local v7    # "date":Ljava/util/Date;
    .end local v9    # "fingerprint":Ljava/lang/String;
    .end local v10    # "elapsedEndTime":J
    .end local v12    # "elapsedSeconds":D
    .end local v14    # "elapsedStartTime":J
    .end local v17    # "modelName":Ljava/lang/String;
    .end local v20    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v21    # "sdkVersion":Ljava/lang/String;
    .end local v22    # "timeZone":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "bufferWasEmpty":Z
    goto/16 :goto_0

    .line 659
    .restart local v6    # "buildId":Ljava/lang/String;
    .restart local v7    # "date":Ljava/util/Date;
    .restart local v9    # "fingerprint":Ljava/lang/String;
    .restart local v14    # "elapsedStartTime":J
    .restart local v16    # "line":Ljava/lang/String;
    .restart local v17    # "modelName":Ljava/lang/String;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v21    # "sdkVersion":Ljava/lang/String;
    .restart local v22    # "timeZone":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public enalbeDefaultThreeKey()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 562
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[enableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void
.end method

.method public fetchOnlineConfig(Ljava/lang/String;)V
    .locals 2
    .param p1, "CONFIG_TAG"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemExService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/OemExService$4;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    return-void
.end method

.method public getConfigValues(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "CONFIG_TAG"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 466
    sget-object v9, Lcom/android/server/OemExService;->mMapConfig:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 468
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 469
    .local v0, "configValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    sget-object v9, Lcom/android/server/OemExService;->mMapConfig:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 470
    .local v4, "jsArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    .line 471
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 472
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 473
    .local v5, "json":Lorg/json/JSONObject;
    const-string/jumbo v9, "name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "keyName":Ljava/lang/String;
    const-string/jumbo v9, "value"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 475
    .local v7, "valueArray":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v8, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 477
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 479
    :cond_0
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "keyName":Ljava/lang/String;
    .end local v7    # "valueArray":Lorg/json/JSONArray;
    .end local v8    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    sget-boolean v9, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "OemExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getConfigValues: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_2
    return-object v0

    .line 484
    .end local v0    # "configValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v4    # "jsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 487
    :cond_3
    return-object v12
.end method

.method public getThreeKeyStatus()I
    .locals 3

    .prologue
    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I
    :try_end_0
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "system unsupport for threekey"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v1, 0x0

    return v1
.end method

.method public monitorSceneChanging(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 325
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x19

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[scene] monitorSceneChanging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    if-eqz p1, :cond_3

    .line 329
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v0, :cond_1

    .line 330
    new-instance v0, Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->startMonitorPassive()V

    .line 341
    :cond_2
    :goto_0
    return-void

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->stopMonitorPassive()V

    goto :goto_0

    .line 339
    :cond_4
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[scene] Scene mode not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pauseExInputEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 513
    return-void
.end method

.method public preEvaluateModeStatus(II)Z
    .locals 4
    .param p1, "modeType"    # I
    .param p2, "switcherType"    # I

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "result":Z
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x19

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] preEvaluateModeStatus: modeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 348
    const-string/jumbo v3, " swithcer switcherType: "

    .line 347
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/OemSceneModeController;->preEvaluateModeStatus(II)Z

    move-result v0

    .line 355
    .end local v0    # "result":Z
    :cond_1
    :goto_0
    return v0

    .line 353
    .restart local v0    # "result":Z
    :cond_2
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "[scene] Scene mode not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z
    .locals 1
    .param p1, "callBackAdd"    # Lcom/oem/os/IOemExInputCallBack;
    .param p2, "keycode"    # I

    .prologue
    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method public removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 2
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 571
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[removeThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 573
    return-void
.end method

.method public resetThreeKey()V
    .locals 2

    .prologue
    .line 576
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[resetThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKey;->reset()V

    .line 578
    return-void
.end method

.method public resumeExInputEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 516
    return-void
.end method

.method public setActivityManager(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 675
    sput-object p1, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 676
    return-void
.end method

.method public setGammaData(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLCDGammaData(I)V

    .line 545
    return-void
.end method

.method public setHomeUpLock()Z
    .locals 2

    .prologue
    .line 539
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[setHomeUpLock]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v0, 0x1

    return v0
.end method

.method public setInteractive(ZJ)Z
    .locals 1
    .param p1, "interactive"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 527
    const/4 v0, 0x1

    return v0
.end method

.method public setKeyMode(I)Z
    .locals 1
    .param p1, "keyMode"    # I

    .prologue
    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method public setLaserSensorCrossTalk(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserCrossTalk(I)V

    .line 553
    return-void
.end method

.method public setLaserSensorOffset(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserOffset(I)V

    .line 549
    return-void
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method public startApkInstall(Ljava/lang/String;)V
    .locals 2
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 441
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    if-nez v0, :cond_0

    .line 442
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemExService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/OemExService$3;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    :cond_0
    return-void
.end method

.method public startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z
    .locals 1
    .param p1, "patch"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method public stopUevent(Lcom/oem/os/IOemUeventCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public systemRunning()V
    .locals 7

    .prologue
    .line 359
    iget-object v2, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 367
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 369
    return-void

    .line 359
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V
    .locals 0
    .param p1, "callBackRemove"    # Lcom/oem/os/IOemExInputCallBack;

    .prologue
    .line 510
    return-void
.end method
