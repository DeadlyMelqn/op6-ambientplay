.class public Lcom/oneplus/settings/apploader/OPApplicationLoader;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/apploader/OPApplicationLoader$1;,
        Lcom/oneplus/settings/apploader/OPApplicationLoader$GestureAppComparetor;,
        Lcom/oneplus/settings/apploader/OPApplicationLoader$SelectedAppComparetor;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_CATEGORY_URI:Landroid/net/Uri;

.field private static final CALCULATOR_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.calculator"

.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.camera"

.field private static final CARD_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.card"

.field public static final CATEGORY_AUTHORIY:Ljava/lang/String; = "net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider"

.field private static final CONTACS_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final DATA_LOAD_COMPLETED:I = 0x0

.field private static final DESKCLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.deskclock"

.field private static final FILEMANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.filemanager"

.field private static final GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final GOOGLE_QUICK_SEARCH_BOX_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final LOAD_ALL_APP:I = 0x0

.field public static final LOAD_ALL_APP_SORT_BY_SELECTED:I = 0x3

.field public static final LOAD_SELECTED_APP:I = 0x1

.field public static final LOAD_UNSELECTED_APP:I = 0x2

.field private static final MARKET_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.market"

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final NOTE_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.note"

.field public static final OP_GAME_MODE_APP:I = 0x44

.field public static final OP_READ_MODE_APP:I = 0x43

.field public static final PACKAGENAME_CALENDAR:Ljava/lang/String; = "com.google.android.calendar"

.field public static final PACKAGENAME_OP_CALENDAR:Ljava/lang/String; = "com.oneplus.calendar"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.dialer"

.field private static PROGRESS_MIN_SHOW_TIME:J = 0x0L

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SOUNDRECORDER_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.soundrecorder"

.field private static final TAG:Ljava/lang/String; = "AppLockerDataController"

.field private static final WEATHER_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.weather"

.field private static final WEATHER_PACKAGE_NAME_NET:Ljava/lang/String; = "net.oneplus.weather"

.field private static WILL_SHOW_PROGRESS_TIME:J

.field public static mGameAppArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mGameAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAllAppSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAllAppSortBySelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAllAppUnSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppType:I

.field private mContext:Landroid/content/Context;

.field private mHandler1:Landroid/os/Handler;

.field private mHasShowProgress:Z

.field private mIsGameUnSelectedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mLoading:Z

.field private mLoadingContainer:Landroid/view/View;

.field private mNeedLoadWorkProfileApps:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowPromptRunnable:Ljava/lang/Runnable;

.field private mShowPromptTime:J

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mUnSelectedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSelectedAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/apploader/OPApplicationLoader;)I
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .prologue
    iget v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/apploader/OPApplicationLoader;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/apploader/OPApplicationLoader;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHasShowProgress:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/settings/apploader/OPApplicationLoader;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/settings/apploader/OPApplicationLoader;J)J
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadGameApp()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->WILL_SHOW_PROGRESS_TIME:J

    .line 85
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->PROGRESS_MIN_SHOW_TIME:J

    .line 89
    const-string/jumbo v0, "content://net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider/app_category"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->APP_CATEGORY_URI:Landroid/net/Uri;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppArrayList:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppList:Ljava/util/ArrayList;

    .line 555
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;

    invoke-direct {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppMap:Ljava/util/Map;

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    .line 153
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 155
    iput-object p3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 156
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppMap:Ljava/util/Map;

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 147
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    .line 149
    return-void
.end method

.method private getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 302
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 303
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1, v0, v0}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 304
    new-instance v2, Landroid/os/UserHandle;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 303
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private isThisUserAProfileOfCurrentUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 229
    iget-object v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 230
    .local v1, "profilesMax":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 231
    iget-object v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 232
    const/4 v2, 0x1

    return v2

    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private loadGameApp()V
    .locals 9

    .prologue
    .line 528
    const/4 v6, 0x0

    .line 529
    .local v6, "cursor":Landroid/database/Cursor;
    const-string/jumbo v3, "category_id = 7"

    .line 531
    .local v3, "selection":Ljava/lang/String;
    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/apploader/OPApplicationLoader;->APP_CATEGORY_URI:Landroid/net/Uri;

    .line 534
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 533
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 535
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    const-string/jumbo v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 538
    .local v8, "pkg":Ljava/lang/String;
    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 544
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 548
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    sget-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppArrayList:Ljava/util/ArrayList;

    sput-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppList:Ljava/util/ArrayList;

    .line 550
    :cond_3
    return-void

    .line 541
    :catch_0
    move-exception v7

    .line 542
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "AppLockerDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    if-eqz v6, :cond_2

    .line 545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 543
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 544
    if-eqz v6, :cond_4

    .line 545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_4
    throw v0
