.class public Lcom/android/settings/notification/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SoundSettings$1;,
        Lcom/android/settings/notification/SoundSettings$2;,
        Lcom/android/settings/notification/SoundSettings$3;,
        Lcom/android/settings/notification/SoundSettings$4;,
        Lcom/android/settings/notification/SoundSettings$5;,
        Lcom/android/settings/notification/SoundSettings$6;,
        Lcom/android/settings/notification/SoundSettings$7;,
        Lcom/android/settings/notification/SoundSettings$8;,
        Lcom/android/settings/notification/SoundSettings$H;,
        Lcom/android/settings/notification/SoundSettings$Receiver;,
        Lcom/android/settings/notification/SoundSettings$SettingsObserver;,
        Lcom/android/settings/notification/SoundSettings$SummaryProvider;,
        Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_ON:I = 0x0

.field private static final KEY_ALARM_RINGTONE:Ljava/lang/String; = "alarm_ringtone"

.field private static final KEY_ALARM_VOLUME:Ljava/lang/String; = "alarm_volume"

.field private static final KEY_CELL_BROADCAST_SETTINGS:Ljava/lang/String; = "cell_broadcast_settings"

.field private static final KEY_CHARGING_SOUNDS:Ljava/lang/String; = "charging_sounds"

.field private static final KEY_DIAL_PAD_TONES:Ljava/lang/String; = "dial_pad_tones"

.field private static final KEY_DO_NOT_DISTURB:Ljava/lang/String; = "do_not_disturb"

.field private static final KEY_DO_NOT_DISTURB_SETTINGS:Ljava/lang/String; = "do_not_disturb_settings"

.field private static final KEY_EARPHONE:Ljava/lang/String; = "earphone"

.field private static final KEY_EARPHONE_MODE:Ljava/lang/String; = "earphone_mode"

.field private static final KEY_INCOMING_CALL_VIBRATE:Ljava/lang/String; = "incoming_call_vibrate_mode"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final KEY_MMS_RINGTONE:Ljava/lang/String; = "message_ringtone"

.field private static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_ringtone"

.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final KEY_OP_SOUND_DIRECT:Ljava/lang/String; = "op_sound_direct"

.field private static final KEY_PHONE_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SCREENSHOT_SOUNDS:Ljava/lang/String; = "screenshot_sounds"

.field private static final KEY_SCREEN_LOCKING_SOUNDS:Ljava/lang/String; = "screen_locking_sounds"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final KEY_SOUND_DIRECT:Ljava/lang/String; = "sound_direct"

.field private static final KEY_SYSTEM:Ljava/lang/String; = "system"

.field private static final KEY_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final KEY_VIBRATE_INTENSITY:Ljava/lang/String; = "vibrate_intensity"

.field private static final KEY_VIBRATE_ON_TOUCH:Ljava/lang/String; = "vibrate_on_touch"

.field private static final KEY_VIBRATE_ON_TOUCH_FOR_VIBRATE:Ljava/lang/String; = "vibrate_on_touch_for_vibrate"

.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final KEY_VIBRATE_WHEN_RINGING_FOR_VIBRATE:Ljava/lang/String; = "vibrate_when_ringing_for_vibrate"

.field private static final KEY_VOLUME_KEYS_ADJUST:Ljava/lang/String; = "volume_keys_adjust"

.field private static final KEY_VOLUME_KEYS_ADJUST_VALUE:Ljava/lang/String; = "volume_keys_adjust_value"

.field private static final KEY_WIFI_DISPLAY:Ljava/lang/String; = "wifi_display"

.field private static final KEY_ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREENSHOT_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH_FOR_VIBRATE:Lcom/android/settings/notification/SettingPref;

.field private static final REQUEST_CODE:I = 0xc8

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field private static final SAMPLE_CUTOFF:I = 0x7d0

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final SELECTED_PREFERENCE_KEY:Ljava/lang/String; = "selected_preference"

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "SoundSettings"

.field private static final THREE_KEY_SILENT_VALUE:I = 0x1

.field private static isSupportLinearMotor:Z


# instance fields
.field private mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mEarphoneModePreference:Landroid/support/v7/preference/Preference;

