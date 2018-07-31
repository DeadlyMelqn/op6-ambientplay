.class public Lcom/ice/box/fragments/Colors;
.super Landroid/preference/PreferenceFragment;
.source "Colors.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mThemeId:I

.field seekDialog:Lcom/ice/box/helpers/SeekDialog;

.field tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f110126

    .line 44
    iput v0, p0, Lcom/ice/box/fragments/Colors;->mThemeId:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 47
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130006

    .line 48
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 52
    new-instance v0, Lcom/ice/box/helpers/SeekDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ice/box/helpers/SeekDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ice/box/fragments/Colors;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    const-string v0, "THEMEID"

    .line 53
    iget v1, p0, Lcom/ice/box/fragments/Colors;->mThemeId:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/Colors;->mThemeId:I

    .line 54
    iget p1, p0, Lcom/ice/box/fragments/Colors;->mThemeId:I

    const v0, 0x7f110125

    if-ne p1, v0, :cond_0

    const-string p1, "colors"

    .line 55
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    const v0, 0x7f0c001f

    .line 56
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    :cond_0
    const-string p1, "tweaks_unlock_navbar_colors"

    .line 59
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 61
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_unlock_navbar_colors"

    const/4 v2, 0x0

    .line 61
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "tweaks_dynamic_navbar"

    .line 64
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_dynamic_navbar"

    .line 66
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "tweaks_unlock_header_colors"

    .line 69
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 70
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_unlock_header_colors"

    .line 71
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "tweaks_unlock_qs_colors"

    .line 74
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_unlock_qs_colors"

    .line 76
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "tweaks_unlock_notification_colors"

    .line 79
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_unlock_notification_colors"

    .line 81
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "tweaks_allow_transparent_notifications"

    .line 84
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 85
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 86
    check-cast p1, Landroid/preference/SwitchPreference;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_allow_transparent_notifications"

    .line 86
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "tweaks_stock_look"

    .line 89
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_header_stock_look"

    .line 91
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_qs_stock_look"

    .line 93
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_notif_stock_look"

    .line 95
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_backup_colors"

    .line 97
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_restore_colors"

    .line 99
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Colors;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tweaks_stock_look"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, -0xa93f1b

    const v4, -0x33dadadb    # -4.3291796E7f

    const v5, 0x33252525

    const v6, -0xaeaeaf

    const v7, -0xdedede

    const v9, -0xdd3b01

    const v10, -0x4cdadadb

    const v11, 0x7f0a000e

    const v12, 0x4d252525    # 1.73167184E8f

    const v13, -0xdadadb

    const v14, -0x50506

    if-eqz v2, :cond_0

    .line 108
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v15, "tweaks_navbar_icon_color"

    invoke-static {v2, v15, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v15, "tweaks_notification_background_color"

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 113
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 110
    invoke-static {v2, v15, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_header_text_color"

    invoke-static {v2, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_header_icon_color"

    invoke-static {v2, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_background_color"

    invoke-static {v2, v8, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_notification_title_text_color"

    invoke-static {v2, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_notification_summary_text_color"

    invoke-static {v2, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_text_color"

    invoke-static {v2, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_divider_color"

    invoke-static {v2, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_icon_on_color"

    invoke-static {v2, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_icon_off_color"

    invoke-static {v2, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_drag_handle_background_color"

    invoke-static {v2, v8, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_drag_handle_icon_color"

    invoke-static {v2, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_slider_color"

    invoke-static {v2, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_notif_footer_text_color"

    const v15, -0x26dadadb

    invoke-static {v2, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_notif_footer_background_color"

    invoke-static {v2, v8, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Successful!"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v2 .. v2}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f10006e

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 148
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v8, "tweaks_unlock_navbar_colors"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    move-object/from16 v2, p1

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v2 .. v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 152
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {v8 .. v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v15, "tweaks_unlock_navbar_colors"

    invoke-static {v8, v15, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Successful!"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v2 .. v2}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 156
    :catch_1
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f10006e

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 159
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v8, "tweaks_dynamic_navbar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    move-object/from16 v2, p1

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v2 .. v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 163
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {v8 .. v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v15, "tweaks_dynamic_navbar"

    invoke-static {v8, v15, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Successful!"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 166
    :catch_2
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f10006e

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 169
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v8, "tweaks_unlock_header_colors"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    move-object/from16 v2, p1

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v2 .. v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 173
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {v8 .. v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v15, "tweaks_unlock_header_colors"

    invoke-static {v8, v15, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Successful!"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 176
    :catch_3
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f10006e

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 179
    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v8, "tweaks_header_stock_look"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 181
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_header_text_color"

    invoke-static {v2, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_header_icon_color"

    invoke-static {v2, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Successful!"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 187
    :catch_4
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f10006e

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 190
    :cond_4
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v8, "tweaks_unlock_qs_colors"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    move-object/from16 v2, p1

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v2 .. v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 194
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {v8 .. v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "tweaks_unlock_qs_colors"

    invoke-static {v8, v10, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Successful!"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 197
    :catch_5
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f10006e

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 200
    :cond_5
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v8, "tweaks_qs_stock_look"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 202
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_background_color"

    invoke-static {v2, v8, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_icon_off_color"

    invoke-static {v2, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_icon_on_color"

    invoke-static {v2, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_icon_off_color"

    invoke-static {v2, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_text_color"

    invoke-static {v2, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "tweaks_qs_divider_color"

    invoke-static {v2, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "tweaks_qs_drag_handle_background_color"

    invoke-static {v2, v5, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "tweaks_qs_drag_handle_icon_color"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_qs_slider_color"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Successful!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 222
    :catch_6
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 225
    :cond_6
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tweaks_unlock_notification_colors"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 226
    move-object/from16 v2, p1

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v2 .. v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 229
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_unlock_notification_colors"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Successful!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v2 .. v2}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    .line 234
    :catch_7
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 237
    :cond_7
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tweaks_allow_transparent_notifications"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 238
    move-object/from16 v2, p1

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v2 .. v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 241
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_allow_transparent_notifications"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Successful!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    .line 245
    :catch_8
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 248
    :cond_8
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tweaks_notif_stock_look"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 250
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_notification_background_color"

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 252
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 250
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_notif_footer_text_color"

    const v4, -0x26dadadb

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_notif_footer_background_color"

    invoke-static {v2, v3, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_notification_summary_text_color"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_notification_title_text_color"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Successful!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v2 .. v2}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    .line 264
    :catch_9
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 267
    :cond_9
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tweaks_backup_colors"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    const-string v2, "/data/media/0/renovateice"

    .line 268
    invoke-static {v2, v3}, Lcom/ice/box/helpers/Tools;->existFile(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "mkdir /data/media/0/renovateice"

    .line 269
    invoke-static/range {v2 .. v2}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    :cond_a
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "/data/system/users/0/settings_system.xml"

    const-string v5, "/data/media/0/renovateice/ricecolors.xml"

    invoke-static {v2, v4, v5}, Lcom/ice/box/helpers/RootUtils;->backupColors(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v2 .. v2}, Lcom/ice/box/helpers/TweaksHelper;->createBackupSuccessNotification()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    .line 276
    :catch_a
    iget-object v2, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v2 .. v2}, Lcom/ice/box/helpers/TweaksHelper;->createBackupFailedNotification()V

    .line 280
    :cond_b
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tweaks_restore_colors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "/data/media/0/renovateice"

    .line 281
    invoke-static {v1, v3}, Lcom/ice/box/helpers/Tools;->existFile(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 283
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Colors;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/data/media/0/renovateice/ricecolors.xml"

    invoke-static {v1, v2}, Lcom/ice/box/helpers/RootUtils;->restoreColors(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    iget-object v1, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v1 .. v1}, Lcom/ice/box/helpers/TweaksHelper;->createRestoreSuccessNotification()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    .line 286
    :catch_b
    iget-object v0, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createRestoreFailedNotification()V

    goto :goto_b

    .line 289
    :cond_c
    iget-object v0, v0, Lcom/ice/box/fragments/Colors;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createRestoreFailedNotification()V

    :cond_d
    :goto_b
    const/4 v0, 0x0

    return v0
.end method
