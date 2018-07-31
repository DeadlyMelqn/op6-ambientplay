.class public Lcom/android/server/am/OnePlusAppControlModeService;
.super Ljava/lang/Object;
.source "OnePlusAppControlModeService.java"


# static fields
.field private static final APPCONTROL_PKG_BLACKLIST:I = 0x0

.field private static final APPCONTROL_PKG_WHITELIST:I = 0x1

.field public static DEBUG_ONEPLUS:Z = false

.field private static final OEM_DOZE_CLOSE:I = 0x0

.field private static final OEM_DOZE_MODE_POLICY_KEY:Ljava/lang/String; = "doze_mode_policy"

.field private static final OEM_DOZE_OPEN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "OnePlusAppBootManager"

.field private static sDeviceIdleService:Landroid/os/IDeviceIdleController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllAppControlModes(I)Ljava/util/List;
    .locals 20
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    sget-boolean v17, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v17, :cond_0

    .line 66
    const-string/jumbo v17, "OnePlusAppBootManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AppControl#getAllAppControlModes # mode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    if-nez p0, :cond_8

    .line 69
    const/4 v14, 0x0

    .line 71
    .local v14, "idleArray":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/os/IDeviceIdleController;->getUserPowerWhitelist()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 75
    .end local v14    # "idleArray":[Ljava/lang/String;
    :goto_0
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/OnePlusAppBootManager;->getAllAppBootModes(I)Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "bootList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppBootMode;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v10, "controlList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppControlMode;>;"
    if-eqz v14, :cond_2

    array-length v0, v14

    move/from16 v16, v0

    .line 78
    .local v16, "idlesz":I
    :goto_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "bt$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/appboot/AppBootMode;

    .line 79
    .local v6, "bt":Lcom/oneplus/appboot/AppBootMode;
    const/4 v15, 0x0

    .line 80
    .local v15, "idleWhite":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    .line 81
    iget-object v0, v6, Lcom/oneplus/appboot/AppBootMode;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v18, v14, v13

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 82
    const/4 v15, 0x1

    .line 87
    :cond_1
    iget v0, v6, Lcom/oneplus/appboot/AppBootMode;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v4, 0x1

    .line 88
    .local v4, "appBootWhite":Z
    :goto_4
    iget-object v0, v6, Lcom/oneplus/appboot/AppBootMode;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v15}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlListMergedBlack(Ljava/lang/String;ZZ)Z

    move-result v12

    .line 89
    .local v12, "finalBlack":Z
    new-instance v18, Lcom/oneplus/appboot/AppControlMode;

    iget-object v0, v6, Lcom/oneplus/appboot/AppBootMode;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 90
    if-eqz v12, :cond_5

    const/16 v17, 0x0

    .line 89
    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/appboot/AppControlMode;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    .end local v4    # "appBootWhite":Z
    .end local v5    # "bootList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppBootMode;>;"
    .end local v6    # "bt":Lcom/oneplus/appboot/AppBootMode;
    .end local v7    # "bt$iterator":Ljava/util/Iterator;
    .end local v10    # "controlList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppControlMode;>;"
    .end local v12    # "finalBlack":Z
    .end local v13    # "i":I
    .end local v15    # "idleWhite":Z
    .end local v16    # "idlesz":I
    .restart local v14    # "idleArray":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 73
    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v14    # "idleArray":[Ljava/lang/String;
    .restart local v5    # "bootList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppBootMode;>;"
    .restart local v10    # "controlList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppControlMode;>;"
    :cond_2
    const/16 v16, 0x0

    .restart local v16    # "idlesz":I
    goto :goto_1

    .line 80
    .restart local v6    # "bt":Lcom/oneplus/appboot/AppBootMode;
    .restart local v7    # "bt$iterator":Ljava/util/Iterator;
    .restart local v13    # "i":I
    .restart local v15    # "idleWhite":Z
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 87
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "appBootWhite":Z
    goto :goto_4

    .line 90
    .restart local v12    # "finalBlack":Z
    :cond_5
    const/16 v17, 0x1

    goto :goto_5

    .line 93
    .end local v4    # "appBootWhite":Z
    .end local v6    # "bt":Lcom/oneplus/appboot/AppBootMode;
    .end local v12    # "finalBlack":Z
    .end local v13    # "i":I
    .end local v15    # "idleWhite":Z
    :cond_6
    sget-boolean v17, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v17, :cond_7

    .line 94
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "c$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/appboot/AppControlMode;

    .line 95
    .local v8, "c":Lcom/oneplus/appboot/AppControlMode;
    const-string/jumbo v17, "OnePlusAppBootManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AppControl#getAllAppControlModes # c="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 98
    .end local v8    # "c":Lcom/oneplus/appboot/AppControlMode;
    .end local v9    # "c$iterator":Ljava/util/Iterator;
    :cond_7
    return-object v10

    .line 100
    .end local v5    # "bootList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppBootMode;>;"
    .end local v7    # "bt$iterator":Ljava/util/Iterator;
    .end local v10    # "controlList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppControlMode;>;"
    .end local v16    # "idlesz":I
    :cond_8
    const/16 v17, 0x0

    return-object v17
.end method

.method public static getAppBootState()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootState()Z

    move-result v0

    return v0
.end method

