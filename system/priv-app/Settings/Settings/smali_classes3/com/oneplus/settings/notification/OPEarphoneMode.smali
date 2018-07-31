.class public Lcom/oneplus/settings/notification/OPEarphoneMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPEarphoneMode$1;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_DISABLE_ABSOLUTE_VOLUME_PROPERTY:Ljava/lang/String; = "persist.bluetooth.disableabsvol"

.field private static final INTENT_TTS_CALL:Ljava/lang/String; = "oneplus.intent.action.TTS_CALL"

.field private static final KEY_AUTO_ANSWER_VIA_BLUETOOTH:Ljava/lang/String; = "auto_answer_via_bluetooth"

.field private static final KEY_AUTO_PLAY:Ljava/lang/String; = "auto_play"

.field private static final KEY_BLUETOOTH_VOLUME_SWITCH:Ljava/lang/String; = "bluetooth_volume_switch"

.field private static final KEY_CALL_INFORMATION_BROADCAST:Ljava/lang/String; = "call_information_broadcast"

.field private static final KEY_GOOGLE_TTS:Ljava/lang/String; = "google_tts"

.field private static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_ringtone"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAutoAnswerViaBluetooth:Landroid/support/v14/preference/SwitchPreference;

.field private mAutoPlay:Landroid/support/v14/preference/SwitchPreference;

.field private mBluetoothVolume:Landroid/support/v14/preference/SwitchPreference;

.field private mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mGoogleTTS:Landroid/support/v7/preference/Preference;

