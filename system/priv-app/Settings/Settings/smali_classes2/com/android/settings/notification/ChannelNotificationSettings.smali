.class public Lcom/android/settings/notification/ChannelNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "ChannelNotificationSettings.java"


# static fields
.field private static final KEY_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final KEY_LIGHTS:Ljava/lang/String; = "lights"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final TAG:Ljava/lang/String; = "ChannelSettings"


# instance fields
.field private mChannelGroup:Landroid/app/NotificationChannelGroup;

.field private mFooter:Lcom/android/settings/widget/FooterPreference;

.field private mHeaderPref:Lcom/android/settings/applications/AppHeaderController;

.field private mImportance:Landroid/support/v7/preference/Preference;

.field private mLights:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

.field private mVibrate:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ChannelNotificationSettings;)Landroid/app/NotificationChannelGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ChannelNotificationSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ChannelNotificationSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ChannelNotificationSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/ChannelNotificationSettings;Landroid/app/NotificationChannelGroup;)Landroid/app/NotificationChannelGroup;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ChannelNotificationSettings;
    .param p1, "-value"    # Landroid/app/NotificationChannelGroup;

    .prologue
    iput-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ChannelNotificationSettings;I)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/ChannelNotificationSettings;
    .param p1, "importance"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ChannelNotificationSettings;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ChannelNotificationSettings;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ChannelNotificationSettings;
    .param p1, "groupName"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setChannelGroupLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    return-void
.end method

.method private addFooterPref()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    new-instance v0, Lcom/android/settings/widget/FooterPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "descPref":Lcom/android/settings/widget/FooterPreference;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/FooterPreference;->setOrder(I)V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/FooterPreference;->setSelectable(Z)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 181
    .end local v0    # "descPref":Lcom/android/settings/widget/FooterPreference;
    :cond_0
    return-void
.end method

