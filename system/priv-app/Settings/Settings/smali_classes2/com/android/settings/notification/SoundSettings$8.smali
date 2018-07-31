.class final Lcom/android/settings/notification/SoundSettings$8;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1212
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    .local v3, "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1214
    const-string/jumbo v5, "notification_volume"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1223
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1226
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1227
    const v6, 0x1120031

    .line 1226
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1229
    .local v1, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v1, :cond_0

    .line 1230
    :try_start_0
    const-string/jumbo v5, "com.android.cellbroadcastreceiver"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1231
    const/4 v6, 0x2

    .line 1230
    if-ne v5, v6, :cond_0

    .line 1232
    const/4 v1, 0x0

    .line 1238
    .end local v1    # "isCellBroadcastAppLinkEnabled":Z
    :cond_0
    :goto_1
    invoke-virtual {v4}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v5

    if-eqz v5, :cond_1

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_2

    .line 1239
    :cond_1
    const-string/jumbo v5, "cell_broadcast_settings"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    :cond_2
    const-string/jumbo v5, "com.oneplus.dirac.simplemanager"

    invoke-static {p1, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1243
    const-string/jumbo v5, "sound_direct"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/settings/notification/SoundSettings;->-get0()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 1247
    :cond_4
    const-string/jumbo v5, "vibrate"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    const-string/jumbo v5, "vibrate_when_ringing_for_vibrate"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    const-string/jumbo v5, "incoming_call_vibrate_mode"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    const-string/jumbo v5, "vibrate_on_touch_for_vibrate"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    const-string/jumbo v5, "vibrate_intensity"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1256
    const-string/jumbo v5, "do_not_disturb_settings"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    const-string/jumbo v5, "volume_keys_adjust"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOpBluetoothHeadset()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1262
    const-string/jumbo v5, "earphone"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    const-string/jumbo v5, "earphone_mode"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    :cond_7
    return-object v3

    .line 1216
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "um":Landroid/os/UserManager;
    :cond_8
    const-string/jumbo v5, "ring_volume"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    const-string/jumbo v5, "ringtone"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    const-string/jumbo v5, "wifi_display"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    const-string/jumbo v5, "vibrate_when_ringing"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1235
    .restart local v1    # "isCellBroadcastAppLinkEnabled":Z
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .local v1, "isCellBroadcastAppLinkEnabled":Z
    goto/16 :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1206
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1207
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f0800a3

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1208
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
