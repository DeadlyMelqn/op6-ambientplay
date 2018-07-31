.class public final Lcom/android/settingslib/TronUtils;
.super Ljava/lang/Object;
.source "TronUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TronUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logNetworkBadgeMetric(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "histogram"    # Ljava/lang/String;
    .param p2, "badgeEnum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 50
    sparse-switch p2, :sswitch_data_0

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported badge enum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :sswitch_0
    const/4 v0, 0x0

    .line 67
    .local v0, "bucket":I
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 68
    return-void

    .line 55
    .end local v0    # "bucket":I
    :sswitch_1
    const/4 v0, 0x1

    .line 56
    .restart local v0    # "bucket":I
    goto :goto_0

    .line 58
    .end local v0    # "bucket":I
    :sswitch_2
    const/4 v0, 0x2

    .line 59
    .restart local v0    # "bucket":I
    goto :goto_0

    .line 61
    .end local v0    # "bucket":I
    :sswitch_3
    const/4 v0, 0x3

    .line 62
    .restart local v0    # "bucket":I
    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method public static logWifiSettingsBadge(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeEnum"    # I

    .prologue
    .line 35
    const-string/jumbo v0, "settings_wifibadging"

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/TronUtils;->logNetworkBadgeMetric(Landroid/content/Context;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public static logWifiSettingsSpeed(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "speedEnum"    # I

    .prologue
    .line 32
    const-string/jumbo v0, "settings_wifi_speed_labels"

    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 33
    return-void
.end method
