.class public Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "UserRestrictionsUtils.java"


# static fields
.field private static final DEFAULT_ENABLED_FOR_DEVICE_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UserRestrictionsUtils"

.field public static final USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const/16 v0, 0x2d

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "no_config_wifi"

    aput-object v1, v0, v3

    .line 69
    const-string/jumbo v1, "no_modify_accounts"

    aput-object v1, v0, v4

    .line 70
    const-string/jumbo v1, "no_install_apps"

    aput-object v1, v0, v5

    .line 71
    const-string/jumbo v1, "no_uninstall_apps"

    aput-object v1, v0, v6

    .line 72
    const-string/jumbo v1, "no_share_location"

    aput-object v1, v0, v7

    .line 73
    const-string/jumbo v1, "no_install_unknown_sources"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "no_config_bluetooth"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "no_bluetooth"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "no_bluetooth_sharing"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "no_usb_file_transfer"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "no_config_credentials"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "no_remove_user"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "no_remove_managed_profile"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "no_debugging_features"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "no_config_vpn"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "no_config_tethering"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "no_network_reset"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "no_factory_reset"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "no_add_user"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "no_add_managed_profile"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "ensure_verify_apps"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "no_config_cell_broadcasts"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "no_config_mobile_networks"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "no_control_apps"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "no_physical_media"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "no_unmute_microphone"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "no_adjust_volume"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "no_outgoing_calls"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "no_sms"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "no_fun"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "no_create_windows"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "no_cross_profile_copy_paste"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "no_outgoing_beam"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "no_wallpaper"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "no_safe_boot"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "allow_parent_profile_app_linking"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 104
    const-string/jumbo v1, "no_record_audio"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "no_camera"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 106
    const-string/jumbo v1, "no_run_in_background"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "no_data_roaming"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "no_set_user_icon"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "no_set_wallpaper"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "no_oem_unlock"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "disallow_unmute_device"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "no_autofill"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 67
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 118
    new-array v0, v4, [Ljava/lang/String;

    .line 119
    const-string/jumbo v1, "no_record_audio"

    aput-object v1, v0, v3

    .line 118
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    .line 126
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 127
    const-string/jumbo v1, "no_bluetooth"

    aput-object v1, v0, v3

    .line 128
    const-string/jumbo v1, "no_usb_file_transfer"

    aput-object v1, v0, v4

    .line 129
    const-string/jumbo v1, "no_config_tethering"

    aput-object v1, v0, v5

    .line 130
    const-string/jumbo v1, "no_network_reset"

    aput-object v1, v0, v6

    .line 131
    const-string/jumbo v1, "no_factory_reset"

    aput-object v1, v0, v7

    .line 132
    const-string/jumbo v1, "no_add_user"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "no_config_cell_broadcasts"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "no_config_mobile_networks"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "no_physical_media"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "no_sms"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "no_fun"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "no_safe_boot"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "no_create_windows"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "no_data_roaming"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 126
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 146
    new-array v0, v6, [Ljava/lang/String;

    .line 147
    const-string/jumbo v1, "no_record_audio"

    aput-object v1, v0, v3

    .line 148
    const-string/jumbo v1, "no_wallpaper"

    aput-object v1, v0, v4

    .line 149
    const-string/jumbo v1, "no_oem_unlock"

    aput-object v1, v0, v5

    .line 146
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    .line 156
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 157
    const-string/jumbo v1, "no_adjust_volume"

    aput-object v1, v0, v3

    .line 158
    const-string/jumbo v1, "no_bluetooth_sharing"

    aput-object v1, v0, v4

    .line 159
    const-string/jumbo v1, "no_run_in_background"

    aput-object v1, v0, v5

    .line 160
    const-string/jumbo v1, "no_unmute_microphone"

    aput-object v1, v0, v6

    .line 161
    const-string/jumbo v1, "disallow_unmute_device"

    aput-object v1, v0, v7

    .line 156
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 167
    new-array v0, v4, [Ljava/lang/String;

    .line 168
    const-string/jumbo v1, "no_add_managed_profile"

    aput-object v1, v0, v3

    .line 167
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_DEVICE_OWNERS:Ljava/util/Set;

    .line 178
    new-array v0, v4, [Ljava/lang/String;

    .line 179
    const-string/jumbo v1, "no_bluetooth_sharing"

    aput-object v1, v0, v3

    .line 178
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    .line 185
    new-array v0, v4, [Ljava/lang/String;

    .line 186
    const-string/jumbo v1, "ensure_verify_apps"

    aput-object v1, v0, v3

    .line 185
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Z

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 437
    .local v4, "id":J
    :try_start_0
    const-string/jumbo v9, "no_data_roaming"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 439
    if-eqz p3, :cond_1

    .line 443
    new-instance v8, Landroid/telephony/SubscriptionManager;

    invoke-direct {v8, p0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 445
    .local v8, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 446
    .local v7, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_7

    .line 447
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 449
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "data_roaming"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 450
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    .line 449
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 450
    const-string/jumbo v10, "0"

    .line 448
    invoke-static {v0, v9, v10, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 522
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "subInfo$iterator":Ljava/util/Iterator;
    .end local v7    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v8    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :catchall_0
    move-exception v9

    .line 523
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    throw v9

    .line 437
    :cond_0
    :try_start_1
    const-string/jumbo v9, "no_share_location"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 460
    if-eqz p3, :cond_1

    .line 462
    const-string/jumbo v9, "location_mode"

    .line 463
    const/4 v10, 0x0

    .line 461
    invoke-static {v0, v9, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :cond_1
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    return-void

    .line 437
    :cond_2
    :try_start_2
    const-string/jumbo v9, "no_debugging_features"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 468
    if-eqz p3, :cond_1

    .line 471
    if-nez p1, :cond_1

    .line 473
    const-string/jumbo v9, "adb_enabled"

    const-string/jumbo v10, "0"

    .line 472
    invoke-static {v0, v9, v10, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 437
    :cond_3
    const-string/jumbo v9, "ensure_verify_apps"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 479
    if-eqz p3, :cond_1

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 482
    const-string/jumbo v10, "package_verifier_enable"

    const-string/jumbo v11, "1"

    .line 480
    invoke-static {v9, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 486
    const-string/jumbo v10, "verifier_verify_adb_installs"

    const-string/jumbo v11, "1"

    .line 484
    invoke-static {v9, v10, v11, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 437
    :cond_4
    const-string/jumbo v9, "no_install_unknown_sources"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 495
    const-string/jumbo v10, "install_non_market_apps"

    .line 496
    if-eqz p3, :cond_8

    const/4 v9, 0x0

    .line 494
    :goto_2
    invoke-static {v0, v10, v9, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 437
    :cond_5
    const-string/jumbo v9, "no_run_in_background"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 499
    if-eqz p3, :cond_1

    .line 500
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 501
    .local v1, "currentUser":I
    if-eq v1, p1, :cond_1

    if-eqz p1, :cond_1

    .line 503
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, p1, v10, v11}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 504
    :catch_0
    move-exception v2

    .line 505
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v9

    throw v9

    .line 437
    .end local v1    # "currentUser":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string/jumbo v9, "no_safe_boot"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 518
    const-string/jumbo v11, "safe_boot_disallowed"

    .line 519
    if-eqz p3, :cond_9

    const/4 v9, 0x1

    .line 516
    :goto_3
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 456
    .restart local v7    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_7
    const-string/jumbo v9, "data_roaming"

    const-string/jumbo v10, "0"

    .line 455
    invoke-static {v0, v9, v10, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 496
    .end local v7    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v8    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_8
    const/4 v9, 0x1

    goto :goto_2

    .line 519
    :cond_9
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 401
    sget-object v4, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 402
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 403
    .local v2, "newValue":Z
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 405
    .local v3, "prevValue":Z
    if-eq v2, v3, :cond_0

    .line 406
    invoke-static {p0, p1, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_0

    .line 409
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Z
    .end local v3    # "prevValue":Z
    :cond_1
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "a"    # Landroid/os/Bundle;
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    if-ne p0, p1, :cond_0

    .line 372
    return v5

    .line 374
    :cond_0
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    return v2

    .line 377
    :cond_1
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    return v4

    .line 380
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 382
    return v4

    .line 385
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 387
    return v4

    .line 390
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    return v5
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .locals 1
    .param p0, "restriction"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "restriction"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 309
    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    if-eqz p1, :cond_0

    .line 311
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    :cond_0
    xor-int/lit8 v0, v0, 0x1

    .line 309
    :cond_1
    return v0
.end method

.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "in"    # Landroid/os/Bundle;

    .prologue
    .line 265
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static contains(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "restriction"    # Ljava/lang/String;

    .prologue
    .line 254
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 528
    const/4 v2, 0x1

    .line 529
    .local v2, "noneSet":Z
    if-eqz p2, :cond_3

    .line 530
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 531
    .local v0, "key":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    const/4 v2, 0x0

    goto :goto_0

    .line 536
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 540
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getDefaultEnabledForDeviceOwner()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_DEVICE_OWNERS:Ljava/util/Set;

    return-object v0
.end method

.method public static getDefaultEnabledForManagedProfiles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    return-object v0
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "in"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static isGlobal(ZLjava/lang/String;)Z
    .locals 1
    .param p0, "isDeviceOwner"    # Z
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 361
    if-eqz p0, :cond_0

    .line 362
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 361
    if-nez v0, :cond_1

    .line 363
    :cond_0
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 361
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .locals 3
    .param p0, "restriction"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const-string/jumbo v0, "UserRestrictionsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown restriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "dest"    # Landroid/os/Bundle;
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 269
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    if-eq p0, p1, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 271
    if-nez p1, :cond_1

    .line 272
    return-void

    :cond_0
    move v2, v4

    .line 270
    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 279
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static mergeAll(Landroid/util/SparseArray;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 287
    const/4 v2, 0x0

    return-object v2

    .line 289
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v1, "result":Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 291
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_1
    return-object v1
.end method

.method public static moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 5
    .param p0, "restrictionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "srcRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    .local p2, "destRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 550
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 551
    .local v2, "key":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 552
    .local v0, "from":Landroid/os/Bundle;
    invoke-static {v0, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 553
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 555
    .local v3, "to":Landroid/os/Bundle;
    if-nez v3, :cond_0

    .line 556
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "to":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 557
    .restart local v3    # "to":Landroid/os/Bundle;
    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 559
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 561
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 563
    add-int/lit8 v1, v1, -0x1

    .line 549
    .end local v3    # "to":Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    .end local v0    # "from":Landroid/os/Bundle;
    .end local v2    # "key":I
    :cond_2
    return-void
.end method

.method private static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 63
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    array-length v2, p0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 64
    return-object v0

    .line 63
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "in"    # Landroid/os/Bundle;

    .prologue
    .line 242
    if-eqz p0, :cond_0

    .end local p0    # "in":Landroid/os/Bundle;
    :goto_0
    return-object p0

    .restart local p0    # "in":Landroid/os/Bundle;
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "in":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "result":Landroid/os/Bundle;
    invoke-static {p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 235
    return-object v0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 223
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 224
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 227
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 230
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static varargs restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "oldRestrictions"    # Landroid/os/Bundle;
    .param p1, "newRestrictions"    # Landroid/os/Bundle;
    .param p2, "restrictions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 577
    array-length v1, p2

    if-nez v1, :cond_0

    .line 578
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    return v1

    .line 580
    :cond_0
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p2, v1

    .line 581
    .local v0, "restriction":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 582
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 581
    if-eq v4, v5, :cond_1

    .line 583
    const/4 v1, 0x1

    return v1

    .line 580
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v0    # "restriction":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method public static sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "isDeviceOwner"    # Z
    .param p2, "cameraRestrictionScope"    # I
    .param p3, "global"    # Landroid/os/Bundle;
    .param p4, "local"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 337
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 338
    const-string/jumbo v2, "no_camera"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 343
    :cond_1
    return-void

    .line 339
    :cond_2
    if-ne p2, v3, :cond_0

    .line 340
    const-string/jumbo v2, "no_camera"

    invoke-virtual {p4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 349
    invoke-static {p1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 350
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 352
    :cond_5
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 355
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public static writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 202
    if-nez p1, :cond_0

    .line 203
    return-void

    .line 206
    :cond_0
    invoke-interface {p0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    const-string/jumbo v2, "true"

    invoke-interface {p0, v5, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 217
    :cond_2
    const-string/jumbo v2, "UserRestrictionsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown user restriction detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {p0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    return-void
.end method
