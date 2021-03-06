.class public Lcom/oneplus/settings/notification/OPSilentMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPSilentMode.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPSilentMode$1;,
        Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_MEDIA_RING:Ljava/lang/String; = "media_ring"

.field private static final KEY_NOISE_TIPS:Ljava/lang/String; = "noise_tips"

.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_MEDIA_RING_SETTING:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_NOISE_TIPS_SETTING:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mPrefSettingsObserver:Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;


# direct methods
.method static synthetic -get0()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/notification/OPSilentMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPSilentMode;

    .prologue
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSilentMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 34
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    .line 35
    const-string/jumbo v2, "media_ring"

    const-string/jumbo v3, "oem_zen_media_switch"

    .line 34
    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_MEDIA_RING_SETTING:Lcom/android/settings/notification/SettingPref;

    .line 38
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    .line 39
    const-string/jumbo v2, "noise_tips"

    const-string/jumbo v3, "oem_vibrate_under_silent"

    .line 38
    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_NOISE_TIPS_SETTING:Lcom/android/settings/notification/SettingPref;

    .line 41
    new-array v0, v1, [Lcom/android/settings/notification/SettingPref;

    sget-object v1, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_MEDIA_RING_SETTING:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v4

    .line 42
    sget-object v1, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_NOISE_TIPS_SETTING:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 41
    sput-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 103
    new-instance v0, Lcom/oneplus/settings/notification/OPSilentMode$1;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPSilentMode$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;-><init>(Lcom/oneplus/settings/notification/OPSilentMode;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSilentMode;->mPrefSettingsObserver:Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;

    .line 27
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSilentMode;->addPreferencesFromResource(I)V

    .line 48
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "noise_tips"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSilentMode;->removePreference(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSilentMode;->mPrefSettingsObserver:Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;->register(Z)V

    .line 65
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 56
    sget-object v2, Lcom/oneplus/settings/notification/OPSilentMode;->PREFS:[Lcom/android/settings/notification/SettingPref;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 57
    .local v0, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v0, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSilentMode;->mPrefSettingsObserver:Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;->register(Z)V

    .line 60
    return-void
.end method
