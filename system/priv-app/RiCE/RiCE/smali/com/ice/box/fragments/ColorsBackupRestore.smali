.class public Lcom/ice/box/fragments/ColorsBackupRestore;
.super Landroid/preference/PreferenceFragment;
.source "ColorsBackupRestore.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mThemeId:I

.field seekDialog:Lcom/ice/box/helpers/SeekDialog;

.field tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f110126

    .line 45
    iput v0, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->mThemeId:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130002

    .line 49
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsBackupRestore;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 52
    new-instance v0, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 53
    new-instance v0, Lcom/ice/box/helpers/SeekDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ice/box/helpers/SeekDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    const-string v0, "THEMEID"

    .line 55
    iget v1, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->mThemeId:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->mThemeId:I

    const-string p1, "tweaks_backup_colors"

    .line 61
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsBackupRestore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_restore_colors"

    .line 63
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsBackupRestore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_stock_look"

    .line 65
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsBackupRestore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tweaks_backup_colors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "/data/media/0/renovateice"

    .line 71
    invoke-static {v0, v1}, Lcom/ice/box/helpers/Tools;->existFile(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mkdir /data/media/0/renovateice"

    .line 72
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "/data/system/users/0/settings_system.xml"

    const-string v3, "/data/media/0/renovateice/ricecolors.xml"

    invoke-static {v0, v2, v3}, Lcom/ice/box/helpers/RootUtils;->backupColors(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createBackupSuccessNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createBackupFailedNotification()V

    .line 83
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tweaks_restore_colors"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/data/media/0/renovateice"

    .line 84
    invoke-static {v0, v1}, Lcom/ice/box/helpers/Tools;->existFile(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/data/media/0/renovateice/ricecolors.xml"

    invoke-static {v0, v1}, Lcom/ice/box/helpers/RootUtils;->restoreColors(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createRestoreSuccessNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 89
    :catch_1
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createRestoreFailedNotification()V

    goto :goto_1

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createRestoreFailedNotification()V

    .line 96
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_stock_look"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 98
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_navbar_icon_color"

    const v1, -0x50506

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notification_background_color"

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    .line 102
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 100
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_header_text_color"

    const v2, -0xdadadb

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_header_icon_color"

    const v3, -0x4cdadadb

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_background_color"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notification_title_text_color"

    const v3, -0xdedede

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notification_summary_text_color"

    const v3, -0xaeaeaf

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_text_color"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_divider_color"

    const v2, 0x33252525

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_icon_on_color"

    const v2, -0xdd3b01

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_icon_off_color"

    const v2, 0x4d252525    # 1.73167184E8f

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_drag_handle_background_color"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_drag_handle_icon_color"

    const v2, -0x33dadadb    # -4.3291796E7f

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_slider_color"

    const v2, -0xa93f1b

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notif_footer_text_color"

    const v2, -0x26dadadb

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notif_footer_background_color"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 134
    :catch_2
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsBackupRestore;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsBackupRestore;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
