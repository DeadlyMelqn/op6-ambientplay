.class final Lcom/android/settingslib/applications/ApplicationsState$17;
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
    .line 1571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1580
    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    monitor-enter v2

    .line 1581
    :try_start_0
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    .line 1582
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .local v0, "isGame":Z
    :goto_0
    monitor-exit v2

    .line 1584
    return v0

    .line 1581
    .end local v0    # "isGame":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isGame":Z
    goto :goto_0

    .line 1582
    .end local v0    # "isGame":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isGame":Z
    goto :goto_0

    .line 1580
    .end local v0    # "isGame":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1574
    return-void
.end method
