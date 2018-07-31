.class Lcom/android/server/am/BatteryStatsService$1;
.super Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryStatsService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;

.field private umi:Landroid/os/UserManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 166
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getUserIds()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->umi:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_0

    .line 171
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->umi:Landroid/os/UserManagerInternal;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->umi:Landroid/os/UserManagerInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->umi:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
