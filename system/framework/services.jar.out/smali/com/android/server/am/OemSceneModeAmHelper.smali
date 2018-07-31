.class public final Lcom/android/server/am/OemSceneModeAmHelper;
.super Ljava/lang/Object;
.source "OemSceneModeAmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field private static final IS_SCENE_MODES_FEATURED:Z

.field private static final TAG:Ljava/lang/String; = "OemSceneModeAmHelper"

.field private static sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sOemExSvc:Lcom/oem/os/IOemExService;

.field private static sSceneChangingMonitorStarted:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x19

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableSceneButtonLockFeature(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "toDisable"    # Z

    .prologue
    .line 335
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 340
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "temp_disable_scene_button_lcok_feature"

    if-eqz p1, :cond_1

    const-string/jumbo v1, "1"

    .line 341
    :goto_0
    const/4 v3, -0x2

    .line 339
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 342
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OemSceneModeAmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] updateSceneButtonLockFeature toDisable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 340
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 363
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v1, :cond_1

    .line 364
    const-string/jumbo v1, "OemSceneModeAmHelper"

    const-string/jumbo v2, "[scene] end switching user"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :try_start_0
    sget-object v1, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v1, :cond_0

    .line 368
    const-string/jumbo v1, "OEMExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 367
    invoke-static {v1}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->isKeyguardDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    sget-object v1, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oem/os/IOemExService;->monitorSceneChanging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OemSceneModeAmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static handleShowOrOccludedChanged(Lcom/android/server/am/KeyguardController;ZZLcom/android/server/am/ActivityStackSupervisor;)V
    .locals 6
    .param p0, "kc"    # Lcom/android/server/am/KeyguardController;
    .param p1, "keyguardShowing"    # Z
    .param p2, "occluded"    # Z
    .param p3, "acss"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    const/4 v5, 0x0

    .line 253
    sget-boolean v2, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v2, :cond_2

    .line 254
    const-string/jumbo v2, "OemSceneModeAmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[scene] handleShowOrOccludedChanged showing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 255
    const-string/jumbo v4, ", occluded "

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz p1, :cond_3

    move v1, p2

    .line 259
    :goto_0
    sget-boolean v2, Lcom/android/server/am/OemSceneModeAmHelper;->sSceneChangingMonitorStarted:Z

    if-eq v1, v2, :cond_1

    .line 261
    :try_start_0
    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v2, :cond_0

    .line 263
    const-string/jumbo v2, "OEMExService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 262
    invoke-static {v2}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    .line 266
    :cond_0
    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-eqz p1, :cond_4

    .end local p2    # "occluded":Z
    :goto_1
    invoke-interface {v2, p2}, Lcom/oem/os/IOemExService;->monitorSceneChanging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_1
    :goto_2
    sput-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->sSceneChangingMonitorStarted:Z

    .line 276
    invoke-virtual {p0, v5}, Lcom/android/server/am/KeyguardController;->isKeyguardShowing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    invoke-virtual {p3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

    iget-object v2, v2, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v2, v5}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateSceneScreenEffectFlag(I)V

    .line 281
    :cond_2
    return-void

    .line 258
    .restart local p2    # "occluded":Z
    :cond_3
    const/4 v1, 0x1

    .local v1, "toMonitorSceneChanging":Z
    goto :goto_0

    .line 266
    .end local v1    # "toMonitorSceneChanging":Z
    :cond_4
    const/4 p2, 0x1

    goto :goto_1

    .line 267
    .end local p2    # "occluded":Z
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "OemSceneModeAmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static shouldIgnoreSceneEvaluation(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)Z
    .locals 11
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 285
    sget-object v6, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 287
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    .line 290
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, "permissionIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 293
    const/high16 v7, 0x110000

    .line 291
    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 294
    .local v5, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 295
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 296
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    sget-object v6, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "ri$iterator":Ljava/util/Iterator;
    :cond_0
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_2

    .line 302
    const-string/jumbo v6, "OemSceneModeAmHelper"

    const-string/jumbo v7, "[scene] scene evaluation ignore list: "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v6, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 304
    sget-object v6, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cn$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 305
    .local v0, "cn":Landroid/content/ComponentName;
    const-string/jumbo v6, "OemSceneModeAmHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[scene]    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 308
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "cn$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v6, "OemSceneModeAmHelper"

    const-string/jumbo v7, "[scene]     Empty"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v2    # "permissionIntent":Landroid/content/Intent;
    .end local v5    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    if-nez p1, :cond_3

    .line 315
    return v9

    .line 319
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 320
    return v10

    .line 324
    :cond_4
    sget-object v6, Lcom/android/server/am/OemSceneModeAmHelper;->sIgnoreSceneEvaluationApps:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "cn$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 325
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_5

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 326
    return v10

    .line 330
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_6
    return v9
.end method

.method public static startUserSwitching()V
    .locals 4

    .prologue
    .line 347
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->IS_SCENE_MODES_FEATURED:Z

    if-eqz v1, :cond_1

    .line 348
    const-string/jumbo v1, "OemSceneModeAmHelper"

    const-string/jumbo v2, "[scene] start switching user"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :try_start_0
    sget-object v1, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v1, :cond_0

    .line 352
    const-string/jumbo v1, "OEMExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 351
    invoke-static {v1}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    .line 355
    :cond_0
    sget-object v1, Lcom/android/server/am/OemSceneModeAmHelper;->sOemExSvc:Lcom/oem/os/IOemExService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oem/os/IOemExService;->monitorSceneChanging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 356
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 357
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OemSceneModeAmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
