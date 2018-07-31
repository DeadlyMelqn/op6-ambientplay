.class public Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothSettings$1;,
        Lcom/android/settings/bluetooth/BluetoothSettings$2;,
        Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;
    }
.end annotation


# static fields
.field static final DATA_KEY_REFERENCE:Ljava/lang/String; = "main_toggle_bluetooth"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_PAIRED_DEVICES:Ljava/lang/String; = "paired_devices"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final PAIRED_DEVICE_ORDER:I = 0x1

.field private static final PAIRING_PREF_ORDER:I = 0x2

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "BluetoothSettings"


# instance fields
.field private mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mDeviceNamePrefController:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

.field private final mDeviceProfilesListener:Lcom/android/settings/OPGearPreference$OnGearClickListener;

.field mFooterPreference:Lcom/android/settings/widget/FooterPreference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

.field mOPEarphoneModePreferenceController:Lcom/android/settings/bluetooth/OPEarphoneModePreferenceController;

.field mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mPairingPrefController:Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPairingPreference:Landroid/support/v7/preference/Preference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 605
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>()V

    .line 604
    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 615
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>()V

    .line 614
    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 483
    new-instance v0, Lcom/android/settings/bluetooth/-$Lambda$dhyJC6STQI5pq18yJnNoEYt7WPg;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$Lambda$dhyJC6STQI5pq18yJnNoEYt7WPg;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Lcom/android/settings/OPGearPreference$OnGearClickListener;

    .line 114
    return-void
.end method

