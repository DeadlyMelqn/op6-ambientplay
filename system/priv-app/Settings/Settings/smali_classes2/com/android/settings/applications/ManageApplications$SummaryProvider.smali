.class Lcom/android/settings/applications/ManageApplications$SummaryProvider;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/ManageApplications$SummaryProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications$SummaryProvider;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageApplications$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications$SummaryProvider;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 1739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1740
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1741
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 1742
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/applications/ManageApplications$SummaryProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "-this2"    # Lcom/android/settings/applications/ManageApplications$SummaryProvider;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ManageApplications$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 1746
    if-eqz p1, :cond_0

    .line 1747
    new-instance v0, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;-><init>(Lcom/android/settings/applications/ManageApplications$SummaryProvider;Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1775
    :cond_0
    return-void
.end method
