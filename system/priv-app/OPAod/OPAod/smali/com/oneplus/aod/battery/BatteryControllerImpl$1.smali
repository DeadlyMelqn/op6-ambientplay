.class Lcom/oneplus/aod/battery/BatteryControllerImpl$1;
.super Lcom/oneplus/aod/AodUpdateMonitorCallback;
.source "BatteryControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/battery/BatteryControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 126
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onStartDozing()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 129
    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    .line 131
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get2(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Lcom/oneplus/aod/clock/ClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/clock/ClockViewCtrl;->getClockStyle()I

    move-result v0

    sget v1, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get0(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get3(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get3(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get0(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 143
    :goto_2
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-wrap0(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V

    .line 144
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get0(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get0(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    goto :goto_2
.end method

.method public onStopDozing()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStopDozing()V

    .line 149
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get3(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get1(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get3(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->-get5(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    return-void
.end method