.end method

.method private multiAppPackageExcludeFilter(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-static {}, Lcom/oneplus/settings/OPOnlineConfigManager;->getMultiAppWhiteList()Ljava/util/List;

    move-result-object v0

    .line 624
    .local v0, "whiteAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private packageExcludeFilter(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "filter":Z
    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_5

    .line 589
    const-string/jumbo v1, "com.oneplus.deskclock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 590
    const-string/jumbo v1, "com.oneplus.market"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 591
    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 592
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 593
    const-string/jumbo v1, "com.android.dialer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 594
    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 595
    const-string/jumbo v1, "com.oneplus.weather"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 596
    const-string/jumbo v1, "net.oneplus.weather"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 597
    const-string/jumbo v1, "com.google.android.calendar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 598
    const-string/jumbo v1, "com.oneplus.calendar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 599
    const-string/jumbo v1, "com.oneplus.gallery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 600
    const-string/jumbo v1, "com.oneplus.filemanager"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 601
    const-string/jumbo v1, "com.oneplus.calculator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    if-nez v1, :cond_2

    .line 602
    const-string/jumbo v1, "com.oneplus.card"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 604
    .end local v0    # "filter":Z
    :goto_0
    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    .line 605
    if-nez v0, :cond_3

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 606
    const-string/jumbo v1, "com.oneplus.note"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 608
    :cond_0
    :goto_1
    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_1

    .line 609
    if-nez v0, :cond_4

    .line 610
    const-string/jumbo v1, "com.oneplus.soundrecorder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 609
    if-nez v1, :cond_4

    .line 610
    const-string/jumbo v1, "com.oneplus.camera"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 619
    :cond_1
    :goto_2
    return v0

    .line 589
    .restart local v0    # "filter":Z
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 605
    .end local v0    # "filter":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "filter":Z
    goto :goto_1

    .line 609
    .end local v0    # "filter":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "filter":Z
    goto :goto_2

    .line 613
    :cond_5
    if-nez v0, :cond_6

    .line 614
    const-string/jumbo v1, "com.oneplus.deskclock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 613
    if-nez v1, :cond_6

    .line 615
    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 613
    if-nez v1, :cond_6

    .line 616
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "filter":Z
    goto :goto_2

    .line 613
    .local v0, "filter":Z
    :cond_6
    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getAllAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    return-object v0
.end method

.method public getAllAppSortBySelectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    return-object v0
.end method

.method public getAppListByType(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    return-object v0

    .line 260
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    return-object v0

    .line 262
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    return-object v0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    return-object v0
.end method

.method public getUnSelectedAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    return-object v0
.end method

.method public initData(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 176
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;ILandroid/os/Handler;)V

    .line 190
    .local v0, "initRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    return v0
.end method

.method public isNeedLoadWorkProfileApps()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    return v0
.end method

.method public loadAllAppList()V
    .locals 17

    .prologue
    .line 359
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 360
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v9, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 361
    .local v9, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const/4 v13, 0x0

    .line 363
    .local v13, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    if-eqz v4, :cond_0

    .line 364
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v13, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    .line 366
    .local v14, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 367
    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    const/16 v16, 0x0

    .line 366
    move/from16 v0, v16

    invoke-virtual {v4, v9, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 368
    .local v12, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local v9    # "mainIntent":Landroid/content/Intent;
    .end local v12    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "user":Landroid/content/pm/UserInfo;
    .end local v15    # "user$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    .line 399
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AppLockerDataController"

    const-string/jumbo v6, "some unknown error happened."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 371
    .restart local v9    # "mainIntent":Landroid/content/Intent;
    .local v13, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 374
    const/4 v6, 0x0

    .line 371
    invoke-virtual {v4, v9, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 376
    .local v13, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    return-void

    .line 379
    :cond_2
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "reInfo$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 380
    .local v10, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 381
    .local v7, "activityName":Ljava/lang/String;
    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 383
    .local v2, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 382
    invoke-virtual {v10, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 384
    .local v3, "appLabel":Ljava/lang/String;
    const-string/jumbo v4, "com.oneplus.camera"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 389
    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 390
    .local v5, "uid":I
    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 391
    const-string/jumbo v4, ""

    const/4 v6, 0x0

    .line 390
    invoke-direct/range {v1 .. v6}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 393
    .local v1, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 396
    .end local v1    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "appLabel":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v7    # "activityName":Ljava/lang/String;
    .end local v10    # "reInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    sget-object v6, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public loadAllAppListSortBySelected(Z)V
    .locals 13
    .param p1, "noSystemApp"    # Z

    .prologue
    .line 309
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 310
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 311
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 312
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v8, v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 313
    .local v8, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 318
    const/4 v12, 0x0

    .line 314
    invoke-virtual {v3, v8, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 319
    .local v11, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "reInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 323
    .local v9, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 324
    .local v6, "activityName":Ljava/lang/String;
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 326
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 325
    invoke-virtual {v9, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    .local v2, "appLabel":Ljava/lang/String;
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/oneplus/settings/highpowerapp/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->multiAppPackageExcludeFilter(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 333
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 334
    .local v4, "uid":I
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    .line 335
    :goto_1
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 336
    const-string/jumbo v3, ""

    .line 335
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 337
    .local v0, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v3, v9}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 338
    if-eqz v5, :cond_4

    .line 339
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    .end local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appLabel":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v8    # "mainIntent":Landroid/content/Intent;
    .end local v9    # "reInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "reInfo$iterator":Ljava/util/Iterator;
    .end local v11    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v7

    .line 352
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AppLockerDataController"

    const-string/jumbo v12, "some unknown error happened."

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 355
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 334
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "appLabel":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v6    # "activityName":Ljava/lang/String;
    .restart local v8    # "mainIntent":Landroid/content/Intent;
    .restart local v9    # "reInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "reInfo$iterator":Ljava/util/Iterator;
    .restart local v11    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/4 v5, 0x0

    .local v5, "isSelected":Z
    goto :goto_1

    .line 341
    .end local v5    # "isSelected":Z
    .restart local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    .end local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appLabel":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v9    # "reInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    sget-object v12, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 347
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    sget-object v12, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 348
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    iget-object v12, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSelectedList:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    iget-object v12, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppUnSelectedList:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public loadAppListByType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadAllAppList()V

    goto :goto_0

    .line 244
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedAppList()V

    goto :goto_0

    .line 247
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadUnSelectedAppList()V

    goto :goto_0

    .line 250
    :pswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadAllAppListSortBySelected(Z)V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public loadSelectedAppList()V
    .locals 19

    .prologue
    .line 406
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 407
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v10, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 408
    .local v10, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const/4 v14, 0x0

    .line 410
    .local v14, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    if-eqz v5, :cond_0

    .line 411
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v14, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 413
    .local v15, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 414
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    move/from16 v17, v0

    const/16 v18, 0x0

    .line 413
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v10, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v13

    .line 415
    .local v13, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    .end local v10    # "mainIntent":Landroid/content/Intent;
    .end local v13    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    .end local v16    # "user$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v9

    .line 451
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AppLockerDataController"

    const-string/jumbo v17, "some unknown error happened."

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 418
    .restart local v10    # "mainIntent":Landroid/content/Intent;
    .local v14, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 421
    const/16 v17, 0x0

    .line 418
    move/from16 v0, v17

    invoke-virtual {v5, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 423
    .local v14, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 424
    return-void

    .line 426
    :cond_2
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "reInfo$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 427
    .local v11, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 428
    .local v8, "activityName":Ljava/lang/String;
    iget-object v5, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 430
    .local v3, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 429
    invoke-virtual {v11, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 431
    .local v4, "appLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->packageExcludeFilter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 436
    iget-object v5, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 437
    .local v6, "uid":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    .line 438
    :goto_3
    if-eqz v7, :cond_3

    .line 439
    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    .line 440
    const-string/jumbo v5, ""

    .line 439
    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 442
    .local v2, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 437
    .end local v2    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    :cond_4
    const/4 v7, 0x0

    .local v7, "isSelected":Z
    goto :goto_3

    .line 448
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "appLabel":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v7    # "isSelected":Z
    .end local v8    # "activityName":Ljava/lang/String;
    .end local v11    # "reInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    sget-object v17, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public loadSelectedGameOrReadAppMap(I)Ljava/util/Map;
    .locals 10
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 201
    iget-object v7, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 202
    const/4 v8, 0x1

    new-array v8, v8, [I

    aput p1, v8, v9

    .line 201
    invoke-virtual {v7, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v5

    .line 205
    .local v5, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    iget-object v7, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    if-eqz v7, :cond_0

    .line 206
    iget-object v7, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 208
    :cond_0
    if-eqz v5, :cond_3

    .line 209
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    .line 210
    .local v3, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 211
    .local v6, "userId":I
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v0

    .line 212
    .local v0, "appUid":I
    invoke-direct {p0, v6}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isThisUserAProfileOfCurrentUser(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 216
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "op$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 217
    .local v1, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 218
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-nez v7, :cond_2

    .line 219
    iget-object v7, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 220
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 219
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    .end local v0    # "appUid":I
    .end local v1    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v2    # "op$iterator":Ljava/util/Iterator;
    .end local v3    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v4    # "packageOp$iterator":Ljava/util/Iterator;
    .end local v6    # "userId":I
    :cond_3
    iget-object v7, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    return-object v7
.end method

.method public loadUnSelectedAppList()V
    .locals 19

    .prologue
    .line 458
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 459
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v10, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 460
    .local v10, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const/4 v14, 0x0

    .line 462
    .local v14, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    if-eqz v5, :cond_0

    .line 463
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v14, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 465
    .local v15, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 466
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    move/from16 v17, v0

    const/16 v18, 0x0

    .line 465
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v10, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v13

    .line 467
    .local v13, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    .end local v10    # "mainIntent":Landroid/content/Intent;
    .end local v13    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    .end local v16    # "user$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v9

    .line 522
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AppLockerDataController"

    const-string/jumbo v17, "some unknown error happened."

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 525
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 470
    .restart local v10    # "mainIntent":Landroid/content/Intent;
    .local v14, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 473
    const/16 v17, 0x0

    .line 470
    move/from16 v0, v17

    invoke-virtual {v5, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 475
    .local v14, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 476
    return-void

    .line 478
    :cond_2
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "reInfo$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 479
    .local v11, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 480
    .local v8, "activityName":Ljava/lang/String;
    iget-object v5, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 482
    .local v3, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 481
    invoke-virtual {v11, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 483
    .local v4, "appLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->packageExcludeFilter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 488
    iget-object v5, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 489
    .local v6, "uid":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    .line 490
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 489
    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 490
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    .line 491
    :goto_3
    if-nez v7, :cond_3

    .line 492
    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    .line 493
    const-string/jumbo v5, ""

    .line 492
    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 495
    .local v2, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 496
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v17, 0x44

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    .line 497
    sget-object v5, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mGameAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 498
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/better/OPAppModel;->setGameAPP(Z)V

    .line 499
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 489
    .end local v2    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    :cond_4
    const/4 v7, 0x0

    .local v7, "isUnSelected":Z
    goto :goto_3

    .line 501
    .end local v7    # "isUnSelected":Z
    .restart local v2    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/better/OPAppModel;->setGameAPP(Z)V

    .line 502
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 505
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/better/OPAppModel;->setGameAPP(Z)V

    .line 506
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 512
    .end local v2    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "appLabel":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v8    # "activityName":Ljava/lang/String;
    .end local v11    # "reInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v17, 0x44

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    sget-object v17, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    sget-object v17, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mIsGameUnSelectedAppList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    goto/16 :goto_1

    .line 518
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    sget-object v17, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected final onPostExecute()V
    .locals 8

    .prologue
    .line 115
    iget-boolean v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHasShowProgress:Z

    if-eqz v4, :cond_1

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptTime:J

    sub-long v0, v4, v6

    .line 117
    .local v0, "promptShownTime":J
    sget-wide v4, Lcom/oneplus/settings/apploader/OPApplicationLoader;->PROGRESS_MIN_SHOW_TIME:J

    sub-long v2, v4, v0

    .line 118
    .local v2, "remainShowTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    .end local v0    # "promptShownTime":J
    .end local v2    # "remainShowTime":J
    :goto_0
    return-void

    .line 129
    .restart local v0    # "promptShownTime":J
    .restart local v2    # "remainShowTime":J
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 141
    .end local v0    # "promptShownTime":J
    .end local v2    # "remainShowTime":J
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHasShowProgress:Z

    .line 100
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/oneplus/settings/apploader/OPApplicationLoader;->WILL_SHOW_PROGRESS_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    return-void
.end method

.method public setAppType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    .line 173
    return-void
.end method

.method public setNeedLoadWorkProfileApps(Z)V
    .locals 0
    .param p1, "needLoadWorkProfileApps"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    .line 166
    return-void
.end method

.method public setmLoadingContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "mView"    # Landroid/view/View;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoadingContainer:Landroid/view/View;

    .line 170
    return-void
.end method