.method private static getAppControlListMergedBlack(Ljava/lang/String;ZZ)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "appBootValue"    # Z
    .param p2, "deviceIdleValue"    # Z

    .prologue
    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "finalBlack":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 54
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 55
    const-string/jumbo v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AppControl#getAppControlListMergedBlack # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    const-string/jumbo v3, ", appBootValue="

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 57
    const-string/jumbo v3, ", deviceIdleValue="

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    const-string/jumbo v3, ",finalBlack="

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    return v0
.end method

.method public static getAppControlMode(Ljava/lang/String;I)I
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 105
    const/4 v4, -0x1

    .line 106
    .local v4, "ret":I
    if-nez p1, :cond_0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v5

    invoke-interface {v5, p0}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v3

    .line 110
    .local v3, "idleWhite":Z
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootMode(Ljava/lang/String;)I

    move-result v5

    .line 109
    const/4 v6, 0x1

    if-ne v6, v5, :cond_2

    const/4 v0, 0x1

    .line 111
    .local v0, "appBootWhite":Z
    :goto_0
    invoke-static {p0, v0, v3}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlListMergedBlack(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 112
    .local v2, "finalBlack":Z
    if-eqz v2, :cond_3

    .line 113
    const/4 v4, 0x0

    .line 122
    .end local v0    # "appBootWhite":Z
    .end local v2    # "finalBlack":Z
    .end local v3    # "idleWhite":Z
    :cond_0
    :goto_1
    sget-boolean v5, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_1

    .line 123
    const-string/jumbo v5, "OnePlusAppBootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AppControl#getAppControlMode # packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    return v4

    .line 109
    .restart local v3    # "idleWhite":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "appBootWhite":Z
    goto :goto_0

    .line 115
    .restart local v2    # "finalBlack":Z
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "appBootWhite":Z
    .end local v2    # "finalBlack":Z
    .end local v3    # "idleWhite":Z
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 119
    const/4 v4, -0x2

    goto :goto_1
.end method

.method public static getAppControlState(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v7, 0x1

    .line 163
    sget-boolean v4, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_0

    .line 164
    const-string/jumbo v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AppControl#getAppControlState # mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    const/4 v3, -0x1

    .line 167
    .local v3, "ret":I
    if-nez p1, :cond_5

    .line 168
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppBootState()Z

    move-result v0

    .line 169
    .local v0, "appboot":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 170
    const-string/jumbo v5, "doze_mode_policy"

    .line 169
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v1, 0x1

    .line 172
    .local v1, "doze":Z
    :goto_0
    if-eq v0, v1, :cond_3

    .line 173
    const/4 v3, 0x1

    .line 174
    invoke-static {p0, p1, v3}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlState(Landroid/content/Context;II)I

    move-result v2

    .line 175
    .local v2, "result":I
    if-gez v2, :cond_1

    .line 176
    const-string/jumbo v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AppControl# setAppControlState error # result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",on="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "appboot":Z
    .end local v1    # "doze":Z
    .end local v2    # "result":I
    :cond_1
    :goto_1
    return v3

    .line 169
    .restart local v0    # "appboot":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "doze":Z
    goto :goto_0

    .line 178
    :cond_3
    if-eqz v0, :cond_4

    .line 179
    const/4 v3, 0x1

    goto :goto_1

    .line 181
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 183
    .end local v0    # "appboot":Z
    .end local v1    # "doze":Z
    :cond_5
    if-ne p1, v7, :cond_7

    .line 184
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppBootState()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 185
    :cond_7
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 187
    const-string/jumbo v5, "doze_mode_policy"

    .line 186
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 187
    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getIdleController()Landroid/os/IDeviceIdleController;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    return-object v0

    .line 233
    :cond_0
    const-string/jumbo v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 234
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    return-object v0
.end method

.method public static setAppControlMode(Ljava/lang/String;II)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 130
    sget-boolean v2, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 131
    const-string/jumbo v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AppControl#setAppControlMode # packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "ret":I
    if-nez p1, :cond_3

    .line 135
    if-nez p2, :cond_1

    .line 136
    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v2

    .line 137
    const/4 v3, 0x2

    .line 136
    invoke-virtual {v2, p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootMode(Ljava/lang/String;I)I

    .line 139
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 142
    const/4 v1, -0x2

    goto :goto_0

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    if-ne p2, v5, :cond_2

    .line 145
    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v2

    invoke-virtual {v2, p0, v5}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootMode(Ljava/lang/String;I)I

    .line 148
    :try_start_1
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    const/4 v1, -0x2

    goto :goto_0

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 158
    :cond_3
    return v1
.end method

.method public static setAppControlState(Landroid/content/Context;II)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "on"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 194
    sget-boolean v3, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    .line 195
    const-string/jumbo v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AppControl#setAppControlState # mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", on="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    const/4 v0, -0x1

    .line 198
    .local v0, "ret":I
    if-nez p1, :cond_4

    .line 199
    if-ne p2, v1, :cond_2

    .line 200
    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "doze_mode_policy"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    const/4 v0, 0x1

    .line 217
    :cond_1
    :goto_0
    return v0

    .line 203
    :cond_2
    if-nez p2, :cond_3

    .line 204
    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "doze_mode_policy"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_3
    const/4 v0, -0x2

    goto :goto_0

    .line 210
    :cond_4
    if-ne p1, v1, :cond_6

    .line 211
    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v3

    if-ne p2, v1, :cond_5

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 212
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    move v1, v2

    .line 211
    goto :goto_1

    .line 213
    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "doze_mode_policy"

    if-ne p2, v1, :cond_7

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    move v1, v2

    .line 214
    goto :goto_2
.end method