.field private mNotificationRingtone:Landroid/support/v7/preference/ListPreference;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPEarphoneMode;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPEarphoneMode;

    .prologue
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/notification/OPEarphoneMode;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPEarphoneMode;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->doClickLink()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/settings/notification/OPEarphoneMode;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPEarphoneMode;
    .param p1, "value"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->sendTTSCallIntent(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPEarphoneMode$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPEarphoneMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private confirmCallInformationBroadcast()V
    .locals 6

    .prologue
    .line 130
    new-instance v1, Lcom/oneplus/settings/notification/OPEarphoneMode$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPEarphoneMode$2;-><init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V

    .line 142
    .local v1, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/oneplus/settings/notification/OPEarphoneMode$3;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/notification/OPEarphoneMode$3;-><init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V

    .line 153
    .local v2, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    const v5, 0x7f0f05b5

    .line 153
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 155
    const v5, 0x7f0f05b6

    .line 153
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 156
    const v5, 0x104000a

    .line 153
    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 157
    const/high16 v5, 0x1040000

    .line 153
    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 160
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 161
    const v4, 0x102000b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 162
    .local v3, "textview":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 163
    new-instance v4, Lcom/oneplus/settings/notification/OPEarphoneMode$4;

    invoke-direct {v4, p0, v0}, Lcom/oneplus/settings/notification/OPEarphoneMode$4;-><init>(Lcom/oneplus/settings/notification/OPEarphoneMode;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    return-void
.end method

.method private doClickLink()V
    .locals 7

    .prologue
    .line 200
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getBrowserApp(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 201
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 202
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 203
    .local v0, "browserClassName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f05e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    .local v1, "content_url":Landroid/net/Uri;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method private getBrowserApp(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 213
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    .line 214
    .local v2, "default_browser":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    .line 215
    .local v1, "browsable":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.VIEW"

    .line 217
    .local v6, "view":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v7, "http://"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 221
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v5, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 224
    const/16 v8, 0x20

    .line 223
    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 225
    .local v4, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 226
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 227
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    return-object v0

    .line 229
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    return-object v10
.end method

.method private sendTTSCallIntent(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oneplus.intent.action.TTS_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "tts_call_value"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    return-void

    .line 246
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateNotificationRingtoneSummary(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 121
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "entries":[Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    .end local v0    # "entries":[Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 315
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v2, 0x7f080055

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->addPreferencesFromResource(I)V

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 72
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "earmode_from_notify"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 74
    .local v1, "flag":Z
    if-eqz v1, :cond_0

    .line 75
    const-string/jumbo v2, "ear.entrance"

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 78
    .end local v1    # "flag":Z
    :cond_0
    const-string/jumbo v2, "auto_play"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoPlay:Landroid/support/v14/preference/SwitchPreference;

    .line 79
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoPlay:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoPlay:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 81
    const-string/jumbo v6, "oem_auto_play"

    .line 80
    invoke-static {v2, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 82
    const-string/jumbo v2, "auto_answer_via_bluetooth"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoAnswerViaBluetooth:Landroid/support/v14/preference/SwitchPreference;

    .line 83
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoAnswerViaBluetooth:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoAnswerViaBluetooth:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 85
    const-string/jumbo v6, "auto_answer_via_bluetooth"

    .line 84
    invoke-static {v2, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 86
    const-string/jumbo v2, "call_information_broadcast"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

    .line 87
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 89
    const-string/jumbo v6, "oem_call_information_broadcast"

    .line 88
    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_7

    :goto_2
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 90
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const-string/jumbo v2, "call_information_broadcast"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->removePreference(Ljava/lang/String;)V

    .line 93
    :cond_1
    const-string/jumbo v2, "notification_ringtone"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    .line 94
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_2

    .line 96
    const-string/jumbo v2, "notification_ringtone"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->removePreference(Ljava/lang/String;)V

    .line 98
    :cond_2
    const-string/jumbo v2, "bluetooth_volume_switch"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mBluetoothVolume:Landroid/support/v14/preference/SwitchPreference;

    .line 99
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mBluetoothVolume:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string/jumbo v2, "google_tts"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    .line 101
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 102
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    :cond_3
    const-string/jumbo v2, "google_tts"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->removePreference(Ljava/lang/String;)V

    .line 105
    :cond_4
    return-void

    :cond_5
    move v2, v4

    .line 81
    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 85
    goto/16 :goto_1

    :cond_7
    move v3, v4

    .line 89
    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 252
    const-string/jumbo v2, "auto_play"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 254
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_auto_play"

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 255
    const-string/jumbo v2, "ear.Autoplay"

    if-eqz v0, :cond_0

    move v4, v3

    :cond_0
    invoke-static {v2, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 287
    .end local v0    # "enable":Z
    :cond_1
    :goto_1
    return v3

    .restart local v0    # "enable":Z
    :cond_2
    move v2, v4

    .line 254
    goto :goto_0

    .line 256
    .end local v0    # "enable":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v2, "call_information_broadcast"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 257
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 258
    .restart local v0    # "enable":Z
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 259
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_call_information_broadcast"

    if-eqz v0, :cond_6

    move v2, v3

    :goto_2
    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 260
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_4

    .line 261
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 271
    :cond_4
    :goto_3
    const-string/jumbo v2, "ear.TTS"

    if-eqz v0, :cond_5

    move v4, v3

    :cond_5
    invoke-static {v2, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    move v2, v4

    .line 259
    goto :goto_2

    .line 264
    :cond_7
    if-eqz v0, :cond_8

    .line 265
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->confirmCallInformationBroadcast()V

    goto :goto_3

    .line 267
    :cond_8
    invoke-direct {p0, v4}, Lcom/oneplus/settings/notification/OPEarphoneMode;->sendTTSCallIntent(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "oem_call_information_broadcast"

    invoke-static {v2, v5, v4, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_3

    .line 272
    .end local v0    # "enable":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_9
    const-string/jumbo v2, "notification_ringtone"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 273
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 274
    .local v1, "value":I
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f04a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "oem_notification_ringtone"

    invoke-static {v2, v4, v1, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 276
    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->updateNotificationRingtoneSummary(I)V

    .line 277
    const-string/jumbo v2, "ear.remind"

    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 278
    .end local v1    # "value":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_a
    const-string/jumbo v2, "bluetooth_volume_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 279
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 280
    .restart local v0    # "enable":Z
    const-string/jumbo v5, "persist.bluetooth.disableabsvol"

    .line 281
    if-eqz v0, :cond_c

    const-string/jumbo v2, "false"

    .line 280
    :goto_4
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v2, "ear.vol"

    if-eqz v0, :cond_b

    move v4, v3

    :cond_b
    invoke-static {v2, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 281
    :cond_c
    const-string/jumbo v2, "true"

    goto :goto_4

    .line 283
    .end local v0    # "enable":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_d
    const-string/jumbo v2, "auto_answer_via_bluetooth"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 285
    .restart local v0    # "enable":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "auto_answer_via_bluetooth"

    if-eqz v0, :cond_e

    move v4, v3

    :cond_e
    invoke-static {v2, v5, v4, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 235
    const-string/jumbo v1, "google_tts"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string/jumbo v1, "com.google.android.tts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 109
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_notification_ringtone"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 111
    .local v1, "value":I
    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->updateNotificationRingtoneSummary(I)V

    .line 112
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mBluetoothVolume:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v3, "persist.bluetooth.disableabsvol"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 113
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 115
    const-string/jumbo v3, "oem_call_information_broadcast"

    .line 114
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 115
    const/4 v3, 0x1

    .line 114
    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 116
    .local v0, "enable":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 118
    .end local v0    # "enable":Z
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0
.end method