.method private addHeaderPref()V
    .locals 6

    .prologue
    .line 140
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 141
    .local v2, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/NotificationBackend$AppRow;>;"
    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->collectConfigActivities(Landroid/util/ArrayMap;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 144
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v3

    .line 146
    const/4 v4, 0x0

    .line 144
    invoke-interface {v3, p0, v4}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newAppHeaderController(Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mHeaderPref:Lcom/android/settings/applications/AppHeaderController;

    .line 147
    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mHeaderPref:Lcom/android/settings/applications/AppHeaderController;

    .line 148
    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 147
    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    .line 150
    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    .line 147
    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    .line 151
    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 147
    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    .line 152
    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 147
    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setUid(I)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    .line 153
    const/4 v4, 0x1

    .line 154
    const/4 v5, 0x3

    .line 147
    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/AppHeaderController;->setButtonActions(II)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .line 147
    invoke-virtual {v3, v0, v4}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    .line 156
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 157
    return-void
.end method

.method private getImportanceSummary(I)Ljava/lang/String;
    .locals 5
    .param p1, "importance"    # I

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "summary":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 334
    const-string/jumbo v2, ""

    return-object v2

    .line 310
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0f90

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    .end local v0    # "summary":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const v4, 0x7f0f1223

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 313
    .end local v1    # "title":Ljava/lang/String;
    .restart local v0    # "summary":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f1225

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    .restart local v1    # "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0f8b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "summary":Ljava/lang/String;
    goto :goto_0

    .line 317
    .end local v1    # "title":Ljava/lang/String;
    .local v0, "summary":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f1226

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .restart local v1    # "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0f8c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "summary":Ljava/lang/String;
    goto :goto_0

    .line 321
    .end local v1    # "title":Ljava/lang/String;
    .local v0, "summary":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f1228

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    .restart local v1    # "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->hasValidSound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0f8d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "summary":Ljava/lang/String;
    goto :goto_0

    .line 328
    .end local v1    # "title":Ljava/lang/String;
    .local v0, "summary":Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f1227

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    .restart local v1    # "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->hasValidSound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0f8e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "summary":Ljava/lang/String;
    goto :goto_0

    .line 340
    .end local v0    # "summary":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 308
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_4
    .end sparse-switch
.end method

.method private populateUpgradedChannelPrefs()V
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->addPreferencesFromResource(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupBadge()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupPriorityPref(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupVisOverridePref(I)V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupLights()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupVibrate()V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupRingtone()V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupImportance()V

    .line 137
    return-void
.end method

.method private setChannelGroupLabel(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "groupName"    # Ljava/lang/CharSequence;

    .prologue
    .line 160
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 161
    .local v2, "summary":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 162
    .local v1, "bidi":Landroid/text/BidiFormatter;
    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mContext:Landroid/content/Context;

    .line 165
    const v4, 0x7f0f122f

    .line 164
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 166
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 169
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mHeaderPref:Lcom/android/settings/applications/AppHeaderController;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    .line 170
    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mHeaderPref:Lcom/android/settings/applications/AppHeaderController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    .line 171
    return-void
.end method

.method private setupBlock()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 250
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 251
    const v3, 0x7f0401d5

    const/4 v4, 0x0

    .line 250
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, "switchBarContainer":Landroid/view/View;
    const v1, 0x7f0a032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 253
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 254
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 255
    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v3, Lcom/android/settings/notification/ChannelNotificationSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$6;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 274
    new-instance v1, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    .line 275
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    const/16 v3, -0x1f4

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    .line 276
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    const-string/jumbo v3, "block"

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/LayoutPreference;->setKey(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 279
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->isChannelBlockable(ZLandroid/app/NotificationChannel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 283
    :cond_0
    const v1, 0x7f0f121b

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupBlockDesc(I)V

    .line 284
    return-void

    :cond_1
    move v1, v2

    .line 255
    goto :goto_0
.end method

.method private setupImportance()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 287
    const-string/jumbo v0, "importance"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/Preference;

    .line 288
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v2, "channelArgs":Landroid/os/Bundle;
    const-string/jumbo v0, "uid"

    iget v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mUid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string/jumbo v0, "hideInfoButton"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    const-string/jumbo v0, "package"

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v0, "android.provider.extra.CHANNEL_ID"

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 297
    const-class v1, Lcom/android/settings/notification/ChannelImportanceSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getMetricsCategory()I

    move-result v7

    .line 298
    const v4, 0x7f0f0f88

    move-object v5, v3

    .line 296
    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v8

    .line 300
    .local v8, "channelIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 302
    .end local v8    # "channelIntent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    return-void

    :cond_1
    move v0, v6

    .line 293
    goto :goto_0
.end method

.method private setupLights()V
    .locals 2

    .prologue
    .line 202
    const-string/jumbo v0, "lights"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mLights:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 203
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mLights:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mLights:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mLights:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/ChannelNotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$3;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    return-void
.end method

.method private setupRingtone()V
    .locals 2

    .prologue
    .line 235
    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationSoundPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    .line 236
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->setRingtone(Landroid/net/Uri;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    new-instance v1, Lcom/android/settings/notification/ChannelNotificationSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$5;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    return-void
.end method

.method private setupVibrate()V
    .locals 2

    .prologue
    .line 218
    const-string/jumbo v0, "vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 219
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 220
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/ChannelNotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$4;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method canPulseLight()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 379
    const v3, 0x1120077

    .line 378
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    return v1

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 383
    const-string/jumbo v3, "notification_light_pulse"

    .line 382
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x109

    return v0
.end method

.method hasValidSound()Z
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

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
    .line 365
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/notification/NotificationSoundPreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->getImportanceSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 346
    instance-of v1, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v1, :cond_1

    .line 347
    if-eqz p1, :cond_0

    .line 353
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/NotificationSoundPreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 355
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 358
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 360
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/notification/NotificationSettingsBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 82
    iget v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mUid:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_1

    .line 83
    :cond_0
    const-string/jumbo v0, "ChannelSettings"

    const-string/jumbo v1, "Missing package or uid or packageinfo or channel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->finish()V

    .line 85
    return-void

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 91
    :cond_2
    const v2, 0x7f08004c

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->addPreferencesFromResource(I)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setupBlock()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->addHeaderPref()V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->addAppLinkPref()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->addFooterPref()V

    .line 97
    const-string/jumbo v2, "miscellaneous"

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->populateDefaultChannelPrefs()V

    .line 99
    iput-boolean v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mShowLegacyChannelConfig:Z

    .line 125
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->updateDependents(Z)V

    .line 126
    return-void

    .line 101
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->populateUpgradedChannelPrefs()V

    .line 103
    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 105
    new-instance v2, Lcom/android/settings/notification/ChannelNotificationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$1;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ChannelNotificationSettings$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_5
    move v0, v1

    .line 125
    goto :goto_1
.end method

.method protected setupBadge()V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 185
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/ChannelNotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ChannelNotificationSettings$2;-><init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    return-void
.end method

.method updateDependents(Z)V
    .locals 6
    .param p1, "banned"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 391
    iget-boolean v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 401
    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 402
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 403
    iget-boolean v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mDndVisualEffectsSuppressed:Z

    .line 401
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 404
    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->isLockScreenSecure()Z

    move-result v0

    .line 404
    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBlockedDesc:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppLink:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mAppLink:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mFooter:Lcom/android/settings/widget/FooterPreference;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mFooter:Lcom/android/settings/widget/FooterPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 413
    :cond_2
    return-void

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mImportance:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 395
    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mLights:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->canPulseLight()Z

    move-result v0

    .line 395
    :goto_3
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mVibrate:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 398
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->mRingtone:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ChannelNotificationSettings;->checkCanBeVisible(I)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ChannelNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 395
    goto :goto_3

    :cond_5
    move v0, v2

    .line 401
    goto :goto_1

    :cond_6
    move v0, v1

    .line 402
    goto :goto_1

    :cond_7
    move v0, v1

    .line 404
    goto :goto_2
.end method
