.class Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/SaveChosenLockWorkerBase;
.source "OxygenChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OxygenChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mRequestedQuality:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 8

    .prologue
    .line 934
    const/4 v1, 0x0

    .line 935
    .local v1, "result":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    .line 936
    iget v7, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    .line 935
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 938
    iget-boolean v3, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v3, :cond_1

    .line 941
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    iget v5, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v3, v4, v6, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 946
    :goto_0
    if-nez v2, :cond_0

    .line 947
    const-string/jumbo v3, "ChooseLockPassword"

    const-string/jumbo v4, "critical: no token returned for known good password."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "result":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 951
    .local v1, "result":Landroid/content/Intent;
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 954
    .end local v1    # "result":Landroid/content/Intent;
    :cond_1
    return-object v1

    .line 942
    .local v1, "result":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v2, 0x0

    .local v2, "token":[B
    goto :goto_0
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "required"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "chosenPassword"    # Ljava/lang/String;
    .param p7, "currentPassword"    # Ljava/lang/String;
    .param p8, "requestedQuality"    # I
    .param p9, "userId"    # I

    .prologue
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p9

    .line 922
    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    .line 924
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    .line 925
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    .line 926
    move/from16 v0, p8

    iput v0, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    .line 927
    move/from16 v0, p9

    iput v0, p0, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    .line 929
    invoke-virtual {p0}, Lcom/android/settings/OxygenChooseLockPassword$SaveAndFinishWorker;->start()V

    .line 930
    return-void
.end method
