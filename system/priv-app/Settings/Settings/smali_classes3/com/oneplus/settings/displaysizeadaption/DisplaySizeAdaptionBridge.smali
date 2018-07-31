.class public Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "DisplaySizeAdaptionBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$1;,
        Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$2;,
        Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$3;,
        Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$4;
    }
.end annotation


# static fields
.field private static final BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.android.browser"

.field private static final CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.calendar"

.field private static final CHROME_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"

.field private static final DOWNLOADS_PACKAGE_NAME:Ljava/lang/String; = "com.android.documentsui"

.field private static final DRIVE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.docs"

.field private static final DUO_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.tachyon"

.field public static final FILTER_APP_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_DEFAULT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_FULL_SCREEN:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_ORIGINAL_SIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final GMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gm"

.field private static final GOOGLEQUICKSEARCHBOX_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final GOOGLE_PAY_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.walletnfcrel"

.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final MUSIC_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.music"

.field private static final PHOTOS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.photos"

.field private static final PLAY_STORE_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field private static final VIDEOS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.videos"

.field private static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

.field private static resolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0()Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "-value"    # Ljava/util/List;

    .prologue
    sput-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->resolveInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->isLauncherApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->packageExcludeFilter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->getLauncherApp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    .line 126
    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$1;

    invoke-direct {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_DEFAULT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 148
    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$2;

    invoke-direct {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 169
    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$3;

    invoke-direct {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$3;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_FULL_SCREEN:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 191
    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$4;

    invoke-direct {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$4;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_ORIGINAL_SIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    .prologue
    .line 55
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 56
    iput-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mPm:Landroid/content/pm/PackageManager;

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 59
    return-void
.end method

.method private static getLauncherApp()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 112
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v1
.end method

.method private static isLauncherApp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "flag":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->resolveInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 118
    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->resolveInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    const/4 v0, 0x1

    .line 123
    :cond_0
    return v0

    .line 117
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static packageExcludeFilter(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "filter":Z
    const-string/jumbo v1, "com.google.android.calendar"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string/jumbo v1, "com.android.chrome"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 87
    const-string/jumbo v1, "com.android.documentsui"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 88
    const-string/jumbo v1, "com.google.android.apps.docs"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 89
    const-string/jumbo v1, "com.google.android.apps.tachyon"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 90
    const-string/jumbo v1, "com.google.android.gm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 91
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 92
    const-string/jumbo v1, "com.google.android.apps.walletnfcrel"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 93
    const-string/jumbo v1, "com.google.android.apps.maps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 94
    const-string/jumbo v1, "com.google.android.apps.photos"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 95
    const-string/jumbo v1, "com.google.android.videos"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 96
    const-string/jumbo v1, "com.google.android.music"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 101
    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 102
    const-string/jumbo v1, "com.google.android.youtube"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 103
    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    .end local v0    # "filter":Z
    :goto_0
    return v0

    .line 85
    .restart local v0    # "filter":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 6

    .prologue
    .line 63
    iget-object v5, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v5}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 64
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 65
    .local v0, "N":I
    sget-object v5, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    invoke-virtual {v5}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadAppMap()Ljava/util/Map;

    move-result-object v4

    .line 67
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 68
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 69
    .local v1, "app":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "app":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 7
    .param p1, "app"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 76
    :try_start_0
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v6

    .line 78
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
