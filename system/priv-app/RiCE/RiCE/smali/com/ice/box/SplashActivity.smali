.class public Lcom/ice/box/SplashActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/SplashActivity$checkLegacyLicense;,
        Lcom/ice/box/SplashActivity$getNightlyOnlineVersionAndChangelog;,
        Lcom/ice/box/SplashActivity$getStableOnlineVersion;
    }
.end annotation


# static fields
.field public static entries:[Ljava/lang/CharSequence;

.field public static entryValues:[Ljava/lang/CharSequence;

.field private static isICE:Z

.field private static isS8:Z

.field private static isS9:Z

.field private static sharedPref:Landroid/content/SharedPreferences;

.field public static splashActivity:Lcom/ice/box/SplashActivity;


# instance fields
.field private forceEnglish:Z

.field private googleAccount:Ljava/lang/String;

.field private isARHD:Z

.field private isException:Z

.field private isLegacyLicense:Z

.field private isMonthly:Z

.field private isNightly:Z

.field private isOP6:Z

.field private isPremium10:Z

.field private isPremium2:Z

.field private isPremium5:Z

.field private isSupportedDevice:Z

.field private isYearly:Z

.field private mThemeId:I

.field private myBilling:Lcom/ice/box/iab/MyBilling;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const v0, 0x7f110126

    .line 79
    iput v0, p0, Lcom/ice/box/SplashActivity;->mThemeId:I

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/SplashActivity;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->gotRoot()V

    return-void
.end method

.method static synthetic access$100(Lcom/ice/box/SplashActivity;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->isSystemApp()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/ice/box/SplashActivity;->isS9:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/ice/box/SplashActivity;->isS8:Z

    return v0
.end method

.method static synthetic access$1200()Landroid/content/SharedPreferences;
    .locals 1

    .line 73
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ice/box/SplashActivity;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->resetDaily()V

    return-void
.end method

.method static synthetic access$300(Lcom/ice/box/SplashActivity;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->androidVersion()V

    return-void
.end method

.method static synthetic access$400(Lcom/ice/box/SplashActivity;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->writeAppsArray()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/ice/box/SplashActivity;->isICE:Z

    return v0
.end method

.method static synthetic access$800(Lcom/ice/box/SplashActivity;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/ice/box/SplashActivity;->isARHD:Z

    return p0
.end method

.method private androidVersion()V
    .locals 2

    .line 343
    :try_start_0
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "androidVersion"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "androidVersion"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private copyScriptFiles()V
    .locals 7

    .line 188
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/backup_colors.sh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/restore_colors.sh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct/range {v3 .. v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/set_build_prop.sh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct/range {v4 .. v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/set_others.sh"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v4 .. v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "backup_colors.sh"

    .line 192
    invoke-static/range {v4 .. v4}, Lcom/ice/box/helpers/Tools;->copyAssetsFile(Ljava/lang/String;)V

    const-string v4, "restore_colors.sh"

    .line 193
    invoke-static/range {v4 .. v4}, Lcom/ice/box/helpers/Tools;->copyAssetsFile(Ljava/lang/String;)V

    const-string v4, "set_build_prop.sh"

    .line 194
    invoke-static/range {v4 .. v4}, Lcom/ice/box/helpers/Tools;->copyAssetsFile(Ljava/lang/String;)V

    const-string v4, "set_others.sh"

    .line 195
    invoke-static/range {v4 .. v4}, Lcom/ice/box/helpers/Tools;->copyAssetsFile(Ljava/lang/String;)V

    .line 197
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 755 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 198
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct/range {v4 .. v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 755 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v4 .. v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 199
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 755 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 200
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 755 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to set scripts permissions"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private detectEnvironment()V
    .locals 7

    const-string v0, "ro.product.device"

    .line 368
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.build.display.id"

    .line 369
    invoke-static/range {v1 .. v1}, Lcom/ice/box/helpers/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "rice.version"

    .line 370
    invoke-static/range {v2 .. v2}, Lcom/ice/box/helpers/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    sget-object v3, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isS8"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 374
    sget-object v3, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isS9"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 375
    sget-object v3, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isOP6"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 376
    sget-object v3, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isICE"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    sget-object v3, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "whatDevice"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    sget-object v3, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isSupportedDevice"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 379
    iput-boolean v5, p0, Lcom/ice/box/SplashActivity;->isSupportedDevice:Z

    .line 383
    invoke-static/range {v0 .. v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "dreamlte"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    const-string v3, "dream2lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "starlte"

    .line 389
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "star2lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "OnePlus6"

    .line 395
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isSupportedDevice"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 397
    iput-boolean v4, p0, Lcom/ice/box/SplashActivity;->isSupportedDevice:Z

    .line 398
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isOP6"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "whatDevice"

    const-string v6, "onePlus6"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 400
    iput-boolean v4, p0, Lcom/ice/box/SplashActivity;->isOP6:Z

    goto/16 :goto_2

    .line 402
    :cond_2
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isSupportedDevice"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 403
    iput-boolean v5, p0, Lcom/ice/box/SplashActivity;->isSupportedDevice:Z

    goto :goto_2

    .line 390
    :cond_3
    :goto_0
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isSupportedDevice"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    iput-boolean v4, p0, Lcom/ice/box/SplashActivity;->isSupportedDevice:Z

    .line 392
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isS9"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "whatDevice"

    const-string v6, "galaxyS8"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 394
    sput-boolean v4, Lcom/ice/box/SplashActivity;->isS9:Z

    goto :goto_2

    .line 384
    :cond_4
    :goto_1
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isSupportedDevice"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    iput-boolean v4, p0, Lcom/ice/box/SplashActivity;->isSupportedDevice:Z

    .line 386
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isS8"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 387
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "whatDevice"

    const-string v6, "galaxyS8"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 388
    sput-boolean v4, Lcom/ice/box/SplashActivity;->isS8:Z

    .line 407
    :goto_2
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isSupportedDevice:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isOP6:Z

    if-eqz v0, :cond_6

    const-string v0, "rice.version"

    .line 408
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 409
    sput-boolean v4, Lcom/ice/box/SplashActivity;->isICE:Z

    .line 410
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isICE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_3

    .line 412
    :cond_5
    sput-boolean v5, Lcom/ice/box/SplashActivity;->isICE:Z

    .line 413
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isICE"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_3

    .line 415
    :cond_6
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isSupportedDevice:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/ice/box/SplashActivity;->isS8:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/ice/box/SplashActivity;->isS9:Z

    if-eqz v0, :cond_a

    .line 416
    :cond_7
    aget-object v0, v1, v5

    const-string v3, "RENOVATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 417
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isICE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isARHD"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 419
    sput-boolean v4, Lcom/ice/box/SplashActivity;->isICE:Z

    .line 420
    iput-boolean v5, p0, Lcom/ice/box/SplashActivity;->isARHD:Z

    goto :goto_3

    .line 421
    :cond_8
    aget-object v0, v1, v5

    const-string v3, "SoLdieR9312"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 422
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isICE"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 423
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isARHD"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 424
    sput-boolean v5, Lcom/ice/box/SplashActivity;->isICE:Z

    .line 425
    iput-boolean v4, p0, Lcom/ice/box/SplashActivity;->isARHD:Z

    goto :goto_3

    .line 427
    :cond_9
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isICE"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 428
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isARHD"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 429
    sput-boolean v5, Lcom/ice/box/SplashActivity;->isICE:Z

    .line 430
    iput-boolean v5, p0, Lcom/ice/box/SplashActivity;->isARHD:Z

    goto :goto_3

    .line 433
    :cond_a
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isICE"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 434
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isARHD"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 435
    sput-boolean v5, Lcom/ice/box/SplashActivity;->isICE:Z

    .line 436
    iput-boolean v5, p0, Lcom/ice/box/SplashActivity;->isARHD:Z

    .line 440
    :goto_3
    sget-boolean v0, Lcom/ice/box/SplashActivity;->isICE:Z

    const/16 v3, 0xa

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isOP6:Z

    if-eqz v0, :cond_c

    .line 441
    invoke-static/range {v2 .. v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 442
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isNightly"

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 444
    :try_start_0
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localNightlyVersion"

    const-string v1, "[\\D]"

    const-string v3, ""

    .line 445
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 444
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 445
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    const-string p0, "ICEDEBUG"

    const-string v0, "Wrong  ro.build.display.id value, 4th word isn\'t a number"

    .line 447
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localNightlyVersion"

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    .line 452
    :cond_b
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isNightly"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 454
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersionText"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    :try_start_1
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersion"

    const-string v1, "[\\D]"

    const-string v4, ""

    .line 457
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 456
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 457
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    const-string p0, "ICEDEBUG"

    const-string v0, "Wrong  ro.build.display.id value, 4th word isn\'t a number"

    .line 459
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersion"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    .line 464
    :cond_c
    sget-boolean v0, Lcom/ice/box/SplashActivity;->isICE:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/ice/box/SplashActivity;->isS8:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/ice/box/SplashActivity;->isS9:Z

    if-eqz v0, :cond_f

    .line 465
    :cond_d
    aget-object p0, v1, v2

    const-string v0, "r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 467
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isNightly"

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    :try_start_2
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localNightlyVersion"

    aget-object v1, v1, v2

    const-string v2, "[\\D]"

    const-string v3, ""

    .line 470
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 469
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 470
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_2
    const-string p0, "ICEDEBUG"

    const-string v0, "Wrong  ro.build.display.id value, 4th word isn\'t a number"

    .line 472
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localNightlyVersion"

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    .line 478
    :cond_e
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isNightly"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersionText"

    aget-object v4, v1, v2

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 482
    :try_start_3
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersion"

    aget-object v1, v1, v2

    const-string v2, "[\\D]"

    const-string v4, ""

    .line 483
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 482
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 483
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    :catch_3
    const-string p0, "ICEDEBUG"

    const-string v0, "Wrong  ro.build.display.id value, 4th word isn\'t a number"

    .line 485
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersion"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    .line 490
    :cond_f
    iget-boolean p0, p0, Lcom/ice/box/SplashActivity;->isARHD:Z

    if-eqz p0, :cond_11

    sget-boolean p0, Lcom/ice/box/SplashActivity;->isS8:Z

    if-nez p0, :cond_10

    sget-boolean p0, Lcom/ice/box/SplashActivity;->isS9:Z

    if-eqz p0, :cond_11

    .line 492
    :cond_10
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersionText"

    aget-object v4, v1, v2

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 494
    :try_start_4
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersion"

    aget-object v1, v1, v2

    const-string v2, "[\\D]"

    const-string v4, ""

    .line 495
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 494
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 495
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    const-string p0, "ICEDEBUG"

    const-string v0, "Wrong  ro.build.display.id value, 4th word isn\'t a number"

    .line 497
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersion"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 501
    :goto_4
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isNightly"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    .line 503
    :cond_11
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersionText"

    const-string v1, "1.0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 505
    :try_start_5
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersion"

    const-string v1, "1.0"

    const-string v2, "[\\D]"

    const-string v4, ""

    .line 506
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 505
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 506
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    const-string p0, "ICEDEBUG"

    const-string v0, "Wrong  ro.build.display.id value, 4th word isn\'t a number"

    .line 508
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "localStableVersion"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_5
    return-void
.end method

.method private getBoard()V
    .locals 3

    .line 329
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isAppUpdate"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 330
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "getBoard"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 333
    :cond_0
    :try_start_0
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "getBoard"

    const-string v1, "ro.product.board"

    invoke-static/range {v1 .. v1}, Lcom/ice/box/helpers/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 334
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private gotRoot()V
    .locals 2

    .line 220
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isDeviceRootPresent"

    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->isRootPresent()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isDeviceRooted"

    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->isRootGranted()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private isAppUpdate()V
    .locals 4

    .line 350
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "VERSION_CODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 351
    sget-object v1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "VERSION_CODE"

    const/16 v3, 0xd8

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_0

    .line 353
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isAppUpdate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->copyScriptFiles()V

    goto :goto_0

    :cond_0
    if-eq v1, v3, :cond_1

    .line 357
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isAppUpdate"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->copyScriptFiles()V

    goto :goto_0

    .line 361
    :cond_1
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isAppUpdate"

    const/4 v1, 0x3

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 364
    :goto_0
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "VERSION_CODE"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private isForceEnglish()V
    .locals 3

    .line 284
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->forceEnglish:Z

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "forceEnglish"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "en"

    .line 287
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-static/range {v1 .. v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 289
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct/range {v0 .. v0}, Landroid/content/res/Configuration;-><init>()V

    .line 290
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 291
    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 294
    :cond_0
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "forceEnglish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 296
    invoke-static/range {v0 .. v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 297
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct/range {v1 .. v1}, Landroid/content/res/Configuration;-><init>()V

    .line 298
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 299
    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :goto_0
    return-void
.end method

.method private isICE()V
    .locals 2

    const-string p0, "ro.build.display.id"

    .line 316
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 317
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "RENOVATE"

    .line 318
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 319
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isICE"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 321
    :cond_0
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isICE"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 324
    :cond_1
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isICE"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private isPackageInstalledAndEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 211
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 212
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private isSystemApp()V
    .locals 2

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 309
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isSystemApp"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 311
    :cond_1
    sget-object p0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "isSystemApp"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method

.method private licenseChecking()V
    .locals 7

    .line 236
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isMonthly:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isYearly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isPremium2:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isPremium5:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isPremium10:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isLegacyLicense:Z

    if-nez v0, :cond_0

    .line 238
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isFreeVersion"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "THEMEID"

    const v4, 0x7f110126

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "romupdate"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "nightlyupdate"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 245
    :cond_0
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "isFreeVersion"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    :goto_0
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isLegacyLicense:Z

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ice/box/SplashActivity$checkLegacyLicense;

    invoke-direct {v0, v3}, Lcom/ice/box/SplashActivity$checkLegacyLicense;-><init>(Lcom/ice/box/SplashActivity$1;)V

    new-array v5, v4, [Ljava/lang/String;

    iget-object v6, p0, Lcom/ice/box/SplashActivity;->googleAccount:Ljava/lang/String;

    aput-object v6, v5, v2

    const-string v6, "0"

    aput-object v6, v5, v1

    invoke-virtual {v0, v5}, Lcom/ice/box/SplashActivity$checkLegacyLicense;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 249
    :cond_1
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isException:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/ice/box/SplashActivity$checkLegacyLicense;

    invoke-direct {v0, v3}, Lcom/ice/box/SplashActivity$checkLegacyLicense;-><init>(Lcom/ice/box/SplashActivity$1;)V

    new-array v3, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/ice/box/SplashActivity;->googleAccount:Ljava/lang/String;

    aput-object v5, v3, v2

    const-string v5, "1"

    aput-object v5, v3, v1

    invoke-virtual {v0, v3}, Lcom/ice/box/SplashActivity$checkLegacyLicense;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 258
    :cond_2
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isLegacyLicense:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    .line 259
    :goto_1
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isPremium2:Z

    if-eqz v0, :cond_4

    add-int/lit8 v4, v4, 0x2

    .line 260
    :cond_4
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isPremium5:Z

    if-eqz v0, :cond_5

    add-int/lit8 v4, v4, 0x5

    .line 261
    :cond_5
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isPremium10:Z

    if-eqz v0, :cond_6

    add-int/lit8 v4, v4, 0xa

    .line 262
    :cond_6
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isMonthly:Z

    if-eqz v0, :cond_7

    add-int/lit8 v4, v4, 0x10

    .line 263
    :cond_7
    iget-boolean v0, p0, Lcom/ice/box/SplashActivity;->isException:Z

    if-eqz v0, :cond_8

    add-int/lit8 v4, v4, 0x10

    .line 264
    :cond_8
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "licenseRating"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v0, 0x10

    if-lt v4, v0, :cond_9

    .line 268
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "rice_type"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "ICEDEBUG"

    const-string v0, "Fail to set rice type 1 via settings, attempting as root"

    .line 270
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "settings put global rice_type 1"

    .line 271
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 275
    :cond_9
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "rice_type"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "ICEDEBUG"

    const-string v0, "Fail to set rice type 0 via settings, attempting as root"

    .line 277
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "settings put global rice_type 0"

    .line 278
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private resetDaily()V
    .locals 3

    .line 521
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy.MM.dd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[\\D]"

    const-string v1, ""

    .line 523
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 522
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 524
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "lastRunDate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le p0, v0, :cond_0

    .line 526
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "resetDaily"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 528
    :cond_0
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "resetDaily"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 530
    :goto_0
    sget-object v0, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastRunDate"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private writeAppsArray()V
    .locals 5

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 536
    new-instance v0, Landroid/content/Intent;

    invoke-direct/range {v0 .. v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 538
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 539
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 540
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct/range {v3 .. v3}, Ljava/util/ArrayList;-><init>()V

    .line 543
    invoke-interface/range {v0 .. v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 544
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual/range {v2 .. v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_1
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v4, 0x80

    .line 550
    :try_start_0
    invoke-virtual {p0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 556
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 557
    invoke-interface/range {v3 .. v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    .line 558
    invoke-interface/range {v3 .. v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    .line 560
    invoke-interface/range {v3 .. v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 561
    sget-object v3, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    .line 562
    sget-object v3, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 177
    :try_start_0
    invoke-super/range {p0 .. p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/ice/box/SplashActivity;->myBilling:Lcom/ice/box/iab/MyBilling;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ice/box/iab/MyBilling;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 101
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 103
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "THEMEID"

    iget v1, p0, Lcom/ice/box/SplashActivity;->mThemeId:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/SplashActivity;->mThemeId:I

    .line 104
    iget p1, p0, Lcom/ice/box/SplashActivity;->mThemeId:I

    invoke-virtual {p0, p1}, Lcom/ice/box/SplashActivity;->setTheme(I)V

    const p1, 0x7f0c0021

    .line 105
    invoke-virtual {p0, p1}, Lcom/ice/box/SplashActivity;->setContentView(I)V

    .line 106
    sput-object p0, Lcom/ice/box/SplashActivity;->splashActivity:Lcom/ice/box/SplashActivity;

    .line 108
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isOP6"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isOP6:Z

    .line 109
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isS8"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/SplashActivity;->isS8:Z

    .line 110
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isS9"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/SplashActivity;->isS9:Z

    .line 111
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isICE"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/SplashActivity;->isICE:Z

    .line 112
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isARHD"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isARHD:Z

    .line 113
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isNightly"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isNightly:Z

    .line 114
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isICE"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/SplashActivity;->isICE:Z

    .line 115
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isARHD"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isARHD:Z

    .line 116
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "googleAccount"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/SplashActivity;->googleAccount:Ljava/lang/String;

    .line 117
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isMonthly"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isMonthly:Z

    .line 118
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isYearly"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isYearly:Z

    .line 119
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isPremium2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isPremium2:Z

    .line 120
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isPremium5"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isPremium5:Z

    .line 121
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isPremium10"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isPremium10:Z

    .line 122
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isLegacyLicense"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isLegacyLicense:Z

    .line 123
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isException"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isException:Z

    .line 124
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "forceEnglish"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->forceEnglish:Z

    .line 125
    sget-object p1, Lcom/ice/box/SplashActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isSupportedDevice"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/SplashActivity;->isSupportedDevice:Z

    .line 128
    new-instance p1, Lcom/ice/box/iab/MyBilling;

    invoke-direct {p1, p0}, Lcom/ice/box/iab/MyBilling;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/ice/box/SplashActivity;->myBilling:Lcom/ice/box/iab/MyBilling;

    .line 130
    :try_start_0
    iget-object p1, p0, Lcom/ice/box/SplashActivity;->myBilling:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/MyBilling;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :catch_0
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->licenseChecking()V

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->isForceEnglish()V

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->isAppUpdate()V

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/SplashActivity;->detectEnvironment()V

    .line 142
    new-instance p1, Lcom/ice/box/SplashActivity$1;

    invoke-direct {p1, p0}, Lcom/ice/box/SplashActivity$1;-><init>(Lcom/ice/box/SplashActivity;)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/SplashActivity$1;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 167
    invoke-super/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 169
    :try_start_0
    iget-object p0, p0, Lcom/ice/box/SplashActivity;->myBilling:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/MyBilling;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
