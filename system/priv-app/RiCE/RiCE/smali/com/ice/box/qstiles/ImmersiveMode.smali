.class public Lcom/ice/box/qstiles/ImmersiveMode;
.super Landroid/service/quicksettings/TileService;
.source "ImmersiveMode.java"


# instance fields
.field private mListening:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct/range {p0 .. p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/ice/box/qstiles/ImmersiveMode;->mListening:Z

    return-void
.end method

.method private returnlabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 31
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x72d87165

    if-eq v0, v1, :cond_1

    const v1, 0x17ca44ef

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "immersive.full=*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "immersive.full="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 38
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/qstiles/ImmersiveMode;->returnlabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const p1, 0x7f10006c

    .line 35
    invoke-virtual {p0, p1}, Lcom/ice/box/qstiles/ImmersiveMode;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f100066

    .line 33
    invoke-virtual {p0, p1}, Lcom/ice/box/qstiles/ImmersiveMode;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toggle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x72d87165

    if-eq v0, v1, :cond_1

    const v1, 0x17ca44ef

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "immersive.full=*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "immersive.full="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 27
    invoke-static/range {p0 .. p0}, Lcom/ice/box/qstiles/ImmersiveMode;->toggle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "immersive.full="

    .line 24
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "immersive.full=*"

    .line 22
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTile()V
    .locals 3

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/ImmersiveMode;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/ImmersiveMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "policy_control"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "immersive.full="

    .line 107
    :cond_0
    invoke-direct {p0, v1}, Lcom/ice/box/qstiles/ImmersiveMode;->returnlabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-virtual {v0, p0}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    const-string p0, "immersive.full=*"

    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 117
    :goto_0
    invoke-virtual {v0, p0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 118
    invoke-virtual/range {v0 .. v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/ImmersiveMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "immersive.full="

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/qstiles/ImmersiveMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "policy_control"

    .line 82
    invoke-static/range {v0 .. v0}, Lcom/ice/box/qstiles/ImmersiveMode;->toggle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ICEDEBUG"

    const-string v1, "Fail to set policy_control from QS Tile"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/qstiles/ImmersiveMode;->updateTile()V

    .line 89
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onClick()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 43
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    return-void
.end method

.method public onStartListening()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/ice/box/qstiles/ImmersiveMode;->mListening:Z

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/qstiles/ImmersiveMode;->updateTile()V

    .line 61
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    return-void
.end method

.method public onStopListening()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/ice/box/qstiles/ImmersiveMode;->mListening:Z

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/qstiles/ImmersiveMode;->updateTile()V

    .line 68
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public onTileAdded()V
    .locals 0

    .line 49
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    .line 54
    invoke-super/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method
