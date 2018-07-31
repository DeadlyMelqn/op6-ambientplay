.class Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdatePreferences"
.end annotation


# instance fields
.field private alwaysOnAppVpnInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private connectedAppVpns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private connectedLegacyVpns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lockdownVpnKey:Ljava/lang/String;

.field private final mSettings:Lcom/android/settings/vpn2/VpnSettings;

.field private vpnApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private vpnProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/android/settings/vpn2/VpnSettings;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnProfiles:Ljava/util/List;

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnApps:Ljava/util/List;

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 255
    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedAppVpns:Ljava/util/Set;

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->alwaysOnAppVpnInfos:Ljava/util/Set;

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    .line 265
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    .line 266
    return-void
.end method


# virtual methods
.method public final appVpns(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;)",
            "Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "vpnApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/vpn2/AppVpnInfo;>;"
    .local p2, "connectedAppVpns":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings/vpn2/AppVpnInfo;>;"
    .local p3, "alwaysOnAppVpnInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings/vpn2/AppVpnInfo;>;"
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnApps:Ljava/util/List;

    .line 279
    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedAppVpns:Ljava/util/Set;

    .line 280
    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->alwaysOnAppVpnInfos:Ljava/util/Set;

    .line 281
    return-object p0
.end method

.method public final legacyVpns(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;
    .locals 0
    .param p3, "lockdownVpnKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "vpnProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    .local p2, "connectedLegacyVpns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/net/LegacyVpnInfo;>;"
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnProfiles:Ljava/util/List;

    .line 271
    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    .line 272
    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 286
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v10}, Lcom/android/settings/vpn2/VpnSettings;->canAddPreferences()Z

    move-result v10

    if-nez v10, :cond_0

    .line 287
    return-void

    .line 291
    :cond_0
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 294
    .local v7, "updates":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v7/preference/Preference;>;"
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnProfiles:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 295
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    const/4 v12, 0x1

    invoke-virtual {v10, v4, v12}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v3

    .line 296
    .local v3, "p":Lcom/android/settings/vpn2/LegacyVpnPreference;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    iget-object v12, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 297
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    iget-object v12, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/net/LegacyVpnInfo;

    iget v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v3, v10}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setState(I)V

    .line 301
    :goto_1
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    iget-object v12, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    :goto_2
    invoke-virtual {v3, v10}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setAlwaysOn(Z)V

    .line 302
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_1
    sget v10, Lcom/android/settings/vpn2/LegacyVpnPreference;->STATE_NONE:I

    invoke-virtual {v3, v10}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setState(I)V

    goto :goto_1

    :cond_2
    move v10, v11

    .line 301
    goto :goto_2

    .line 306
    .end local v3    # "p":Lcom/android/settings/vpn2/LegacyVpnPreference;
    .end local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_3
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "vpn$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/net/LegacyVpnInfo;

    .line 307
    .local v8, "vpn":Lcom/android/internal/net/LegacyVpnInfo;
    new-instance v6, Lcom/android/internal/net/VpnProfile;

    iget-object v10, v8, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-direct {v6, v10}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 308
    .local v6, "stubProfile":Lcom/android/internal/net/VpnProfile;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v10, v6, v11}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v3

    .line 309
    .restart local v3    # "p":Lcom/android/settings/vpn2/LegacyVpnPreference;
    iget v10, v8, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v3, v10}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setState(I)V

    .line 310
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    iget-object v12, v8, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    :goto_4
    invoke-virtual {v3, v10}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setAlwaysOn(Z)V

    .line 311
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move v10, v11

    .line 310
    goto :goto_4

    .line 315
    .end local v3    # "p":Lcom/android/settings/vpn2/LegacyVpnPreference;
    .end local v6    # "stubProfile":Lcom/android/internal/net/VpnProfile;
    .end local v8    # "vpn":Lcom/android/internal/net/LegacyVpnInfo;
    :cond_5
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnApps:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/AppVpnInfo;

    .line 316
    .local v0, "app":Lcom/android/settings/vpn2/AppVpnInfo;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v10, v0}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/settings/vpn2/AppVpnInfo;)Lcom/android/settings/vpn2/AppPreference;

    move-result-object v2

    .line 317
    .local v2, "p":Lcom/android/settings/vpn2/AppPreference;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedAppVpns:Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 318
    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Lcom/android/settings/vpn2/AppPreference;->setState(I)V

    .line 322
    :goto_6
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->alwaysOnAppVpnInfos:Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v2, v10}, Lcom/android/settings/vpn2/AppPreference;->setAlwaysOn(Z)V

    .line 323
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 320
    :cond_6
    sget v10, Lcom/android/settings/vpn2/AppPreference;->STATE_DISCONNECTED:I

    invoke-virtual {v2, v10}, Lcom/android/settings/vpn2/AppPreference;->setState(I)V

    goto :goto_6

    .line 327
    .end local v0    # "app":Lcom/android/settings/vpn2/AppVpnInfo;
    .end local v2    # "p":Lcom/android/settings/vpn2/AppPreference;
    :cond_7
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v10, v7}, Lcom/android/settings/vpn2/VpnSettings;->setShownPreferences(Ljava/util/Collection;)V

    .line 328
    return-void
.end method
