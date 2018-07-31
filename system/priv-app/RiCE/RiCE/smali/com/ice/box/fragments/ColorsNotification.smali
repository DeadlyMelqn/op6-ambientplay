.class public Lcom/ice/box/fragments/ColorsNotification;
.super Landroid/preference/PreferenceFragment;
.source "ColorsNotification.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mThemeId:I

.field private final notifPanelAlphaApplyListener:Landroid/view/View$OnClickListener;

.field private notifPanelAlphaDialog:Landroid/app/AlertDialog;

.field private final notifPanelAlphaMinusListener:Landroid/view/View$OnClickListener;

.field private final notifPanelAlphaPlusListener:Landroid/view/View$OnClickListener;

.field private notifPanelAlphaProgress:I

.field private notifPanelAlphaSeek:Landroid/widget/SeekBar;

.field private final notifPanelAlphaSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final notifPanelAlphaSeekMax:I

.field private notifPanelAlphaValue:Landroid/widget/TextView;

.field seekDialog:Lcom/ice/box/helpers/SeekDialog;

.field tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/16 v0, 0xff

    .line 45
    iput v0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaSeekMax:I

    .line 54
    new-instance v0, Lcom/ice/box/fragments/ColorsNotification$1;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/ColorsNotification$1;-><init>(Lcom/ice/box/fragments/ColorsNotification;)V

    iput-object v0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaPlusListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/ice/box/fragments/ColorsNotification$2;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/ColorsNotification$2;-><init>(Lcom/ice/box/fragments/ColorsNotification;)V

    iput-object v0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaMinusListener:Landroid/view/View$OnClickListener;

    .line 82
    new-instance v0, Lcom/ice/box/fragments/ColorsNotification$3;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/ColorsNotification$3;-><init>(Lcom/ice/box/fragments/ColorsNotification;)V

    iput-object v0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaApplyListener:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v0, Lcom/ice/box/fragments/ColorsNotification$4;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/ColorsNotification$4;-><init>(Lcom/ice/box/fragments/ColorsNotification;)V

    iput-object v0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const v0, 0x7f110126

    .line 120
    iput v0, p0, Lcom/ice/box/fragments/ColorsNotification;->mThemeId:I

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/fragments/ColorsNotification;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaProgress:I

    return p0
.end method

.method static synthetic access$002(Lcom/ice/box/fragments/ColorsNotification;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaProgress:I

    return p1
.end method

.method static synthetic access$008(Lcom/ice/box/fragments/ColorsNotification;)I
    .locals 2

    .line 42
    iget v0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaProgress:I

    return v0
.end method

.method static synthetic access$010(Lcom/ice/box/fragments/ColorsNotification;)I
    .locals 2

    .line 42
    iget v0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaProgress:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaProgress:I

    return v0
.end method

.method static synthetic access$100(Lcom/ice/box/fragments/ColorsNotification;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ice/box/fragments/ColorsNotification;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaValue:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ice/box/fragments/ColorsNotification;)Landroid/widget/SeekBar;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaSeek:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ice/box/fragments/ColorsNotification;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaSeek:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ice/box/fragments/ColorsNotification;)Landroid/app/AlertDialog;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ice/box/fragments/ColorsNotification;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ice/box/fragments/ColorsNotification;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ice/box/fragments/ColorsNotification;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaPlusListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ice/box/fragments/ColorsNotification;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaMinusListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ice/box/fragments/ColorsNotification;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/ColorsNotification;->notifPanelAlphaApplyListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 123
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130005

    .line 125
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNotification;->addPreferencesFromResource(I)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "isNightly"

    const/4 v1, 0x0

    .line 128
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isS8"

    .line 129
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "localStableVersion"

    const/4 v4, 0x1

    .line 130
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "localNightlyVersion"

    .line 131
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 133
    new-instance v6, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ice/box/fragments/ColorsNotification;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 134
    new-instance v6, Lcom/ice/box/helpers/SeekDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ice/box/helpers/SeekDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ice/box/fragments/ColorsNotification;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    const-string v6, "THEMEID"

    .line 135
    iget v7, p0, Lcom/ice/box/fragments/ColorsNotification;->mThemeId:I

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/ColorsNotification;->mThemeId:I

    const-string p1, "tweaks_unlock_notification_colors"

    .line 137
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 139
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 140
    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_unlock_notification_colors"

    .line 139
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-virtual {p1, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "tweaks_allow_transparent_notifications"

    .line 142
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    check-cast p1, Landroid/preference/SwitchPreference;

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_allow_transparent_notifications"

    .line 144
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    invoke-virtual {p1, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "tweaks_notif_stock_look"

    .line 147
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_notification_background_alpha"

    .line 149
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 150
    new-instance v6, Lcom/ice/box/fragments/ColorsNotification$5;

    invoke-direct {v6, p0}, Lcom/ice/box/fragments/ColorsNotification$5;-><init>(Lcom/ice/box/fragments/ColorsNotification;)V

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_link_app_name_color"

    .line 190
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    const-string v6, "tweaks_link_app_name_color"

    .line 191
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {v7 .. v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_link_app_name_color"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_2

    move v1, v4

    .line 194
    :cond_2
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 195
    new-instance v1, Lcom/ice/box/fragments/ColorsNotification$6;

    invoke-direct {v1, p0}, Lcom/ice/box/fragments/ColorsNotification$6;-><init>(Lcom/ice/box/fragments/ColorsNotification;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 212
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_5

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    const/16 p1, 0x64

    if-ge v5, p1, :cond_4

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_link_app_name_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_3
    const/16 p1, 0x65

    if-ge v3, p1, :cond_4

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_link_app_name_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_notif_footer_background_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_notification_background_alpha"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_allow_transparent_notifications"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tweaks_unlock_notification_colors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f10006e

    if-eqz v0, :cond_0

    .line 232
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 235
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_unlock_notification_colors"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Successful!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsNotification;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tweaks_allow_transparent_notifications"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 246
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_allow_transparent_notifications"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Successful!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 250
    :catch_1
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsNotification;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 253
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_notif_stock_look"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 255
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notification_background_color"

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    .line 258
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 255
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notif_footer_text_color"

    const v2, -0x26dadadb

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notif_footer_background_color"

    const v2, -0x50506

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notification_summary_text_color"

    const v2, -0xaeaeaf

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notification_title_text_color"

    const v2, -0xdedede

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notification_carrier_text_color"

    const v2, -0x33050506    # -1.31586E8f

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 271
    :catch_2
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNotification;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNotification;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
