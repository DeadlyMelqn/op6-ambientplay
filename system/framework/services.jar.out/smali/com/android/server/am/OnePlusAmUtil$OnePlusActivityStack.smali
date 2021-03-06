.class public Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;
.super Ljava/lang/Object;
.source "OnePlusAmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusActivityStack"
.end annotation


# instance fields
.field private mActivityStack:Lcom/android/server/am/ActivityStack;

.field protected mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 1
    .param p1, "as"    # Lcom/android/server/am/ActivityStack;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    .line 177
    new-instance v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    .line 179
    return-void
.end method


# virtual methods
.method public final handleEvaluateGameMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->handleEvaluateGameMode(Z)V

    .line 209
    return-void
.end method

.method public final handleEvaluateReadMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->handleEvaluateReadMode(Z)V

    .line 205
    return-void
.end method

.method public final resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->startEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p3}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityRecord;)V

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public final startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z
    .locals 2
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "pauseImmediately"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->stopEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public final updateDisableSceneScreenEffectFlag(I)V
    .locals 1
    .param p1, "toDisableMode"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateDisableSceneScreenEffectFlag(I)V

    .line 213
    return-void
.end method