.field private final mHandler:Lcom/android/settings/notification/SoundSettings$H;

.field private mIncomingCallVibrateModePreference:Landroid/support/v7/preference/Preference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMediaVolumePreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

.field private mOPSoundDirectPreference:Landroid/support/v7/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field private mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mSoundDirectPreference:Landroid/support/v7/preference/Preference;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

.field private mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

.field private mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

.field private mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private sVibratePatternrhythm:[[J


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/notification/SoundSettings;->isSupportLinearMotor:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Lcom/android/settings/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSmsRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings/notification/SoundSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRingingForVibrate()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 133
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 134
    const-string/jumbo v2, "media_volume"

    aput-object v2, v0, v4

    .line 135
    const-string/jumbo v2, "alarm_volume"

    aput-object v2, v0, v1

    .line 136
    const-string/jumbo v2, "ring_volume"

    aput-object v2, v0, v6

    .line 137
    const-string/jumbo v2, "notification_volume"

    aput-object v2, v0, v11

    .line 138
    const-string/jumbo v2, "zen_mode"

    aput-object v2, v0, v12

    .line 133
    sput-object v0, Lcom/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 205
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    .line 206
    const-string/jumbo v2, "charging_sounds"

    const-string/jumbo v3, "charging_sounds_enabled"

    .line 205
    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 207
    new-instance v5, Lcom/android/settings/notification/SoundSettings$1;

    .line 208
    const-string/jumbo v7, "touch_sounds"

    const-string/jumbo v8, "sound_effects_enabled"

    .line 207
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/notification/SoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 221
    new-instance v5, Lcom/android/settings/notification/SoundSettings$2;

    .line 222
    const-string/jumbo v7, "dial_pad_tones"

    const-string/jumbo v8, "dtmf_tone"

    .line 221
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/notification/SoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    .line 229
    new-instance v5, Lcom/android/settings/notification/SettingPref;

    .line 230
    const-string/jumbo v7, "screen_locking_sounds"

    const-string/jumbo v8, "lockscreen_sounds_enabled"

    .line 229
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 232
    new-instance v5, Lcom/android/settings/notification/SettingPref;

    .line 233
    const-string/jumbo v7, "screenshot_sounds"

    const-string/jumbo v8, "oem_screenshot_sound_enable"

    .line 232
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings/notification/SoundSettings;->PREF_SCREENSHOT_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 235
    new-instance v5, Lcom/android/settings/notification/SoundSettings$3;

    .line 236
    const-string/jumbo v7, "vibrate_on_touch"

    const-string/jumbo v8, "haptic_feedback_enabled"

    .line 235
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/notification/SoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

    .line 244
    new-instance v5, Lcom/android/settings/notification/SoundSettings$4;

    .line 245
    const-string/jumbo v7, "vibrate_on_touch_for_vibrate"

    const-string/jumbo v8, "haptic_feedback_enabled"

    .line 244
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/notification/SoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH_FOR_VIBRATE:Lcom/android/settings/notification/SettingPref;

    .line 258
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    .line 259
    sget-object v2, Lcom/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    .line 260
    sget-object v2, Lcom/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    .line 261
    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_SCREENSHOT_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v6

    .line 262
    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v11

    .line 263
    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v12

    .line 264
    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 266
    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH_FOR_VIBRATE:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 258
    sput-object v0, Lcom/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 1133
    new-instance v0, Lcom/android/settings/notification/SoundSettings$6;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$6;-><init>()V

    .line 1132
    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1202
    new-instance v0, Lcom/android/settings/notification/SoundSettings$8;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$8;-><init>()V

    .line 1201
    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 121
    new-array v0, v1, [[J

    .line 122
    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 123
    const/16 v1, 0x9

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 124
    new-array v1, v4, [J

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 125
    const/16 v1, 0x11

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 127
    new-array v1, v4, [J

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 121
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    .line 143
    new-instance v0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    .line 144
    new-instance v0, Lcom/android/settings/notification/SoundSettings$H;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/notification/SoundSettings$H;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$H;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Lcom/android/settings/notification/SoundSettings$H;

    .line 145
    new-instance v0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    .line 146
    new-instance v0, Lcom/android/settings/notification/SoundSettings$Receiver;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/notification/SoundSettings$Receiver;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$Receiver;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    .line 823
    new-instance v0, Lcom/android/settings/notification/SoundSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$5;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 1188
    new-instance v0, Lcom/android/settings/notification/SoundSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$7;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    return-void

    .line 122
    :array_0
    .array-data 8
        -0x2
        0x0
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    .line 123
    :array_1
    .array-data 8
        -0x2
        0x0
        0x1f4
        0xfa
        0xa
        0x3e8
        0x1f4
        0xfa
        0xa
    .end array-data

    .line 124
    :array_2
    .array-data 8
        -0x2
        0x0
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
        0x12c
        0x190
        0x12c
        0x190
        0x12c
    .end array-data

    .line 125
    :array_3
    .array-data 8
        -0x2
        0x0
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
    .end array-data

    .line 127
    :array_4
    .array-data 8
        -0x2
        0x0
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
        0x50
        0xc8
        0x258
        0x96
        0xa
    .end array-data
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 757
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 759
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 760
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 761
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 762
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 763
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 764
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 765
    return-object v4

    .line 769
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "SoundSettings"

    const-string/jumbo v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 255
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initRingtones()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 807
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 809
    iput-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notification_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 811
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "alarm_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 815
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "message_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSmsRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 817
    return-void
.end method

.method private initVibrateWhenRinging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 916
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    .line 918
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 919
    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void

    .line 922
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 923
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 924
    iput-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    .line 925
    return-void

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setPersistent(Z)V

    .line 928
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRinging()V

    .line 929
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/SoundSettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/SoundSettings$12;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 938
    return-void
.end method

.method private initVibrateWhenRingingForVibrate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 949
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing_for_vibrate"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 948
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    .line 950
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 951
    return-void

    .line 953
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 954
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 955
    iput-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    .line 956
    return-void

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setPersistent(Z)V

    .line 959
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRingingForVibrate()V

    .line 960
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/SoundSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/SoundSettings$13;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 969
    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 665
    .local v0, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 666
    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 667
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-virtual {v0, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 669
    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 821
    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 6

    .prologue
    .line 744
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 745
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 746
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 747
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 748
    if-eqz v0, :cond_2

    .line 749
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 750
    invoke-direct {p0, v0}, Lcom/android/settings/notification/SoundSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 749
    const v4, 0x10403b0

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 751
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 753
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 754
    return-void

    .line 750
    :cond_2
    const/4 v1, 0x0

    .local v1, "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateRingOrNotificationPreference()V
    .locals 8

    .prologue
    const v2, 0x10802fd

    const v3, 0x10802fc

    const v4, 0x10802fb

    const/4 v7, 0x0

    .line 680
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v5

    if-nez v5, :cond_3

    .line 681
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 682
    const-string/jumbo v6, "oem_vibrate_under_silent"

    .line 681
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 683
    .local v1, "value":I
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 684
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->isZenMuted()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_1

    .line 683
    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 704
    .end local v1    # "value":I
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "value":I
    :cond_1
    move v2, v3

    .line 685
    goto :goto_0

    :cond_2
    move v2, v4

    .line 686
    goto :goto_0

    .line 689
    .end local v1    # "value":I
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "three_Key_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 690
    .restart local v1    # "value":I
    const-string/jumbo v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "three key mode change value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 692
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const v3, 0x10802fc

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 698
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 693
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1    # "value":I
    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 694
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const v3, 0x10802fd

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1

    .line 695
    :cond_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const v3, 0x10802fb

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 737
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 738
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    return-void

    .line 739
    :cond_0
    iput v0, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    .line 740
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 741
    return-void
.end method

.method private updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 860
    if-nez p1, :cond_0

    .line 861
    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-object v3

    .line 866
    :cond_0
    if-ne v0, p2, :cond_2

    .line 867
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->getDefaultPhoneRingUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 872
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_0
    const v0, 0x1040573

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 874
    .local v9, "summary":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 875
    const v0, 0x1040572

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 910
    :cond_1
    :goto_1
    return-object v9

    .line 869
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .end local v9    # "summary":Ljava/lang/String;
    :cond_2
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0

    .line 877
    .restart local v9    # "summary":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    .line 879
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 881
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "internal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 882
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 883
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 882
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 892
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 893
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 894
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 895
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 896
    const-string/jumbo v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 905
    :cond_5
    if-eqz v6, :cond_1

    .line 906
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 885
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 886
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "title"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 885
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    goto :goto_2

    .line 888
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_7
    const-string/jumbo v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 889
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 890
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "title"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 889
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    goto :goto_2

    .line 902
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 905
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    if-eqz v6, :cond_1

    .line 906
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 900
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 905
    .local v8, "sqle":Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_1

    .line 906
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 904
    .end local v8    # "sqle":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 905
    if-eqz v6, :cond_8

    .line 906
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 904
    :cond_8
    throw v0
.end method

.method private updateVibratePreferenceDescription(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 481
    .local v1, "incomingCallVibrateModePreference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 482
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "entries":[Ljava/lang/String;
    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 485
    .end local v0    # "entries":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 941
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v1, :cond_0

    return-void

    .line 942
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 943
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 942
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 944
    return-void
.end method

.method private updateVibrateWhenRingingForVibrate()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 972
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v1, :cond_0

    return-void

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 974
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 973
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 975
    return-void
.end method

.method private updateVolumeKeysAdjustSummary(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 564
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 567
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "entries":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 570
    .end local v0    # "entries":[Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private wasRingerModeVibrate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 732
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    if-nez v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 732
    :cond_0
    return v0
.end method


# virtual methods
.method public OnDialogListCancelClick()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 617
    :cond_0
    return-void
.end method

.method public OnDialogListConfirmClick(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "incoming_call_vibrate_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 607
    const-string/jumbo v0, "incoming_call_vibrate_mode"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/notification/SoundSettings;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 611
    :cond_0
    return-void
.end method

.method public OnDialogListItemClick(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 591
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "incoming_call_vibrate_intensity"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 593
    .local v0, "intensityvalue":I
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 594
    if-nez v0, :cond_2

    .line 595
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v1, v1, p1

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 601
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v2, v2, p1

    invoke-virtual {v1, v2, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 603
    .end local v0    # "intensityvalue":I
    :cond_1
    return-void

    .line 596
    .restart local v0    # "intensityvalue":I
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 597
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v1, v1, p1

    const-wide/16 v2, -0x2

    aput-wide v2, v1, v4

    goto :goto_0

    .line 598
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v1, v1, p1

    const-wide/16 v2, -0x3

    aput-wide v2, v1, v4

    goto :goto_0
.end method

.method public getDefaultPhoneRingUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1161
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v0

    .line 1163
    .local v0, "isRingSimSwitchOn":Z
    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getSim1Enable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getSim2Enable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1168
    invoke-static {p1, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1169
    .local v1, "ringtoneUri":Landroid/net/Uri;
    return-object v1

    .line 1172
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1173
    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    return-object v1
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x150

    return v0
.end method

.method public getSim1Enable()Z
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSim2Enable()Z
    .locals 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getThreeKeyStatus(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 712
    const/4 v2, 0x0

    .line 713
    .local v2, "threeKeyStatus":I
    if-nez p1, :cond_0

    .line 714
    const-string/jumbo v3, "SoundSettings"

    const-string/jumbo v4, "getThreeKeyStatus error, context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return v2

    .line 718
    :cond_0
    const-string/jumbo v3, "threekey"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oem/os/ThreeKeyManager;

    .line 719
    .local v1, "threeKeyManager":Lcom/oem/os/ThreeKeyManager;
    if-eqz v1, :cond_1

    .line 721
    :try_start_0
    invoke-virtual {v1}, Lcom/oem/os/ThreeKeyManager;->getThreeKeyStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 727
    :cond_1
    return v2

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SoundSettings"

    const-string/jumbo v4, "Exception occurs, Three Key Service may not ready"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    return v2
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isZenMuted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 708
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->getThreeKeyStatus(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 647
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 649
    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 651
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string/jumbo v14, "oem.linear.motor.support"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/settings/notification/SoundSettings;->isSupportLinearMotor:Z

    .line 292
    const-string/jumbo v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "audio"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "vibrator"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v13}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_0

    .line 298
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 301
    :cond_0
    const v13, 0x7f0800a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->addPreferencesFromResource(I)V

    .line 303
    const-string/jumbo v13, "media_volume"

    const/4 v14, 0x3

    .line 304
    const v15, 0x10802f6

    .line 303
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mMediaVolumePreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 305
    const-string/jumbo v13, "alarm_volume"

    const/4 v14, 0x4

    .line 306
    const v15, 0x10802f4

    .line 305
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 308
    const-string/jumbo v13, "sound"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceCategory;

    .line 310
    .local v10, "sound":Landroid/support/v7/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v13, :cond_6

    .line 312
    const-string/jumbo v13, "ring_volume"

    const/4 v14, 0x2

    .line 313
    const v15, 0x10802fc

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v13

    .line 311
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 316
    const-string/jumbo v13, "notification_volume"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 329
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 330
    const v14, 0x1120031

    .line 329
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 332
    .local v3, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v3, :cond_1

    .line 333
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v14, "com.android.cellbroadcastreceiver"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 334
    const/4 v14, 0x2

    .line 333
    if-ne v13, v14, :cond_1

    .line 335
    const/4 v3, 0x0

    .line 341
    .end local v3    # "isCellBroadcastAppLinkEnabled":Z
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v13}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v13

    if-eqz v13, :cond_2

    xor-int/lit8 v13, v3, 0x1

    if-nez v13, :cond_2

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 343
    const-string/jumbo v14, "no_config_cell_broadcasts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    .line 342
    invoke-static {v13, v14, v15}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v13

    .line 341
    if-eqz v13, :cond_3

    .line 344
    :cond_2
    const-string/jumbo v13, "cell_broadcast_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 346
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->initRingtones()V

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->initVibrateWhenRinging()V

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->initVibrateWhenRingingForVibrate()V

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->updateRingerMode()V

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    .line 354
    const-string/jumbo v13, "system"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/PreferenceCategory;

    .line 355
    .local v11, "system":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v13, "earphone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    .line 356
    .local v1, "earphoneCategory":Landroid/support/v7/preference/PreferenceCategory;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOpBluetoothHeadset()Z

    move-result v13

    if-nez v13, :cond_7

    .line 358
    const-string/jumbo v13, "preference_divider_line_2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 361
    const-string/jumbo v13, "sound_direct"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    new-instance v14, Lcom/android/settings/notification/SoundSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/notification/SoundSettings$9;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 410
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "com.oneplus.dirac.simplemanager"

    invoke-static {v13, v14}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    if-eqz v13, :cond_4

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 414
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mOPSoundDirectPreference:Landroid/support/v7/preference/Preference;

    if-eqz v13, :cond_5

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mOPSoundDirectPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 418
    :cond_5
    sget-object v14, Lcom/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    const/4 v13, 0x0

    array-length v15, v14

    :goto_3
    if-ge v13, v15, :cond_9

    aget-object v8, v14, v13

    .line 419
    .local v8, "pref":Lcom/android/settings/notification/SettingPref;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 418
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 320
    .end local v1    # "earphoneCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v8    # "pref":Lcom/android/settings/notification/SettingPref;
    .end local v11    # "system":Landroid/support/v7/preference/PreferenceCategory;
    :cond_6
    const-string/jumbo v13, "notification_volume"

    const/4 v14, 0x5

    .line 321
    const v15, 0x10802fc

    .line 320
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v13

    .line 319
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 324
    const-string/jumbo v13, "ring_volume"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 338
    .restart local v3    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v2

    .line 339
    .local v2, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    .local v3, "isCellBroadcastAppLinkEnabled":Z
    goto/16 :goto_1

    .line 376
    .end local v2    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v3    # "isCellBroadcastAppLinkEnabled":Z
    .restart local v1    # "earphoneCategory":Landroid/support/v7/preference/PreferenceCategory;
    .restart local v11    # "system":Landroid/support/v7/preference/PreferenceCategory;
    :cond_7
    const-string/jumbo v13, "sound_direct"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    if-eqz v13, :cond_8

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 380
    :cond_8
    const-string/jumbo v13, "op_sound_direct"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mOPSoundDirectPreference:Landroid/support/v7/preference/Preference;

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mOPSoundDirectPreference:Landroid/support/v7/preference/Preference;

    new-instance v14, Lcom/android/settings/notification/SoundSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/notification/SoundSettings$10;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 393
    const-string/jumbo v13, "earphone_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mEarphoneModePreference:Landroid/support/v7/preference/Preference;

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mEarphoneModePreference:Landroid/support/v7/preference/Preference;

    new-instance v14, Lcom/android/settings/notification/SoundSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/notification/SoundSettings$11;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_2

    .line 421
    :cond_9
    const-string/jumbo v13, "vibrate_when_ringing"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    .line 422
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 423
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    if-eqz v13, :cond_a

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 426
    :cond_a
    const-string/jumbo v13, "screen_locking_sounds"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 429
    :cond_b
    if-eqz p1, :cond_c

    .line 430
    const-string/jumbo v13, "selected_preference"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 431
    .local v9, "selectedPreference":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 432
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/RingtonePreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 436
    .end local v9    # "selectedPreference":Ljava/lang/String;
    :cond_c
    const-string/jumbo v13, "incoming_call_vibrate_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mIncomingCallVibrateModePreference:Landroid/support/v7/preference/Preference;

    .line 437
    const-string/jumbo v13, "preference_divider_line_vibrate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 438
    .local v5, "mOPPreferenceDivider":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "incoming_call_vibrate_mode"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 439
    .local v12, "value":I
    const-string/jumbo v13, "incoming_call_vibrate_mode"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/settings/notification/SoundSettings;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 440
    const-string/jumbo v13, "vibrate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/PreferenceCategory;

    .line 441
    .local v7, "mVibrateCategory":Landroid/support/v7/preference/PreferenceCategory;
    sget-boolean v13, Lcom/android/settings/notification/SoundSettings;->isSupportLinearMotor:Z

    if-eqz v13, :cond_12

    .line 442
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    if-eqz v13, :cond_d

    .line 443
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 445
    :cond_d
    const-string/jumbo v13, "vibrate_on_touch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 452
    :goto_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 453
    if-eqz v7, :cond_e

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 456
    :cond_e
    if-eqz v5, :cond_f

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 462
    :cond_f
    const-string/jumbo v13, "volume_keys_adjust"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    .line 463
    const-string/jumbo v13, "do_not_disturb"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    .line 464
    .local v4, "mCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v13, "do_not_disturb_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 465
    .local v6, "mPreference":Landroid/support/v7/preference/Preference;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v13

    if-nez v13, :cond_10

    .line 466
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 467
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    .line 469
    const-string/jumbo v13, "preference_divider_line_1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 471
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    if-eqz v13, :cond_11

    .line 472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 475
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 476
    return-void

    .line 447
    .end local v4    # "mCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v6    # "mPreference":Landroid/support/v7/preference/Preference;
    :cond_12
    if-eqz v5, :cond_13

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 450
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 585
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 586
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 587
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 575
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 576
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "volumePref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 577
    .local v0, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityPause()V

    goto :goto_0

    .line 579
    .end local v0    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v2}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 580
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/SoundSettings$Receiver;->register(Z)V

    .line 581
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 488
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 490
    .local v2, "value":I
    const-string/jumbo v3, "incoming_call_vibrate_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_4

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "incoming_call_vibrate_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    const-string/jumbo v3, "incoming_call_vibrate_mode"

    invoke-direct {p0, v3, v2}, Lcom/android/settings/notification/SoundSettings;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "incoming_call_vibrate_intensity"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 494
    .local v0, "intensityvalue":I
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 495
    if-nez v0, :cond_2

    .line 496
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v2

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v6

    .line 502
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 509
    .end local v0    # "intensityvalue":I
    :cond_1
    :goto_1
    return v8

    .line 497
    .restart local v0    # "intensityvalue":I
    :cond_2
    if-ne v0, v8, :cond_3

    .line 498
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v2

    const-wide/16 v4, -0x2

    aput-wide v4, v3, v6

    goto :goto_0

    .line 499
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 500
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v2

    const-wide/16 v4, -0x3

    aput-wide v4, v3, v6

    goto :goto_0

    .line 504
    .end local v0    # "intensityvalue":I
    :cond_4
    const-string/jumbo v3, "volume_keys_adjust"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volume_keys_adjust_value"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 506
    invoke-direct {p0, v2}, Lcom/android/settings/notification/SoundSettings;->updateVolumeKeysAdjustSummary(I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 622
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "incoming_call_vibrate_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "entriesValue":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "entries":[Ljava/lang/String;
    new-instance v3, Lcom/oneplus/settings/ui/OPListDialog;

    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/oneplus/settings/ui/OPListDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    .line 627
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v3, p0}, Lcom/oneplus/settings/ui/OPListDialog;->setOnDialogListItemClickListener(Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;)V

    .line 628
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    const-string/jumbo v4, "incoming_call_vibrate_mode"

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V

    .line 629
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPListDialog;->show()V

    .line 630
    return v6

    .line 632
    .end local v0    # "entries":[Ljava/lang/String;
    .end local v1    # "entriesValue":[Ljava/lang/String;
    :cond_0
    instance-of v3, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 633
    check-cast v3, Lcom/android/settings/RingtonePreference;

    iput-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 634
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v4}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 636
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 637
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 640
    :cond_1
    return v6

    .line 642
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 515
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 516
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    .line 517
    iget-object v10, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/settings/notification/SoundSettings$Receiver;->register(Z)V

    .line 518
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 519
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    .line 520
    iget-object v10, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "volumePref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 521
    .local v8, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v8}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 524
    .end local v8    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v10, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 525
    const-string/jumbo v12, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    .line 524
    invoke-static {v10, v12, v13}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 526
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v10, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 527
    const-string/jumbo v12, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    .line 526
    invoke-static {v10, v12, v13}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 528
    .local v2, "hasBaseRestriction":Z
    sget-object v12, Lcom/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v13, v12

    move v10, v11

    :goto_1
    if-ge v10, v13, :cond_3

    aget-object v3, v12, v10

    .line 529
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 530
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v4, :cond_1

    .line 531
    xor-int/lit8 v14, v2, 0x1

    invoke-virtual {v4, v14}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 533
    :cond_1
    instance-of v14, v4, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v14, :cond_2

    xor-int/lit8 v14, v2, 0x1

    if-eqz v14, :cond_2

    .line 534
    check-cast v4, Lcom/android/settingslib/RestrictedPreference;

    .end local v4    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v4, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 528
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 538
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "cell_broadcast_settings"

    .line 537
    invoke-virtual {p0, v10}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    .line 539
    .local v1, "broadcastSettingsPref":Lcom/android/settingslib/RestrictedPreference;
    if-eqz v1, :cond_4

    .line 541
    const-string/jumbo v10, "no_config_cell_broadcasts"

    .line 540
    invoke-virtual {v1, v10}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 544
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRinging()V

    .line 545
    sget-object v12, Lcom/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v13, v12

    move v10, v11

    :goto_2
    if-ge v10, v13, :cond_6

    aget-object v5, v12, v10

    .line 546
    .local v5, "pref":Lcom/android/settings/notification/SettingPref;
    if-eqz v5, :cond_5

    .line 547
    invoke-virtual {v5, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 545
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 552
    .end local v5    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_6
    iget-object v10, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v12, 0x3

    invoke-virtual {v10, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 553
    .local v7, "volume":I
    iget-object v10, p0, Lcom/android/settings/notification/SoundSettings;->mMediaVolumePreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v10, v7}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSeekbar(I)V

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "volume_keys_adjust_value"

    const/4 v13, -0x2

    invoke-static {v10, v12, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 558
    .local v6, "value":I
    invoke-direct {p0, v6}, Lcom/android/settings/notification/SoundSettings;->updateVolumeKeysAdjustSummary(I)V

    .line 560
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 655
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 656
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 657
    const-string/jumbo v0, "selected_preference"

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 1146
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1150
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1157
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 1158
    return-void
.end method
