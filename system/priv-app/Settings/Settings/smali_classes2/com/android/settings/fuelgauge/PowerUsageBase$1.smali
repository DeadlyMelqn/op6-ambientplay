.class Lcom/android/settings/fuelgauge/PowerUsageBase$1;
.super Landroid/os/Handler;
.source "PowerUsageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/PowerUsageBase;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    .line 176
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    iget-object v1, v0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 187
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->refreshStats()V

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 179
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
