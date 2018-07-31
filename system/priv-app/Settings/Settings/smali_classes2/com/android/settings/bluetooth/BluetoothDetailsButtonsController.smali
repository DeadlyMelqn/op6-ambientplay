.class public Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsButtonsController.java"


# static fields
.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_buttons"


# instance fields
.field private mActionButtons:Lcom/android/settings/applications/LayoutPreference;

.field private mIsConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p3, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p4, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    .line 43
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    .line 44
    return-void
.end method

.method private onForgetButtonPressed()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    move-result-object v0

    .line 49
    .local v0, "fragment":Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/support/v14/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ForgetBluetoothDevice"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string/jumbo v0, "action_buttons"

    return-object v0
.end method

.method protected init(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    .line 55
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    .local v0, "rightButton":Landroid/widget/Button;
    const v1, 0x7f0f06c2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 57
    new-instance v1, Lcom/android/settings/bluetooth/-$Lambda$kvA_Iqc_TQs0kG-KleHNSMhLXJo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/settings/bluetooth/-$Lambda$kvA_Iqc_TQs0kG-KleHNSMhLXJo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method synthetic lambda$-com_android_settings_bluetooth_BluetoothDetailsButtonsController_2336(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->onForgetButtonPressed()V

    return-void
.end method

.method synthetic lambda$-com_android_settings_bluetooth_BluetoothDetailsButtonsController_2982(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    return-void
.end method

.method synthetic lambda$-com_android_settings_bluetooth_BluetoothDetailsButtonsController_3275(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    return-void
.end method

.method protected refresh()V
    .locals 5

    .prologue
    .line 64
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    const v4, 0x7f0a00ae

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .local v0, "leftButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 66
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 68
    .local v1, "notInitialized":Z
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    .line 69
    .local v2, "previouslyConnected":Z
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    .line 70
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    if-eqz v3, :cond_2

    .line 71
    if-nez v1, :cond_0

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    .line 72
    :cond_0
    const v3, 0x7f0f07d3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 73
    new-instance v3, Lcom/android/settings/bluetooth/-$Lambda$kvA_Iqc_TQs0kG-KleHNSMhLXJo;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/android/settings/bluetooth/-$Lambda$kvA_Iqc_TQs0kG-KleHNSMhLXJo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_1

    .line 79
    :cond_3
    const v3, 0x7f0f07d2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 80
    new-instance v3, Lcom/android/settings/bluetooth/-$Lambda$kvA_Iqc_TQs0kG-KleHNSMhLXJo;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, Lcom/android/settings/bluetooth/-$Lambda$kvA_Iqc_TQs0kG-KleHNSMhLXJo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
