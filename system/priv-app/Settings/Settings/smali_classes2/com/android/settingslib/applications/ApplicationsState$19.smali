.class final Lcom/android/settingslib/applications/ApplicationsState$19;
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
    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 1655
    monitor-enter p1

    .line 1656
    :try_start_0
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, "isMovieApp":Z
    :goto_0
    monitor-exit p1

    .line 1658
    return v0

    .line 1656
    .end local v0    # "isMovieApp":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isMovieApp":Z
    goto :goto_0

    .line 1655
    .end local v0    # "isMovieApp":Z
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1650
    return-void
.end method
