.class Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;
.super Ljava/lang/Object;
.source "BgOptimizeApps.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;I)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->updateSummary(I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 42
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "-this2"    # Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f0f10ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f130021

    .line 67
    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider$1;

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider$1;-><init>(Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    :cond_0
    return-void
.end method
