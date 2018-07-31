.class final Lcom/android/settingslib/applications/ApplicationsState$20;
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
    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1670
    monitor-enter p1

    .line 1671
    :try_start_0
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, "isPhotosApp":Z
    :goto_0
    monitor-exit p1

    .line 1673
    return v0

    .line 1671
    .end local v0    # "isPhotosApp":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isPhotosApp":Z
    goto :goto_0

    .line 1670
    .end local v0    # "isPhotosApp":Z
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1665
    return-void
.end method
