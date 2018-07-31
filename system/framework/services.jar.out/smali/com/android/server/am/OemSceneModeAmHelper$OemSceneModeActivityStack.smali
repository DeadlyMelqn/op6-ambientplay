.class public Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;
.super Ljava/lang/Object;
.source "OemSceneModeAmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneModeAmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemSceneModeActivityStack"
.end annotation


# static fields
.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_ALL:I = 0x1

.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_IGNORE:I = -0x1

.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_NONE:I = 0x0

.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_READ:I = 0x2

.field public static final ARG_SCENE_MODE_OFF:I = 0x0

.field public static final ARG_SCENE_MODE_ON:I = 0x1

.field private static final EVALUATE_GAME_MODE_MSG:I = 0x6d

.field private static final EVALUATE_MODE_DELAYED:I = 0x1f4

.field private static final EVALUATE_READ_MODE_MSG:I = 0x6c

.field private static final OP_CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.camera"

.field private static final OP_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final TAG:Ljava/lang/String; = "OemSceneModeActivityStack"

.field private static final UPDATE_SCREEN_SCREEN_EFFECT_DISABLED_MSG:I = 0x6e

.field private static final VALUE_FORCE_OFF:Ljava/lang/String; = "force-off"

.field private static final VALUE_FORCE_ON:Ljava/lang/String; = "force-on"

.field private static sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

.field private static sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;


# instance fields
.field private mActivityStack:Lcom/android/server/am/ActivityStack;

.field private mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 70
    sput-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0
    .param p1, "acs"    # Lcom/android/server/am/ActivityStack;
    .param p2, "acss"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    .line 77
    iput-object p2, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 78
    return-void
.end method

.method private isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r1"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r2"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 218
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 219
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleEvaluateGameMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "game_mode_status_auto"

    if-eqz p1, :cond_1

    .line 237
    const-string/jumbo v1, "force-on"

    :goto_0
    const/4 v3, -0x2

    .line 235
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 238
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] handleEvaluateGameMode enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void

    .line 237
    :cond_1
    const-string/jumbo v1, "force-off"

    goto :goto_0
.end method

.method public handleEvaluateReadMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "rading_mode_status_auto"

    if-eqz p1, :cond_1

    .line 228
    const-string/jumbo v1, "force-on"

    :goto_0
    const/4 v3, -0x2

    .line 226
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 229
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] handleEvaluateReadMode enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    return-void

    .line 228
    :cond_1
    const-string/jumbo v1, "force-off"

    goto :goto_0
.end method

.method public startEvaluateGameMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v3, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v6, 0x44

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 150
    .local v1, "isGameModeApp":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, "game_msg":Landroid/os/Message;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 152
    iget-object v2, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 153
    sget-boolean v2, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "OemSceneModeActivityStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[scene] evaluateGameModes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isGameModeApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    return-void

    .line 148
    .end local v0    # "game_msg":Landroid/os/Message;
    .end local v1    # "isGameModeApp":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isGameModeApp":Z
    goto :goto_0
.end method

.method public startEvaluateReadingMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v3, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3, p2}, Lcom/android/server/am/OemSceneModeAmHelper;->shouldIgnoreSceneEvaluation(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    sget-boolean v2, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OemSceneModeActivityStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[scene] Ignore the read mode evaluation for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v6, 0x43

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x1

    .line 165
    .local v0, "isReadModeApp":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 166
    .local v1, "read_msg":Landroid/os/Message;
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 167
    iget-object v2, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 168
    sget-boolean v2, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "OemSceneModeActivityStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[scene] evaluateReadModes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isReadModeApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    return-void

    .line 163
    .end local v0    # "isReadModeApp":Z
    .end local v1    # "read_msg":Landroid/os/Message;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isReadModeApp":Z
    goto :goto_0
.end method

.method public startEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 172
    invoke-static {}, Lcom/android/server/am/OemSceneModeAmHelper;->-get0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    if-nez p2, :cond_1

    .line 178
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/am/KeyguardController;->isKeyguardShowing(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OemSceneModeActivityStack"

    const-string/jumbo v1, "[scene] Ignore scene evaluation when lock screen showing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    return-void

    .line 180
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_4
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "OemSceneModeActivityStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[scene] resume from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    const-string/jumbo v2, ", proactive paused activity: "

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string/jumbo v2, ", ever evalated activity: "

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    sget-object v2, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 189
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "OemSceneModeActivityStack"

    const-string/jumbo v2, "[scene] Ignore scene evaluation while screen off"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v1

    .line 188
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 191
    return-void

    :cond_7
    monitor-exit v1

    .line 188
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 196
    if-eq p1, p2, :cond_9

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    .line 196
    if-eqz v0, :cond_9

    .line 200
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p1, v0, :cond_9

    .line 201
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "OemSceneModeActivityStack"

    const-string/jumbo v1, "[scene] Jump to the same application as last one, don\'t evaluate mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_8
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 206
    :cond_9
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    sget-object v1, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, v1, :cond_b

    .line 207
    sget-object v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    .line 206
    if-eqz v0, :cond_b

    .line 208
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "OemSceneModeActivityStack"

    const-string/jumbo v1, "[scene] Activity evaluated, don\'t evaluate mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_a
    return-void

    .line 212
    :cond_b
    sput-object p2, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->startEvaluateGameMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->startEvaluateReadingMode(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 215
    return-void
.end method

.method public stopEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "fromActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "toActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/16 v5, 0x6d

    const/16 v4, 0x6c

    const/4 v3, 0x0

    .line 115
    invoke-static {}, Lcom/android/server/am/OemSceneModeAmHelper;->-get0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OemSceneModeActivityStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[scene] pause from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 125
    sput-object p1, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 131
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->isSamePackageAndUid(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    sget-boolean v0, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OemSceneModeActivityStack"

    const-string/jumbo v1, "[scene] Don\'t ignore the scene evaluation for quickly activity transition inside app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    return-void

    .line 127
    :cond_3
    sput-object v3, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sProactivePausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    sput-object v3, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    iget-object v0, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    sput-object v3, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->sSceneEvaluatedActivity:Lcom/android/server/am/ActivityRecord;

    .line 144
    :cond_6
    return-void
.end method

.method public updateDisableSceneScreenEffectFlag(I)V
    .locals 4
    .param p1, "toDisableMode"    # I

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "temp_disable_scene_screen_effect"

    .line 247
    const/4 v2, -0x2

    .line 245
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 248
    sget-boolean v1, Lcom/android/server/am/OemSceneModeAmHelper;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OemSceneModeActivityStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] updateDisableSceneScreenEffectFlag toDisableMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    return-void
.end method

.method public updateSceneScreenEffectFlag(I)V
    .locals 3
    .param p1, "disableScreenEffectMode"    # I

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 110
    iget-object v1, p0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 81
    invoke-static {}, Lcom/android/server/am/OemSceneModeAmHelper;->-get0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    if-nez p1, :cond_1

    .line 87
    return-void

    .line 90
    :cond_1
    const/4 v0, -0x1

    .line 92
    .local v0, "disableScreenEffectMode":I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.oneplus.camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    :cond_2
    const/4 v0, 0x2

    .line 102
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateSceneScreenEffectFlag(I)V

    .line 105
    :cond_3
    return-void

    .line 92
    :cond_4
    const-string/jumbo v2, "com.oneplus.gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    const/4 v0, 0x0

    .line 99
    goto :goto_0
.end method
