.class public Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNotificationAndNotdisturb.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;
    }
.end annotation


# static fields
.field private static final KEY_DO_NOT_DISTURB_SETTINGS:Ljava/lang/String; = "do_not_disturb_settings"

.field private static final KEY_MODE_SETTINGS_CATEGORY:Ljava/lang/String; = "mode_settings_category"

.field private static final KEY_RING_SETTINGS:Ljava/lang/String; = "ring_settings"

.field private static final KEY_SILENT_SETTINGS:Ljava/lang/String; = "silent_settings"

.field private static final KEY_VIBRATION_MODE:Ljava/lang/String; = "vibration_settings"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static isSupportSocTriState:Z


# instance fields
.field private mDonotdisturbSetings:Landroid/support/v7/preference/Preference;

.field private mRingSettings:Landroid/support/v7/preference/Preference;

.field private mSilentSettings:Landroid/support/v7/preference/Preference;

.field private mVibrationSettings:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;-><init>()V

    .line 68
    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->addPreferencesFromResource(I)V

    .line 41
    const-string/jumbo v1, "ring_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mRingSettings:Landroid/support/v7/preference/Preference;

    .line 42
    const-string/jumbo v1, "silent_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mSilentSettings:Landroid/support/v7/preference/Preference;

    .line 43
    const-string/jumbo v1, "vibration_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mVibrationSettings:Landroid/support/v7/preference/Preference;

    .line 44
    const-string/jumbo v1, "do_not_disturb_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mDonotdisturbSetings:Landroid/support/v7/preference/Preference;

    .line 46
    const-string/jumbo v1, "mode_settings_category"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 45
    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 47
    .local v0, "modeSettingsCategory":Landroid/support/v7/preference/PreferenceGroup;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string/jumbo v1, "ring_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 50
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f04b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mSilentSettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f04b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mRingSettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f04b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mDonotdisturbSetings:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->mVibrationSettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method
