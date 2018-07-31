.class public Lcom/ice/box/qstiles/HbmAuto;
.super Landroid/service/quicksettings/TileService;
.source "HbmAuto.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private updateTile()V
    .locals 8

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/HbmAuto;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hbm_autostart"

    const/4 v2, 0x0

    .line 85
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "isOP6"

    .line 86
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static/range {v3 .. v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "licenseRating"

    .line 87
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/HbmAuto;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v4

    .line 91
    invoke-virtual/range {v1 .. v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HBM Auto "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f10006c

    invoke-virtual {p0, v6}, Lcom/ice/box/qstiles/HbmAuto;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct/range {v6 .. v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HBM Auto "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f100066

    invoke-virtual {p0, v7}, Lcom/ice/box/qstiles/HbmAuto;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v6 .. v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    invoke-virtual/range {v3 .. v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->rootAccess()Z

    move-result p0

    if-nez p0, :cond_1

    if-ge v0, v5, :cond_1

    move v1, v2

    .line 105
    :cond_1
    invoke-virtual {v4, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 106
    invoke-virtual/range {v4 .. v4}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 8

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/HbmAuto;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hbm_autostart"

    const/4 v2, 0x0

    .line 57
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "licenseRating"

    .line 58
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "ICEDEBUG"

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual/range {v1 .. v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 63
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "hbm_autostart"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "hbm_autostart"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface/range {v4 .. v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ge v3, v5, :cond_1

    .line 67
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "hbm_autostart"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface/range {v3 .. v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    :cond_1
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/HbmAuto;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v7, Lcom/ice/box/services/LightSensorService;

    invoke-direct {v3, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "enabled"

    const-string v7, "hbm_autostart"

    .line 71
    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    invoke-virtual/range {v1 .. v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "sticky"

    .line 73
    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/HbmAuto;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    const-string v0, "sticky"

    .line 76
    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/HbmAuto;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/qstiles/HbmAuto;->updateTile()V

    .line 80
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onClick()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 25
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    return-void
.end method

.method public onStartListening()V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/qstiles/HbmAuto;->updateTile()V

    .line 45
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    return-void
.end method

.method public onStopListening()V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/qstiles/HbmAuto;->updateTile()V

    .line 51
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public onTileAdded()V
    .locals 0

    .line 32
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    .line 39
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method
