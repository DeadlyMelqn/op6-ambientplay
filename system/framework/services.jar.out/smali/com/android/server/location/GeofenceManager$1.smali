.class Lcom/android/server/location/GeofenceManager$1;
.super Landroid/database/ContentObserver;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GeofenceManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    .line 133
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->-get0(Lcom/android/server/location/GeofenceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->-wrap1(Lcom/android/server/location/GeofenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 139
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
