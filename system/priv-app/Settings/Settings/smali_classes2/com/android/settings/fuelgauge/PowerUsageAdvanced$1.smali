.class Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;
.super Landroid/os/Handler;
.source "PowerUsageAdvanced.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    return-void

    .line 87
    :pswitch_0
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    iget-object v8, v8, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v8

    .line 88
    const/4 v9, 0x0

    .line 87
    invoke-virtual {v8, v9}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v1

    .line 89
    .local v1, "dischargeAmount":I
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    iget-object v8, v8, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    .line 90
    .local v4, "totalPower":D
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 91
    .local v2, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    iget-object v9, v2, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->extractUsageType(Lcom/android/internal/os/BatterySipper;)I

    move-result v7

    .line 93
    .local v7, "usageType":I
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-static {v8}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->-get0(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    .line 94
    .local v6, "usageData":Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 95
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    .line 96
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-virtual {v8, v6, v4, v5, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updateUsageDataSummary(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;DI)V

    .line 97
    iget-object v8, v6, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    .end local v1    # "dischargeAmount":I
    .end local v2    # "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    .end local v4    # "totalPower":D
    .end local v6    # "usageData":Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    .end local v7    # "usageType":I
    :pswitch_1
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
