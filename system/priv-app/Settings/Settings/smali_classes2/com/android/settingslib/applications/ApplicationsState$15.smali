.class final Lcom/android/settingslib/applications/ApplicationsState$15;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    const/4 v0, 0x0

    .line 1538
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1539
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1538
    :cond_0
    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1534
    return-void
.end method
