.class public Lcom/ice/box/qstiles/Hbm;
.super Landroid/service/quicksettings/TileService;
.source "Hbm.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private updateTile()V
    .locals 5

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/Hbm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/Hbm;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    const-string v2, "cat /sys/devices/platform/soc/ae00000.qcom,mdss_mdp/drm/card0/card0-DSI-1/hbm"

    .line 79
    invoke-static/range {v2 .. v2}, Lcom/ice/box/helpers/Tools;->readCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isOP6"

    const/4 v4, 0x0

    .line 80
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static/range {v0 .. v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :try_start_0
    const-string v3, "hbm mode = 0"

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct/range {v3 .. v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HBM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f100066

    invoke-virtual {p0, v4}, Lcom/ice/box/qstiles/Hbm;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct/range {v3 .. v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HBM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f10006c

    invoke-virtual {p0, v4}, Lcom/ice/box/qstiles/Hbm;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->rootAccess()Z

    move-result p0

    .line 103
    :cond_1
    invoke-virtual/range {v1 .. v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    const-string v0, "cat /sys/devices/platform/soc/ae00000.qcom,mdss_mdp/drm/card0/card0-DSI-1/hbm"

    .line 56
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/Tools;->readCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/Hbm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ICEDEBUG"

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct/range {v3 .. v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "hbm mode = 0"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "echo 5 > /sys/devices/platform/soc/ae00000.qcom,mdss_mdp/drm/card0/card0-DSI-1/hbm"

    .line 62
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hbm_turnon"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const-string v0, "echo 0 > /sys/devices/platform/soc/ae00000.qcom,mdss_mdp/drm/card0/card0-DSI-1/hbm"

    .line 68
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hbm_turnon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/qstiles/Hbm;->updateTile()V

    .line 73
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
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/qstiles/Hbm;->updateTile()V

    .line 45
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    return-void
.end method

.method public onStopListening()V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/qstiles/Hbm;->updateTile()V

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