.method private resetBarSize(FII)V
    .locals 12
    .param p1, "titleTextSize"    # F
    .param p2, "actionBarHeight"    # I
    .param p3, "switchBarHeight"    # I

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 167
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 168
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "action_bar"

    const-string/jumbo v10, "id"

    const-string/jumbo v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 169
    .local v6, "titleId":I
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 170
    .local v7, "toolbar":Landroid/widget/Toolbar;
    const/4 v5, 0x0

    .line 171
    .local v5, "title":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 172
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 174
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, p2

    .line 173
    const/4 v9, 0x1

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    const/4 v3, 0x0

    .end local v5    # "title":Landroid/widget/TextView;
    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 176
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 177
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 179
    :cond_0
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 181
    .local v1, "childLayoutParams":Landroid/widget/Toolbar$LayoutParams;
    const/16 v8, 0x10

    iput v8, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "childLayoutParams":Landroid/widget/Toolbar$LayoutParams;
    .end local v3    # "i":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    if-eqz v5, :cond_2

    .line 185
    const/4 v8, 0x1

    invoke-virtual {v5, v8, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    :cond_2
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v8, :cond_3

    .line 187
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/settings/widget/SwitchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 189
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, p3

    .line 188
    const/4 v9, 0x1

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method private setBluetoothDiscoverableState()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/16 v3, 0x17

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 335
    const-string/jumbo v2, "bluetooth_default_scan_mode"

    .line 333
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 337
    .local v0, "mBluetoothScanMode":I
    if-ne v0, v3, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    if-ne v0, v4, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0
.end method

.method private setOffMessage()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 410
    .local v3, "emptyView":Landroid/widget/TextView;
    const-string/jumbo v5, "BluetoothSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "emptyView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-nez v3, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    const v5, 0x7f0f07da

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 416
    .local v1, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 418
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "ble_scan_always_enabled"

    const/4 v6, 0x0

    .line 417
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_1

    const/4 v0, 0x1

    .line 420
    .local v0, "bleScanningMode":Z
    :goto_0
    if-nez v0, :cond_2

    .line 422
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 440
    :goto_1
    const-string/jumbo v5, "BluetoothSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "emptyView.getText() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "   briefText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setTextSpan(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/BluetoothSettings;->displayEmptyMessage(Z)V

    .line 445
    return-void

    .line 417
    .end local v0    # "bleScanningMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bleScanningMode":Z
    goto :goto_0

    .line 424
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v2, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 426
    const-string/jumbo v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const v5, 0x7f0f07db

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 428
    const-string/jumbo v5, "BluetoothSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "contentBuilder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v5, Lcom/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    invoke-static {v3, v2, v5}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    goto :goto_1
.end method

.method private updateContent(I)V
    .locals 6
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 402
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->displayEmptyMessage(Z)V

    .line 403
    if-eqz v1, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 406
    :cond_1
    return-void

    .line 352
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v2, :cond_2

    .line 353
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setBluetoothDiscoverableState()V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_oneplus_devicename"

    .line 354
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "mOPDeviceName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->resetDeviceNameIfInvalid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 362
    .end local v0    # "mOPDeviceName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->displayEmptyMessage(Z)V

    .line 363
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    const v1, 0x7f0f063a

    .line 367
    goto :goto_0

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 372
    sget-object v3, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 371
    const v4, 0x7f0f07cf

    .line 370
    invoke-virtual {p0, v2, v4, v3, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 373
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairingPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 383
    return-void

    .line 386
    :pswitch_1
    const v1, 0x7f0f0653

    .line 387
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0

    .line 391
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setOffMessage()V

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const v1, 0x7f0f063a

    goto :goto_0

    .line 398
    :pswitch_3
    const v1, 0x7f0f0652

    .line 399
    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method displayEmptyMessage(Z)V
    .locals 4
    .param p1, "display"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 450
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x102003f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 451
    if-eqz p1, :cond_0

    const/4 v1, 0x4

    .line 450
    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 453
    if-eqz p1, :cond_1

    .line 452
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 454
    const-string/jumbo v1, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void

    :cond_0
    move v1, v2

    .line 451
    goto :goto_0

    .line 453
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public getDeviceListKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    const-string/jumbo v0, "paired_devices"

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 539
    const v0, 0x7f0f0eb5

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string/jumbo v0, "BluetoothSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x18

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/PreferenceController;>;"
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 556
    .local v1, "lifecycle":Lcom/android/settings/core/lifecycle/Lifecycle;
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    invoke-direct {v2, p1, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceNamePrefController:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    .line 557
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 557
    invoke-direct {v3, p1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settings/SettingsActivity;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairingPrefController:Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;

    .line 560
    new-instance v2, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    invoke-direct {v2, p1, v1}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    .line 561
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v2, Lcom/android/settings/bluetooth/OPEarphoneModePreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/bluetooth/OPEarphoneModePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mOPEarphoneModePreferenceController:Lcom/android/settings/bluetooth/OPEarphoneModePreferenceController;

    .line 563
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mOPEarphoneModePreferenceController:Lcom/android/settings/bluetooth/OPEarphoneModePreferenceController;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairingPrefController:Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-direct {v2, p1, p0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .prologue
    .line 549
    const v0, 0x7f08001d

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 529
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOrder(I)V

    .line 530
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 531
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Lcom/android/settings/OPGearPreference$OnGearClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnGearClickListener(Lcom/android/settings/OPGearPreference$OnGearClickListener;)V

    .line 535
    :cond_0
    return-void
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairingPrefController:Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;

    .line 203
    const/4 v1, 0x2

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->createBluetoothPairingPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairingPreference:Landroid/support/v7/preference/Preference;

    .line 204
    const-string/jumbo v0, "footer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFooterPreference:Lcom/android/settings/widget/FooterPreference;

    .line 205
    const-string/jumbo v0, "paired_devices"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 206
    return-void
.end method

.method synthetic lambda$-com_android_settings_bluetooth_BluetoothSettings_19825(Lcom/android/settings/OPGearPreference;)V
    .locals 11
    .param p1, "pref"    # Lcom/android/settings/OPGearPreference;

    .prologue
    const/4 v4, 0x0

    .line 485
    instance-of v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v1, :cond_0

    .line 486
    const-string/jumbo v1, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick() called for other View: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void

    :cond_0
    move-object v1, p1

    .line 490
    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v8

    .line 491
    .local v8, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v8, :cond_1

    .line 492
    const-string/jumbo v1, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No BT device attached with this pref: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void

    .line 495
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 496
    .local v2, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 497
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/settings/overlay/FeatureFactory;->getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/bluetooth/BluetoothFeatureProvider;->isDeviceDetailPageEnabled()Z

    move-result v10

    .line 499
    .local v10, "useDetailPage":Z
    if-nez v10, :cond_2

    .line 501
    const-string/jumbo v1, "device_address"

    .line 502
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance v9, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {v9}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;-><init>()V

    .line 504
    .local v9, "profileSettings":Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    invoke-virtual {v9, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->setArguments(Landroid/os/Bundle;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 508
    const-class v3, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-virtual {v9, v1, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .end local v9    # "profileSettings":Lcom/android/settings/bluetooth/DeviceProfilesSettings;
    :goto_0
    return-void

    .line 512
    :cond_2
    const-string/jumbo v1, "device_address"

    .line 513
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 512
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 517
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 518
    const v3, 0x7f0f12c6

    const/4 v6, 0x0

    move-object v5, v4

    .line 516
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 129
    .local v1, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 131
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v2, v3}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    .line 132
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-static {v1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    .line 133
    const/16 v5, 0x9f

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;I)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setupSwitchController()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v0, v2, v3}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    .line 138
    :cond_0
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "bluetoothState"    # I

    .prologue
    .line 459
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 460
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 461
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0d0241

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 147
    .local v1, "activity":Landroid/app/Activity;
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 148
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 149
    const v5, 0x7f0d023c

    .line 148
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 150
    .local v3, "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 151
    const v5, 0x7f0d0240

    .line 150
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 152
    .local v2, "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 153
    const v5, 0x7f0d023e

    .line 152
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 162
    .local v0, "actionBarHeight":I
    :goto_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->resetBarSize(FII)V

    .line 163
    return-void

    .line 155
    .end local v0    # "actionBarHeight":I
    .end local v2    # "switchBarHeight":I
    .end local v3    # "titleTextSize":F
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 156
    const v5, 0x7f0d023d

    .line 155
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 157
    .restart local v3    # "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 159
    .restart local v2    # "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "actionBarHeight":I
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->teardownSwitchController()V

    .line 198
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 466
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 215
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mShowDevicesWithoutNames:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f063a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 223
    :cond_1
    return-void

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 229
    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    return-void

    .line 248
    :cond_1
    return-void
.end method

.method setLocalBluetoothAdapter(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V
    .locals 0
    .param p1, "localAdapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 481
    return-void
.end method

.method setTextSpan(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "briefText"    # Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 470
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 471
    check-cast v0, Landroid/text/Spannable;

    .line 473
    .local v0, "boldSpan":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1030044

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 474
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 473
    const/4 v3, 0x0

    .line 474
    const/16 v4, 0x21

    .line 472
    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 476
    .end local v0    # "boldSpan":Landroid/text/Spannable;
    :cond_0
    return-void
.end method
