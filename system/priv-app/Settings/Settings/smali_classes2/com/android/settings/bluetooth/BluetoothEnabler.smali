.class public final Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothEnabler$1;,
        Lcom/android/settings/bluetooth/BluetoothEnabler$2;
    }
.end annotation


# static fields
.field private static final EVENT_DATA_IS_BT_ON:Ljava/lang/String; = "is_bluetooth_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelayedHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mMetricsEvent:I

.field private final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private final mSwitch:Landroid/widget/Switch;

.field private mSwitchView:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

.field private mValidListener:Z

.field runnable:Ljava/lang/Runnable;

.field private switchChecked:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settings/widget/SwitchWidgetController;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchView:Lcom/android/settings/widget/SwitchWidgetController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settings/widget/SwitchWidgetController;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/bluetooth/BluetoothEnabler;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->switchChecked:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchWidget"    # Lcom/android/settings/widget/SwitchWidgetController;
    .param p3, "metricsFeatureProvider"    # Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
    .param p4, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .param p5, "metricsEvent"    # I

    .prologue
    .line 97
    new-instance v6, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {v6}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;ILcom/android/settings/bluetooth/RestrictionUtils;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;ILcom/android/settings/bluetooth/RestrictionUtils;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchWidget"    # Lcom/android/settings/widget/SwitchWidgetController;
    .param p3, "metricsFeatureProvider"    # Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
    .param p4, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .param p5, "metricsEvent"    # I
    .param p6, "restrictionUtils"    # Lcom/android/settings/bluetooth/RestrictionUtils;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mDelayedHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->runnable:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 104
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 105
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 107
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 108
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 109
    iput p5, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsEvent:I

    .line 111
    if-nez p4, :cond_0

    .line 113
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 118
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 119
    iput-object p6, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 120
    return-void

    .line 116
    :cond_0
    invoke-virtual {p4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method public static getEnforcedAdmin(Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2
    .param p0, "mRestrictionUtils"    # Lcom/android/settings/bluetooth/RestrictionUtils;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 262
    const-string/jumbo v1, "no_bluetooth"

    .line 261
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 263
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-nez v0, :cond_0

    .line 265
    const-string/jumbo v1, "no_config_bluetooth"

    .line 264
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 267
    :cond_0
    return-object v0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->getSwitch()Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->getSwitch()Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 188
    :goto_0
    if-eq p1, v0, :cond_1

    .line 191
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 195
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 199
    :cond_1
    return-void

    .line 187
    :cond_2
    const/4 v0, 0x0

    .local v0, "currentState":Z
    goto :goto_0
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    packed-switch p1, :pswitch_data_0

    .line 180
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 183
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 176
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method maybeEnforceRestrictions()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;->getEnforcedAdmin(Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 248
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 249
    if-eqz v0, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 251
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 253
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 256
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onSwitchToggled(Z)Z
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    return v4

    .line 208
    :cond_0
    if-eqz p1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 208
    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0f081c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 213
    return v2

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsEvent:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 232
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->switchChecked:Z

    .line 233
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchView:Lcom/android/settings/widget/SwitchWidgetController;

    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    return v4
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 161
    :cond_1
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v1, p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result v0

    .line 137
    .local v0, "restricted":Z
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 139
    return-void

    .line 143
    :cond_1
    if-nez v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 148
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 150
    return-void
.end method

.method public setupSwitchController()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    .line 124
    return-void
.end method

.method public teardownSwitchController()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    .line 128
    return-void
.end method
