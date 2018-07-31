.class public Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "BluetoothFilesPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final ACTION_OPEN_FILES:Ljava/lang/String; = "com.android.bluetooth.action.TransferHistory"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_DIRECTION:Ljava/lang/String; = "direction"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_SHOW_ALL_FILES:Ljava/lang/String; = "android.btopp.intent.extra.SHOW_ALL"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_RECEIVED_FILES:Ljava/lang/String; = "bt_received_files"

.field private static final TAG:Ljava/lang/String; = "BluetoothFilesPrefCtrl"


# instance fields
.field private mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 53
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "bt_received_files"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 67
    const-string/jumbo v1, "bt_received_files"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v3, [Landroid/util/Pair;

    .line 69
    const/16 v4, 0xa2

    .line 68
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.bluetooth.action.TransferHistory"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "direction"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "android.btopp.intent.extra.SHOW_ALL"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    return v5

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v3
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
