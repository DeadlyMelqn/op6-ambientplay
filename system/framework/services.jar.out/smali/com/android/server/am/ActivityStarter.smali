.class Lcom/android/server/am/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# static fields
.field private static final INCALL_PACKAGE:Ljava/lang/String; = "com.android.incallui"

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String;

.field private static final TAG_FOCUS:Ljava/lang/String;

.field private static final TAG_RESULTS:Ljava/lang/String;

.field private static final TAG_USER_LEAVING:Ljava/lang/String;


# instance fields
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private mDoResume:Z

.field private mInTask:Lcom/android/server/am/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private final mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private final mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchBounds:Landroid/graphics/Rect;

.field private mLaunchFlags:I

.field private mLaunchSingleInstance:Z

.field private mLaunchSingleTask:Z

.field private mLaunchSingleTop:Z

.field private mLaunchTaskBehind:Z

.field private mMovedOtherTask:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/am/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field public mPerf:Landroid/util/BoostFramework;

.field private mPowerHintSent:Z

.field private mReuseTask:Lcom/android/server/am/TaskRecord;

.field mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSourceDisplayId:I

.field private mSourceRecord:Lcom/android/server/am/ActivityRecord;

.field private mSourceStack:Lcom/android/server/am/ActivityStack;

.field private mStartActivity:Lcom/android/server/am/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/am/ActivityStack;

.field private mUsingVr2dDisplay:Z

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_RESULTS:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_CONFIGURATION:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_USER_LEAVING:Ljava/lang/String;

    .line 154
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 219
    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 224
    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    .line 228
    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    .line 284
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 285
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 286
    new-instance v0, Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mUsingVr2dDisplay:Z

    .line 288
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 290
    :cond_0
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 2180
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2184
    :goto_0
    return-void

    .line 2182
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .prologue
    const/high16 v1, 0x80000

    .line 2188
    and-int v0, p4, v1

    if-eqz v0, :cond_1

    .line 2189
    if-nez p2, :cond_0

    .line 2188
    if-eqz p3, :cond_1

    .line 2191
    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    const v0, -0x8080001

    .line 2193
    and-int/2addr p4, v0

    .line 2210
    :goto_0
    :pswitch_0
    return p4

    .line 2196
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2200
    :pswitch_1
    or-int/2addr p4, v1

    .line 2201
    goto :goto_0

    .line 2203
    :pswitch_2
    or-int/2addr p4, v1

    .line 2204
    goto :goto_0

    .line 2206
    :pswitch_3
    const v0, -0x8000001

    and-int/2addr p4, v0

    .line 2207
    goto :goto_0

    .line 2196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2290
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2291
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v2, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2293
    .local v2, "focusedStackId":I
    packed-switch v2, :pswitch_data_0

    .line 2313
    :pswitch_0
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isDynamicStack(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2314
    iget v4, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    .line 2317
    :goto_0
    if-eqz v0, :cond_0

    xor-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_0

    .line 2319
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    iget v5, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 2317
    :cond_0
    return v3

    .line 2297
    :pswitch_1
    const/4 v0, 0x1

    .line 2298
    .local v0, "canUseFocusedStack":Z
    goto :goto_0

    .line 2300
    .end local v0    # "canUseFocusedStack":Z
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isAssistantActivity()Z

    move-result v0

    .local v0, "canUseFocusedStack":Z
    goto :goto_0

    .line 2304
    .end local v0    # "canUseFocusedStack":Z
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreen()Z

    move-result v0

    .restart local v0    # "canUseFocusedStack":Z
    goto :goto_0

    .line 2308
    .end local v0    # "canUseFocusedStack":Z
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v0

    .restart local v0    # "canUseFocusedStack":Z
    goto :goto_0

    .line 2313
    .end local v0    # "canUseFocusedStack":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "canUseFocusedStack":Z
    goto :goto_0

    .line 2293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private computeLaunchingTaskFlags()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/4 v4, 0x0

    .line 1527
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1528
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1529
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1530
    .local v2, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 1531
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1532
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Launching into task without base intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1533
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1538
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v3, :cond_3

    .line 1539
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1540
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1541
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trying to launch singleInstance/Task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1542
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1542
    const-string/jumbo v5, " into different task "

    .line 1541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1542
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1544
    :cond_2
    if-eqz v2, :cond_3

    .line 1545
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1546
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Caller with mInTask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1547
    const-string/jumbo v5, " has root "

    .line 1546
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1547
    const-string/jumbo v5, " but target is singleInstance/Task"

    .line 1546
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1553
    :cond_3
    if-nez v2, :cond_6

    .line 1554
    const v1, 0x18082000

    .line 1556
    .local v1, "flagsOfInterest":I
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v4, -0x18082001

    and-int/2addr v3, v4

    .line 1557
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const v5, 0x18082000

    and-int/2addr v4, v5

    .line 1556
    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1558
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1559
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1560
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1572
    .end local v1    # "flagsOfInterest":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1586
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_5

    .line 1587
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_a

    .line 1590
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v3, v6

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_5

    .line 1591
    sget-object v3, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1592
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1591
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1606
    :cond_5
    :goto_2
    return-void

    .line 1565
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_7

    .line 1566
    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_0

    .line 1569
    :cond_7
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_0

    .line 1574
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_8
    iput-object v4, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1580
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_4

    :cond_9
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    .line 1581
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    move-result v3

    .line 1580
    if-eqz v3, :cond_4

    .line 1582
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 1595
    :cond_a
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    .line 1599
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_2

    .line 1600
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v3, :cond_5

    .line 1603
    :cond_c
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_2
.end method

.method private computeSourceStack()V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/4 v2, 0x0

    .line 1609
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_0

    .line 1610
    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1611
    return-void

    .line 1613
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    .line 1614
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1615
    return-void

    .line 1622
    :cond_1
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v5

    if-nez v1, :cond_2

    .line 1623
    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity called from finishing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1624
    const-string/jumbo v4, "; forcing "

    .line 1623
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1624
    const-string/jumbo v4, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    .line 1623
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1624
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1623
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1626
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1632
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1633
    .local v0, "sourceTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1635
    .end local v0    # "sourceTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1636
    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1637
    return-void

    .restart local v0    # "sourceTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    move-object v1, v2

    .line 1633
    goto :goto_0
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "launchFlags"    # I
    .param p5, "aOptions"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v9, 0x1

    .line 2229
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 2230
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, p1, p4, v5, p5}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2231
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_0

    .line 2232
    return-object v2

    .line 2235
    :cond_0
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2236
    :goto_0
    if-eqz v0, :cond_6

    .line 2237
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v6, v0, :cond_4

    .line 2238
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v6, :cond_2

    :cond_1
    sget-object v6, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    .line 2239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "computeStackFocus: Setting focused stack to r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2240
    const-string/jumbo v8, " task="

    .line 2239
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2238
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_2
    :goto_1
    return-object v0

    .line 2235
    :cond_3
    const/4 v0, 0x0

    .local v0, "currentStack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    .line 2242
    .end local v0    # "currentStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v6, :cond_2

    :cond_5
    sget-object v6, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    .line 2243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "computeStackFocus: Focused stack already="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2244
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2243
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2242
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2249
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2250
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v6, :cond_8

    :cond_7
    sget-object v6, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    .line 2251
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "computeStackFocus: Have a focused stack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2250
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v6

    .line 2255
    :cond_9
    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    if-eqz v6, :cond_c

    .line 2257
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    invoke-virtual {v6, v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2258
    if-nez v2, :cond_c

    .line 2260
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v6, :cond_a

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v6, :cond_b

    :cond_a
    sget-object v6, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    .line 2261
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "computeStackFocus: Can\'t launch on mSourceDisplayId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2262
    const-string/jumbo v8, ", looking on all displays."

    .line 2261
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2260
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_b
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    invoke-virtual {v6, p1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2266
    :cond_c
    if-nez v2, :cond_11

    .line 2268
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v6, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 2269
    .local v1, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_2
    if-ltz v4, :cond_10

    .line 2270
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2271
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    iget v6, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->isDynamicStack(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2272
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v6, :cond_d

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v6, :cond_e

    :cond_d
    sget-object v6, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    .line 2273
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "computeStackFocus: Setting focused stack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2272
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_e
    return-object v2

    .line 2269
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2278
    :cond_10
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    move-result v3

    .line 2281
    .local v3, "stackId":I
    :goto_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v3, v9, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2283
    .end local v1    # "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v3    # "stackId":I
    .end local v4    # "stackNdx":I
    :cond_11
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v6, :cond_12

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v6, :cond_13

    :cond_12
    sget-object v6, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "computeStackFocus: New stack r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2284
    const-string/jumbo v8, " stackId="

    .line 2283
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2284
    iget v8, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2283
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_13
    return-object v2

    .line 2279
    .restart local v1    # "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v4    # "stackNdx":I
    :cond_14
    if-eqz p3, :cond_15

    const/4 v3, 0x2

    .restart local v3    # "stackId":I
    goto :goto_3

    .line 2280
    .end local v3    # "stackId":I
    :cond_15
    const/4 v3, 0x1

    .restart local v3    # "stackId":I
    goto :goto_3
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 13
    .param p1, "auxiliaryResponse"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "verificationBundle"    # Landroid/os/Bundle;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    .line 710
    iget-boolean v0, p1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 717
    :cond_0
    const-string/jumbo v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    .line 718
    iget-object v2, p1, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 719
    iget-object v7, p1, Landroid/content/pm/AuxiliaryResolveInfo;->packageName:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/AuxiliaryResolveInfo;->splitName:Ljava/lang/String;

    .line 720
    iget-object v9, p1, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    iget v10, p1, Landroid/content/pm/AuxiliaryResolveInfo;->versionCode:I

    .line 721
    iget-object v11, p1, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    iget-boolean v12, p1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    move-object v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 716
    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1994
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    .line 1995
    return-void

    .line 1998
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const/16 v1, 0x7533

    invoke-static {v1, p1, v0}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1999
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2000
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1999
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 2002
    return-void
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2325
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_0

    .line 2326
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    .line 2331
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2332
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v5

    .line 2334
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2335
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    .line 2337
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isAssistantActivity()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2338
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    .line 2342
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    .line 2345
    .local v2, "launchDisplayId":I
    :goto_0
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v3

    .line 2347
    .local v3, "launchStackId":I
    :goto_1
    if-eq v3, v8, :cond_6

    if-eq v2, v8, :cond_6

    .line 2348
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 2349
    const-string/jumbo v6, "Stack and display id can\'t be set at the same time."

    .line 2348
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2342
    .end local v2    # "launchDisplayId":I
    .end local v3    # "launchStackId":I
    :cond_4
    const/4 v2, -0x1

    .restart local v2    # "launchDisplayId":I
    goto :goto_0

    .line 2345
    :cond_5
    const/4 v3, -0x1

    .restart local v3    # "launchStackId":I
    goto :goto_1

    .line 2352
    :cond_6
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/am/ActivityStarter;->isValidLaunchStackId(IILcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2353
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v3, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    .line 2355
    :cond_7
    if-ne v3, v9, :cond_8

    .line 2358
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v7, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    .line 2360
    :cond_8
    if-eq v2, v8, :cond_9

    .line 2362
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    .line 2366
    :cond_9
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mUsingVr2dDisplay:Z

    if-eqz v5, :cond_b

    .line 2367
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    invoke-virtual {v5, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2368
    .local v0, "as":Lcom/android/server/am/ActivityStack;
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_a

    .line 2369
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Launch stack for app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2370
    const-string/jumbo v7, ", on virtual display stack:"

    .line 2369
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2370
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2369
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :cond_a
    return-object v0

    .line 2375
    .end local v0    # "as":Lcom/android/server/am/ActivityStack;
    :cond_b
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_c

    .line 2376
    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    if-eqz v5, :cond_d

    .line 2377
    :cond_c
    return-object v6

    .line 2383
    :cond_d
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2385
    .local v4, "parentStack":Lcom/android/server/am/ActivityStack;
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v4, v5, :cond_f

    .line 2387
    return-object v4

    .line 2383
    .end local v4    # "parentStack":Lcom/android/server/am/ActivityStack;
    :cond_e
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .restart local v4    # "parentStack":Lcom/android/server/am/ActivityStack;
    goto :goto_2

    .line 2389
    :cond_f
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-ne p3, v5, :cond_10

    .line 2392
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v5

    .line 2395
    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isDockedStack()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2398
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v7, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    .line 2404
    :cond_11
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2405
    .local v1, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_12

    .line 2406
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v5

    if-nez v5, :cond_12

    .line 2408
    return-object v6

    .line 2410
    :cond_12
    return-object v1
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1649
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 1650
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-nez v4, :cond_3

    .line 1649
    :cond_0
    const/4 v1, 0x1

    .line 1655
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    and-int/2addr v1, v3

    .line 1656
    .local v1, "putIntoExistingTask":Z
    const/4 v0, 0x0

    .line 1657
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 1658
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 1659
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1676
    .end local v0    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    :goto_1
    return-object v0

    .line 1651
    .end local v1    # "putIntoExistingTask":Z
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 1649
    if-nez v4, :cond_0

    .line 1651
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .restart local v1    # "putIntoExistingTask":Z
    goto :goto_0

    .line 1659
    .restart local v0    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1660
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    if-eqz v1, :cond_2

    .line 1661
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-eqz v3, :cond_6

    .line 1664
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1665
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    .line 1664
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_1

    .line 1666
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_7

    .line 1669
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1670
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    xor-int/lit8 v6, v6, 0x1

    .line 1669
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_1

    .line 1673
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_1
.end method

.method private getSourceDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I
    .locals 4
    .param p1, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "startingActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1687
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 1688
    return v3

    .line 1692
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v1, Lcom/android/server/am/ActivityManagerService;->mVr2dDisplayId:I

    .line 1693
    .local v0, "displayId":I
    if-eq v0, v2, :cond_2

    .line 1694
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_1

    .line 1695
    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSourceDisplayId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mUsingVr2dDisplay:Z

    .line 1698
    return v0

    .line 1701
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    .line 1703
    :goto_0
    if-eq v0, v2, :cond_4

    .line 1704
    return v0

    .line 1701
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 1706
    :cond_4
    return v3
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 2467
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 2468
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2467
    :cond_0
    return v0
.end method

.method private maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2567
    if-nez p1, :cond_0

    .line 2568
    return-object v1

    .line 2569
    :cond_0
    const/4 v1, -0x2

    if-eq p2, v1, :cond_1

    .line 2570
    const-string/jumbo v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2569
    if-eqz v1, :cond_1

    .line 2571
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2573
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2574
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2575
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2578
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_1
    return-object p1
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 241
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 242
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 243
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 244
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 246
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 247
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 248
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 249
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 250
    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 252
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    .line 254
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 255
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 256
    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 257
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 258
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    .line 260
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 261
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 262
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 264
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 265
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 266
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 268
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 269
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    .line 270
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 271
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 272
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 273
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 275
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 276
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 278
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mUsingVr2dDisplay:Z

    .line 280
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 281
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    .prologue
    .line 1933
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1938
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 1939
    return-void

    .line 1936
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_0
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1509
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_1

    .line 1510
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1511
    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1516
    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1518
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 1517
    const/4 v1, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1520
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v6, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1522
    :cond_0
    return-void

    .line 1510
    :cond_1
    const/4 v0, 0x0

    .local v0, "sourceStack":Lcom/android/server/am/ActivityStack;
    goto :goto_0
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 1408
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->reset()V

    .line 1410
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1411
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1412
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1413
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1414
    iput-object p6, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1415
    iput-object p7, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1416
    iput-object p8, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1418
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/ActivityStarter;->getSourceDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    .line 1420
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStarter;->getOverrideBounds(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1422
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 1423
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 1424
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1426
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 1425
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1427
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_e

    .line 1428
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    xor-int/lit8 v3, v3, 0x1

    .line 1427
    if-eqz v3, :cond_e

    .line 1428
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    xor-int/lit8 v3, v3, 0x1

    .line 1427
    if-eqz v3, :cond_e

    .line 1429
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    .line 1427
    :goto_3
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1431
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 1433
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_0

    .line 1434
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1439
    :cond_0
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 1440
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v3, :cond_1

    .line 1441
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1442
    :cond_1
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x8000000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1448
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v3, v5

    if-nez v3, :cond_f

    const/4 v3, 0x1

    :goto_4
    iput-boolean v3, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1449
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/am/ActivityStarter;->TAG_USER_LEAVING:Ljava/lang/String;

    .line 1450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity() => mUserLeaving="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1449
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_3
    iput-boolean p4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1456
    if-eqz p4, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 1457
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1458
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1461
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 1462
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v3

    .line 1461
    if-eqz v3, :cond_6

    .line 1463
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    .line 1464
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1465
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1466
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1467
    :goto_5
    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_6

    .line 1471
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1472
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1477
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    move-object v3, p1

    :goto_6
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1479
    iput-object p3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1484
    if-eqz p3, :cond_7

    iget-boolean v3, p3, Lcom/android/server/am/TaskRecord;->inRecents:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    .line 1485
    sget-object v3, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting activity in task not in recents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1489
    :cond_7
    iput p5, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1493
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_9

    .line 1494
    move-object v0, p6

    .line 1495
    .local v0, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez p6, :cond_8

    .line 1496
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1497
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1496
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1499
    :cond_8
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1501
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1505
    .end local v0    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_9
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1506
    return-void

    .line 1422
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1423
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1424
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1429
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1427
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1448
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1466
    .restart local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_10
    const/4 v2, 0x0

    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    goto :goto_5

    .line 1477
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_11
    const/4 v3, 0x0

    goto :goto_6

    .line 1505
    :cond_12
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 14
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1716
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1717
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1722
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 1723
    .local v10, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v10, :cond_9

    .line 1724
    const/4 v9, 0x0

    .line 1726
    :goto_0
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    .line 1727
    :goto_1
    if-eqz v12, :cond_6

    .line 1728
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v12, v0, :cond_0

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eq v12, v0, :cond_6

    .line 1729
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1727
    if-eqz v0, :cond_6

    .line 1730
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1731
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1732
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-ne v0, v2, :cond_6

    .line 1734
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    .line 1735
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 1737
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    .line 1746
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v2, 0x10008000

    and-int/2addr v0, v2

    .line 1747
    const v2, 0x10008000

    .line 1746
    if-ne v0, v2, :cond_b

    const/4 v13, 0x1

    .line 1748
    .local v13, "willClearTask":Z
    :goto_2
    if-nez v13, :cond_5

    .line 1750
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1749
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 1751
    .local v11, "launchStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1752
    .local v1, "intentTask":Lcom/android/server/am/TaskRecord;
    if-eqz v11, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-ne v11, v0, :cond_c

    .line 1756
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1757
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "bringingFoundTaskToFront"

    .line 1756
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 1796
    :cond_4
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1800
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1801
    const/4 v3, 0x1

    .line 1800
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1803
    .end local v1    # "intentTask":Lcom/android/server/am/TaskRecord;
    .end local v11    # "launchStack":Lcom/android/server/am/ActivityStack;
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1806
    .end local v13    # "willClearTask":Z
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_8

    .line 1807
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_TASKS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bring to front target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1808
    const-string/jumbo v3, " from "

    .line 1807
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "intentActivityFound"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1812
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 1813
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1812
    const/4 v4, -0x1

    .line 1813
    const/4 v5, 0x0

    .line 1812
    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;III)V

    .line 1816
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    .line 1817
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1724
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .local v9, "curTop":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_0

    .line 1726
    .end local v9    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_a
    const/4 v12, 0x0

    .local v12, "topTask":Lcom/android/server/am/TaskRecord;
    goto/16 :goto_1

    .line 1746
    .end local v12    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "willClearTask":Z
    goto/16 :goto_2

    .line 1759
    .restart local v1    # "intentTask":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "launchStack":Lcom/android/server/am/ActivityStack;
    :cond_c
    iget v0, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    .line 1760
    iget v0, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 1761
    :cond_d
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e

    .line 1764
    iget v2, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1766
    const-string/jumbo v7, "launchToSide"

    .line 1764
    const/4 v3, 0x1

    .line 1765
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1764
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    .line 1776
    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto/16 :goto_3

    .line 1772
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1773
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1774
    const-string/jumbo v5, "bringToFrontInsteadOfAdjacentLaunch"

    .line 1772
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_4

    .line 1777
    :cond_f
    iget v0, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v0, v2, :cond_10

    .line 1781
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v3, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1783
    const-string/jumbo v8, "reparentToDisplay"

    .line 1781
    const/4 v4, 0x1

    .line 1782
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 1781
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    .line 1784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto/16 :goto_3

    .line 1785
    :cond_10
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    if-nez v0, :cond_4

    .line 1786
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1791
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v3, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1793
    const-string/jumbo v8, "reparentingHome"

    .line 1791
    const/4 v4, 0x1

    .line 1792
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 1791
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    .line 1794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto/16 :goto_3

    .line 1819
    .end local v1    # "intentTask":Lcom/android/server/am/TaskRecord;
    .end local v11    # "launchStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "willClearTask":Z
    :cond_11
    return-object p1
.end method

.method private setTaskFromInTask()I
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 2103
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2104
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    const/16 v0, 0x65

    return v0

    .line 2108
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2112
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 2113
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_3

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2114
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v0, v2, :cond_3

    .line 2115
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 2116
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 2115
    if-nez v0, :cond_1

    .line 2116
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 2115
    if-eqz v0, :cond_3

    .line 2117
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2118
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "inTaskToFront"

    .line 2117
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2119
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2122
    return v7

    .line 2124
    :cond_2
    invoke-direct {p0, v11}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2125
    const/4 v0, 0x3

    return v0

    .line 2129
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_4

    .line 2130
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2131
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "inTaskToFront"

    .line 2130
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2134
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2135
    const/4 v0, 0x2

    return v0

    .line 2138
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    .line 2139
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2140
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    move-result v1

    .line 2141
    .local v1, "stackId":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 2142
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 2143
    const-string/jumbo v6, "inTaskToFront"

    move v2, v7

    move v3, v7

    move v5, v7

    .line 2142
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    .line 2144
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    .line 2145
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2147
    :cond_5
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2148
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    const/4 v6, -0x1

    move v3, v7

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 2152
    .end local v1    # "stackId":I
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2153
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v10, "inTaskToFront"

    .line 2152
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2155
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTaskFromInTask"

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2156
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_TASKS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting new activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2157
    const-string/jumbo v3, " in explicit task "

    .line 2156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2157
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 2156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_7
    return v4
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const v1, 0x10008000

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1853
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1864
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 1865
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 1866
    iput-object v6, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1867
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1872
    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    .line 1930
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_0
    return-void

    .line 1873
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 1874
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 1873
    if-nez v0, :cond_2

    .line 1874
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1873
    if-eqz v0, :cond_3

    .line 1875
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1876
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1875
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 1877
    .local v7, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_0

    .line 1881
    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1884
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1887
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1888
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 1889
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1892
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1893
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v0, p0

    .line 1892
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1894
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1895
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, "startActivityUnchecked"

    .line 1894
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    goto :goto_0

    .line 1898
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1903
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    if-eqz v0, :cond_6

    .line 1904
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1903
    if-eqz v0, :cond_6

    .line 1905
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_5

    .line 1906
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1908
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 1909
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1912
    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1913
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_0

    .line 1915
    :cond_7
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 1920
    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1921
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_0

    .line 1922
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_0

    .line 1928
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)I
    .locals 9
    .param p1, "taskToAffiliate"    # Lcom/android/server/am/TaskRecord;
    .param p2, "preferredLaunchStackId"    # I
    .param p3, "topStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 1944
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x1

    move-object v0, p0

    .line 1943
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1949
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_6

    .line 1950
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1951
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v1

    .line 1952
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1953
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1954
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v7, v7, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    .line 1950
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZI)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 1955
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v0, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {p0, v8, v0}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 1956
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1958
    .local v1, "stackId":I
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1959
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1960
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 1959
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 1965
    .end local v1    # "stackId":I
    :cond_0
    :goto_2
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_TASKS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting new activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1966
    const-string/jumbo v3, " in new task "

    .line 1965
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1966
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 1965
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    .line 1972
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 1975
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1976
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/16 v0, 0x65

    return v0

    .line 1952
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto/16 :goto_0

    .line 1953
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 1962
    .restart local v1    # "stackId":I
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_2

    .line 1968
    .end local v1    # "stackId":I
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    goto :goto_3

    .line 1980
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    if-nez v0, :cond_9

    .line 1984
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1985
    const/4 v3, -0x1

    if-eq p2, v3, :cond_8

    iget-object p3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1984
    .end local p3    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_8
    invoke-direct {p0, v0, v2, p3}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1987
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_a

    .line 1988
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "reuseOrNewTask"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1990
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private setTaskFromSourceRecord()I
    .locals 14

    .prologue
    .line 2005
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2006
    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    const/16 v1, 0x65

    return v1

    .line 2009
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2010
    .local v8, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_1

    .line 2011
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2012
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v3, 0x1081

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v2

    .line 2011
    iput v2, v1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 2014
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2015
    .local v0, "sourceTask":Lcom/android/server/am/TaskRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 2020
    .local v9, "sourceStack":Lcom/android/server/am/ActivityStack;
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v10, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 2022
    .local v10, "targetDisplayId":I
    :goto_0
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v1, v0, :cond_8

    .line 2023
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v10}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    xor-int/lit8 v7, v1, 0x1

    .line 2024
    :goto_1
    if-eqz v7, :cond_3

    .line 2025
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 2026
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2025
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2029
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_2

    iget v1, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v1, :cond_2

    .line 2031
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2032
    iget v2, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2031
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2034
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_3

    .line 2037
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2038
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v3, -0x1

    .line 2037
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2042
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_9

    .line 2043
    iput-object v9, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2049
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 2050
    .local v13, "topTask":Lcom/android/server/am/TaskRecord;
    if-eq v13, v0, :cond_a

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    .line 2051
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2052
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v6, "sourceTaskToFront"

    move-object v2, v0

    .line 2051
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2057
    :cond_5
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_b

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 2060
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 2061
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 2062
    if-eqz v12, :cond_d

    .line 2063
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    const/16 v3, 0x7533

    invoke-static {v3, v1, v2}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2064
    invoke-direct {p0, v12}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2066
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2067
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_6

    .line 2068
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2070
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2071
    const/4 v1, 0x3

    return v1

    .line 2021
    .end local v10    # "targetDisplayId":I
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    iget v10, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .restart local v10    # "targetDisplayId":I
    goto/16 :goto_0

    .line 2022
    :cond_8
    const/4 v7, 0x1

    .local v7, "moveStackAllowed":Z
    goto/16 :goto_1

    .line 2044
    .end local v7    # "moveStackAllowed":Z
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v1, v9, :cond_4

    .line 2045
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2046
    const-string/jumbo v6, "launchToSide"

    .line 2045
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2046
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2045
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    goto :goto_2

    .line 2053
    .restart local v13    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_5

    .line 2054
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "sourceStackToFront"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_3

    .line 2073
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_d

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 2077
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 2078
    .restart local v12    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_d

    .line 2079
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 2080
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v11, v12}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2081
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2082
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/16 v2, 0x7533

    invoke-static {v2, v1, v11}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2083
    invoke-direct {p0, v12}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2084
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2085
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_c

    .line 2086
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2088
    :cond_c
    const/4 v1, 0x3

    return v1

    .line 2094
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_d
    const-string/jumbo v1, "setTaskFromSourceRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2095
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG_TASKS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting new activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2096
    const-string/jumbo v3, " in existing task "

    .line 2095
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2096
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 2095
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2096
    const-string/jumbo v3, " from source "

    .line 2095
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2096
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2095
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 2163
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 2164
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2163
    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2165
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 2169
    .local v12, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 2172
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    :goto_0
    const-string/jumbo v0, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v13, v0}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2173
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 2174
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_TASKS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting new activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2175
    const-string/jumbo v2, " in new guessed "

    .line 2174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2175
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_1
    return-void

    .line 2169
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2170
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v5

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2171
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v10, 0x1

    move-object v8, v3

    move-object v9, v3

    .line 2169
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZI)Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_0
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 53
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Landroid/app/ActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 331
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v5, :cond_1

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " startActivityLocked # aInfo = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", callingPackage="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p14

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 333
    if-eqz p5, :cond_0

    .line 334
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v5

    move-object/from16 v0, p5

    move-object/from16 v1, p14

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 335
    const-string/jumbo v5, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "forbid start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 336
    const-string/jumbo v8, " (pid="

    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 336
    const-string/jumbo v8, " uid="

    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p13

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 336
    const-string/jumbo v8, ")"

    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/16 v5, -0x5e

    return v5

    .line 340
    :cond_0
    const-string/jumbo v5, "OnePlusAppBootManager"

    const-string/jumbo v7, "# startActivityLocked # aInfo = null"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 349
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    .line 350
    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 351
    const-string/jumbo v7, "startActivityLocked"

    .line 350
    invoke-static {v5, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 355
    :cond_2
    const/16 v44, 0x0

    .line 358
    .local v44, "err":I
    if-eqz p18, :cond_d

    invoke-virtual/range {p18 .. p18}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v51

    .line 360
    :goto_0
    const/16 v21, 0x0

    .line 361
    .local v21, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_3

    .line 362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v21

    .line 363
    .local v21, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v21, :cond_e

    .line 364
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p12, v0

    .line 365
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p13, v0

    .line 374
    .end local v21    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_1
    if-eqz p5, :cond_f

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 379
    .local v11, "userId":I
    :goto_2
    if-eqz p5, :cond_7

    if-eqz p2, :cond_7

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v5, p1

    move/from16 v6, p11

    move-object/from16 v7, p14

    move-object/from16 v8, p5

    move-object/from16 v9, p2

    move/from16 v10, p13

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkParallelAppControl(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 383
    const-string/jumbo v5, "IS_FROM_CHOOSER_ACTIVITY"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 384
    const-string/jumbo v5, "IS_FROM_CHOOSER_ACTIVITY"

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 385
    const-string/jumbo v5, " "

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v41

    .line 386
    .local v41, "chooserIntent":Landroid/content/Intent;
    const-string/jumbo v5, "IS_SHOW_PARALLEL_APP"

    const/4 v7, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    move-object/from16 p2, v41

    .line 388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v5, v0, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p6

    .line 389
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 390
    const/4 v7, 0x0

    .line 389
    move-object/from16 v0, v41

    move-object/from16 v1, p6

    move/from16 v2, p17

    invoke-virtual {v5, v0, v1, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p5

    .line 391
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startActivityLocked: userId("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), aInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 392
    const-string/jumbo v8, ", callingPackage="

    .line 391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p14

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v41    # "chooserIntent":Landroid/content/Intent;
    :cond_4
    invoke-static/range {p13 .. p13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v7, 0x3e7

    if-ne v5, v7, :cond_7

    .line 396
    const-string/jumbo v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 397
    const-string/jumbo v5, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 396
    if-nez v5, :cond_5

    .line 398
    const-string/jumbo v5, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 396
    if-eqz v5, :cond_6

    .line 399
    :cond_5
    const-string/jumbo v5, "output"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v48

    check-cast v48, Landroid/net/Uri;

    .line 400
    .local v48, "output":Landroid/net/Uri;
    if-eqz v48, :cond_6

    .line 401
    const-string/jumbo v5, "output"

    .line 402
    const/16 v7, 0x3e7

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v7}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    .line 401
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 409
    .end local v48    # "output":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v42

    .line 411
    .local v42, "data":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v50

    .line 412
    .local v50, "type":Ljava/lang/String;
    if-eqz v42, :cond_7

    .line 413
    const/16 v5, 0x3e7

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    .end local v42    # "data":Landroid/net/Uri;
    .end local v50    # "type":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    if-nez v5, :cond_8

    .line 423
    const-class v5, Landroid/secrecy/SecrecyManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/secrecy/SecrecyManagerInternal;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    .line 425
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    if-eqz v5, :cond_9

    .line 426
    const-string/jumbo v5, "sys.oem.decrypt"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 425
    if-eqz v5, :cond_9

    .line 427
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    move-object/from16 v0, p5

    move-object/from16 v1, p14

    move/from16 v2, p13

    move/from16 v3, p12

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/secrecy/SecrecyManagerInternal;->isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v5

    .line 425
    if-eqz v5, :cond_9

    .line 429
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is isInEncryptedAppList "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v44, 0x64

    .line 434
    :cond_9
    if-nez v44, :cond_a

    .line 435
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "START u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v10, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 442
    const-string/jumbo v8, "} from uid "

    .line 435
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p13

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 442
    const-string/jumbo v8, " pid "

    .line 435
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_a
    const/16 v36, 0x0

    .line 447
    .local v36, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    .line 448
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p9, :cond_c

    .line 449
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v36

    .line 450
    .local v36, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v5, :cond_b

    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG_RESULTS:Ljava/lang/String;

    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Will send result to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 450
    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_b
    if-eqz v36, :cond_c

    .line 453
    if-ltz p11, :cond_c

    move-object/from16 v0, v36

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    .line 454
    move-object/from16 v6, v36

    .line 459
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v36    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v46

    .line 461
    .local v46, "launchFlags":I
    const/high16 v5, 0x2000000

    and-int v5, v5, v46

    if-eqz v5, :cond_13

    if-eqz v36, :cond_13

    .line 464
    if-ltz p11, :cond_10

    .line 465
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 466
    const/16 v5, -0x5d

    return v5

    .line 358
    .end local v11    # "userId":I
    .end local v46    # "launchFlags":I
    :cond_d
    const/16 v51, 0x0

    .local v51, "verificationBundle":Landroid/os/Bundle;
    goto/16 :goto_0

    .line 367
    .end local v51    # "verificationBundle":Landroid/os/Bundle;
    .restart local v21    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_e
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to find app for caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 368
    const-string/jumbo v8, " (pid="

    .line 367
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 368
    const-string/jumbo v8, ") when starting: "

    .line 367
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    .line 367
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/16 v44, -0x5e

    goto/16 :goto_1

    .line 374
    .end local v21    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_f
    const/4 v11, 0x0

    .restart local v11    # "userId":I
    goto/16 :goto_2

    .line 468
    .restart local v46    # "launchFlags":I
    :cond_10
    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 469
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_11

    .line 470
    const/4 v6, 0x0

    .line 472
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :cond_11
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p10, v0

    .line 473
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p11, v0

    .line 474
    const/4 v5, 0x0

    move-object/from16 v0, v36

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 475
    if-eqz v6, :cond_12

    .line 476
    move-object/from16 v0, v36

    move-object/from16 v1, p10

    move/from16 v2, p11

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 478
    :cond_12
    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p13

    if-ne v5, v0, :cond_13

    .line 489
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p14, v0

    .line 493
    :cond_13
    if-nez v44, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_14

    .line 496
    const/16 v44, -0x5b

    .line 499
    :cond_14
    if-nez v44, :cond_15

    if-nez p5, :cond_15

    .line 502
    const/16 v44, -0x5c

    .line 505
    :cond_15
    if-nez v44, :cond_16

    if-eqz v36, :cond_16

    .line 506
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_16

    .line 511
    const/high16 v5, 0x10000000

    and-int v5, v5, v46

    if-nez v5, :cond_16

    .line 512
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v7, :cond_16

    .line 514
    :try_start_0
    const-string/jumbo v5, "android.intent.category.VOICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 515
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v5, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 517
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    .line 518
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 517
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    const/16 v44, -0x61

    .line 529
    :cond_16
    :goto_3
    if-nez v44, :cond_17

    if-eqz p7, :cond_17

    .line 533
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v5, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 535
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    .line 536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Activity being started in new voice task does not support: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 535
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 538
    const/16 v44, -0x61

    .line 546
    :cond_17
    :goto_4
    if-nez v6, :cond_19

    const/4 v4, 0x0

    .line 548
    :goto_5
    if-eqz v44, :cond_1a

    .line 549
    if-eqz v6, :cond_18

    .line 551
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p10

    move/from16 v8, p11

    .line 550
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 553
    :cond_18
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 554
    return v44

    .line 522
    :catch_0
    move-exception v43

    .line 523
    .local v43, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failure checking voice capabilities"

    move-object/from16 v0, v43

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    const/16 v44, -0x61

    goto :goto_3

    .line 540
    .end local v43    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v43

    .line 541
    .restart local v43    # "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failure checking voice capabilities"

    move-object/from16 v0, v43

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    const/16 v44, -0x61

    goto :goto_4

    .line 546
    .end local v43    # "e":Landroid/os/RemoteException;
    :cond_19
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .local v4, "resultStack":Lcom/android/server/am/ActivityStack;
    goto :goto_5

    .line 557
    .end local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    move-object/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move-object/from16 v19, p14

    move/from16 v20, p19

    move-object/from16 v22, v6

    move-object/from16 v23, v4

    move-object/from16 v24, p18

    invoke-virtual/range {v12 .. v24}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;)Z

    move-result v5

    xor-int/lit8 v40, v5, 0x1

    .line 560
    .local v40, "abort":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v5, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 561
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v13, p2

    move/from16 v14, p13

    move/from16 v15, p12

    move-object/from16 v16, p4

    .line 560
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    or-int v40, v40, v5

    .line 563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_1b

    .line 567
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v52

    .line 568
    .local v52, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 569
    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 568
    move-object/from16 v0, v52

    invoke-interface {v5, v0, v7}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    or-int v40, v40, v5

    .line 575
    .end local v52    # "watchIntent":Landroid/content/Intent;
    :cond_1b
    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move/from16 v12, p15

    move/from16 v13, p16

    move/from16 v14, p17

    move-object/from16 v15, p14

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object/from16 v13, p2

    move-object/from16 v14, p6

    move-object/from16 v15, p5

    move-object/from16 v16, p4

    move-object/from16 v17, p22

    move/from16 v18, p12

    move/from16 v19, p13

    move-object/from16 v20, p18

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    move-object/from16 p2, v0

    .line 579
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 p6, v0

    .line 580
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p5, v0

    .line 581
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    move-object/from16 p4, v0

    .line 582
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 p22, v0

    .line 583
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    move/from16 p12, v0

    .line 584
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    move/from16 p13, v0

    .line 585
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object/from16 p18, v0

    .line 586
    if-eqz v40, :cond_1e

    .line 587
    if-eqz v6, :cond_1c

    .line 588
    const/4 v5, -0x1

    .line 589
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p10

    move/from16 v8, p11

    .line 588
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 593
    :cond_1c
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 596
    if-eqz p14, :cond_1d

    const-string/jumbo v5, "com.android.systemui"

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 597
    if-eqz p2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 598
    const-string/jumbo v5, "com.android.systemui.pip.phone.PipMenuActivity"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 596
    if-eqz v5, :cond_1d

    .line 599
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "abort to launch com.android.systemui.pip.phone.PipMenuActivity, return START_CANCELED"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/16 v5, -0x60

    return v5

    .line 570
    :catch_2
    move-exception v43

    .line 571
    .restart local v43    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto/16 :goto_6

    .line 603
    .end local v43    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/16 v5, 0x66

    return v5

    .line 609
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mPermissionReviewRequired:Z

    if-eqz v5, :cond_20

    if-eqz p5, :cond_20

    .line 610
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    .line 611
    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 610
    invoke-virtual {v5, v7, v11}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 612
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 614
    const/4 v5, 0x1

    new-array v15, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v15, v5

    .line 615
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    aput-object p4, v16, v5

    .line 613
    const/4 v8, 0x2

    .line 614
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 615
    const/high16 v17, 0x50000000

    .line 616
    const/16 v18, 0x0

    move-object/from16 v9, p14

    move/from16 v10, p13

    .line 612
    invoke-virtual/range {v7 .. v18}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v49

    .line 618
    .local v49, "target":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v45

    .line 619
    .local v45, "flags":I
    new-instance v47, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.REVIEW_PERMISSIONS"

    move-object/from16 v0, v47

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v47, "newIntent":Landroid/content/Intent;
    const/high16 v5, 0x800000

    .line 620
    or-int v5, v5, v45

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 622
    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string/jumbo v5, "android.intent.extra.INTENT"

    new-instance v7, Landroid/content/IntentSender;

    move-object/from16 v0, v49

    invoke-direct {v7, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 624
    if-eqz v6, :cond_1f

    .line 625
    const-string/jumbo v5, "android.intent.extra.RESULT_NEEDED"

    const/4 v7, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    :cond_1f
    move-object/from16 p2, v47

    .line 629
    const/16 p4, 0x0

    .line 630
    .local p4, "resolvedType":Ljava/lang/String;
    move/from16 p13, p16

    .line 631
    move/from16 p12, p15

    .line 633
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v47

    move-object/from16 v1, p4

    invoke-virtual {v5, v0, v1, v11}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p6

    .line 634
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 635
    const/4 v7, 0x0

    .line 634
    move-object/from16 v0, v47

    move-object/from16 v1, p6

    move/from16 v2, p17

    invoke-virtual {v5, v0, v1, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p5

    .line 637
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v5, :cond_20

    .line 638
    sget-object v7, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "START u"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " {"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 639
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 638
    move-object/from16 v0, v47

    invoke-virtual {v0, v8, v9, v10, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 639
    const-string/jumbo v8, "} from uid "

    .line 638
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 639
    const-string/jumbo v8, " on display "

    .line 638
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 640
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v5, :cond_25

    .line 641
    const/4 v5, 0x0

    .line 638
    :goto_7
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v45    # "flags":I
    .end local v47    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p4    # "resolvedType":Ljava/lang/String;
    :cond_20
    if-eqz p6, :cond_21

    move-object/from16 v0, p6

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v5, :cond_21

    .line 651
    move-object/from16 v0, p6

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object/from16 v12, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p14

    move-object/from16 v16, v51

    move-object/from16 v17, p4

    move/from16 v18, v11

    invoke-direct/range {v12 .. v18}, Lcom/android/server/am/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 653
    const/16 p4, 0x0

    .line 654
    .restart local p4    # "resolvedType":Ljava/lang/String;
    move/from16 p13, p16

    .line 655
    move/from16 p12, p15

    .line 657
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move/from16 v2, p17

    invoke-virtual {v5, v0, v1, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p5

    .line 660
    .end local p4    # "resolvedType":Ljava/lang/String;
    :cond_21
    new-instance v19, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    .line 661
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    .line 662
    if-eqz p7, :cond_26

    const/16 v33, 0x1

    .line 663
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v34, v0

    move/from16 v22, p12

    move/from16 v23, p13

    move-object/from16 v24, p14

    move-object/from16 v25, p2

    move-object/from16 v26, p4

    move-object/from16 v27, p5

    move-object/from16 v29, v6

    move-object/from16 v30, p10

    move/from16 v31, p11

    move/from16 v32, p20

    move-object/from16 v35, p18

    .line 660
    invoke-direct/range {v19 .. v36}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    .line 664
    .local v19, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p21, :cond_22

    .line 665
    const/4 v5, 0x0

    aput-object v19, p21, v5

    .line 668
    :cond_22
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v5, :cond_23

    if-eqz v36, :cond_23

    .line 671
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 674
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v38, v0

    .line 675
    .local v38, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p7, :cond_27

    move-object/from16 v0, v38

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_24

    .line 676
    move-object/from16 v0, v38

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p13

    if-eq v5, v0, :cond_27

    .line 677
    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 678
    const-string/jumbo v17, "Activity start"

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p15

    move/from16 v16, p16

    .line 677
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 679
    new-instance v34, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v35, v19

    move/from16 v37, p17

    move-object/from16 v39, v21

    invoke-direct/range {v34 .. v39}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    .line 681
    .local v34, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 683
    const/16 v5, 0x64

    return v5

    .line 641
    .end local v19    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v34    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v38    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v45    # "flags":I
    .restart local v47    # "newIntent":Landroid/content/Intent;
    .restart local v49    # "target":Landroid/content/IIntentSender;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto/16 :goto_7

    .line 662
    .end local v45    # "flags":I
    .end local v47    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p4    # "resolvedType":Ljava/lang/String;
    :cond_26
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 687
    .restart local v19    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v5, :cond_28

    .line 693
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 698
    :goto_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V

    .line 700
    const/16 v28, 0x1

    move-object/from16 v22, p0

    move-object/from16 v23, v19

    move-object/from16 v24, v36

    move-object/from16 v25, p7

    move-object/from16 v26, p8

    move/from16 v27, p17

    move-object/from16 v29, p18

    move-object/from16 v30, p22

    move-object/from16 v31, p21

    invoke-direct/range {v22 .. v31}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v5

    return v5

    .line 695
    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_9
.end method

.method private startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1135
    const/16 v2, -0x60

    .line 1137
    .local v2, "result":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1138
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1144
    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1151
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1152
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object v0, p0

    move-object v1, p1

    .line 1151
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V

    .line 1154
    return v2

    .line 1140
    :catchall_0
    move-exception v0

    .line 1144
    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1145
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1146
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    .line 1148
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1140
    throw v0
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 28
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .prologue
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p6

    move/from16 v9, p5

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 1163
    invoke-direct/range {v4 .. v12}, Lcom/android/server/am/ActivityStarter;->setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1166
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1168
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    .line 1170
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 1175
    .local v21, "reusedActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v19

    .line 1177
    .local v19, "preferredLaunchStackId":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v18

    .line 1179
    .local v18, "preferredLaunchDisplayId":I
    :goto_1
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1180
    new-instance v14, Ljava/lang/Exception;

    const-string/jumbo v5, "reusedActivity.getTask is null"

    invoke-direct {v14, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1183
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 1188
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 1189
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v8, 0x10008000

    and-int/2addr v5, v8

    .line 1190
    const v8, 0x10008000

    .line 1189
    if-ne v5, v8, :cond_3

    const/4 v5, 0x1

    .line 1188
    :goto_2
    invoke-virtual {v6, v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 1192
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/16 v5, 0x65

    return v5

    .line 1175
    .end local v18    # "preferredLaunchDisplayId":I
    .end local v19    # "preferredLaunchStackId":I
    :cond_1
    const/16 v19, -0x1

    .restart local v19    # "preferredLaunchStackId":I
    goto :goto_0

    .line 1177
    :cond_2
    const/16 v18, 0x0

    .restart local v18    # "preferredLaunchDisplayId":I
    goto :goto_1

    .line 1189
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 1196
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1197
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1199
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v5, :cond_6

    .line 1202
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1208
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-nez v5, :cond_7

    .line 1209
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {v5}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v5

    .line 1208
    if-nez v5, :cond_7

    .line 1210
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 1208
    if-nez v5, :cond_7

    .line 1210
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1208
    if-eqz v5, :cond_a

    .line 1211
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v22

    .line 1216
    .local v22, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1217
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1216
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .line 1223
    .local v24, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-nez v5, :cond_8

    .line 1224
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1227
    :cond_8
    if-eqz v24, :cond_a

    .line 1228
    move-object/from16 v0, v24

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v5, :cond_9

    .line 1231
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1233
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1237
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .end local v24    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1239
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 1242
    if-eqz p9, :cond_d

    move-object/from16 v0, p9

    array-length v5, v0

    if-lez v5, :cond_d

    const/4 v5, 0x0

    aget-object v16, p9, v5

    .line 1246
    :goto_3
    if-eqz v16, :cond_c

    move-object/from16 v0, v16

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_b

    move-object/from16 v0, v16

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v5, :cond_c

    .line 1247
    :cond_b
    const/4 v5, 0x0

    aput-object v21, p9, v5

    .line 1250
    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    .line 1254
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1255
    const/4 v5, 0x1

    return v5

    .line 1242
    :cond_d
    const/16 v16, 0x0

    .local v16, "outResult":Lcom/android/server/am/ActivityRecord;
    goto :goto_3

    .line 1257
    .end local v16    # "outResult":Lcom/android/server/am/ActivityRecord;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1259
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_10

    .line 1262
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1263
    if-eqz p9, :cond_f

    move-object/from16 v0, p9

    array-length v5, v0

    if-lez v5, :cond_f

    .line 1264
    const/4 v5, 0x0

    aput-object v21, p9, v5

    .line 1267
    :cond_f
    const/4 v5, 0x2

    return v5

    .line 1271
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v5, :cond_13

    .line 1272
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_12

    .line 1273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1274
    :goto_4
    if-eqz v4, :cond_11

    .line 1275
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1276
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v8, v5, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 1275
    const/4 v5, -0x1

    .line 1276
    const/4 v9, 0x0

    .line 1277
    const/4 v10, 0x0

    .line 1275
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1279
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1280
    const/16 v5, -0x5c

    return v5

    .line 1273
    :cond_12
    const/4 v4, 0x0

    .local v4, "sourceStack":Lcom/android/server/am/ActivityStack;
    goto :goto_4

    .line 1285
    .end local v4    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    .line 1286
    .local v26, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 1287
    .local v25, "topFocused":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .line 1288
    .restart local v24    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v24, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_16

    .line 1289
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1288
    if-eqz v5, :cond_16

    .line 1290
    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v6, :cond_16

    .line 1291
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_16

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_16

    .line 1292
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    if-nez v5, :cond_15

    .line 1293
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 1292
    if-nez v5, :cond_15

    .line 1293
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1294
    :goto_5
    if-eqz v13, :cond_18

    .line 1296
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iput-object v5, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1297
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v5, :cond_14

    .line 1298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1300
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1301
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_17

    .line 1304
    const/4 v5, 0x1

    return v5

    .line 1292
    :cond_15
    const/4 v13, 0x1

    .local v13, "dontStart":Z
    goto :goto_5

    .line 1288
    .end local v13    # "dontStart":Z
    :cond_16
    const/4 v13, 0x0

    .restart local v13    # "dontStart":Z
    goto :goto_5

    .line 1307
    .end local v13    # "dontStart":Z
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 1312
    move-object/from16 v0, v26

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1311
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v5, v6, v0, v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;III)V

    .line 1314
    const/4 v5, 0x3

    return v5

    .line 1317
    :cond_18
    const/4 v15, 0x0

    .line 1318
    .local v15, "newTask":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1a

    .line 1319
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v23

    .line 1322
    :goto_6
    const/16 v20, 0x0

    .line 1323
    .local v20, "result":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1b

    .line 1324
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1b

    .line 1325
    const/4 v15, 0x1

    .line 1326
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 1327
    .local v17, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v5, :cond_19

    .line 1328
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1329
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v7, 0x1081

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v6

    .line 1328
    iput v6, v5, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 1331
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)I

    move-result v20

    .line 1342
    .end local v17    # "packageName":Ljava/lang/String;
    :goto_7
    if-eqz v20, :cond_1e

    .line 1343
    return v20

    .line 1319
    .end local v20    # "result":I
    :cond_1a
    const/16 v23, 0x0

    .local v23, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    goto :goto_6

    .line 1333
    .end local v23    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    .restart local v20    # "result":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1c

    .line 1334
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v20

    goto :goto_7

    .line 1335
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_1d

    .line 1336
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    move-result v20

    goto :goto_7

    .line 1340
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    goto :goto_7

    .line 1346
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1347
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v10, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1346
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1349
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 1348
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1f

    .line 1351
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(Lcom/android/server/am/ActivityRecord;)V

    .line 1353
    :cond_1f
    if-eqz v15, :cond_20

    .line 1354
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1355
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1356
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1355
    const/16 v6, 0x7534

    .line 1354
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1359
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    const/16 v7, 0x7535

    .line 1358
    invoke-static {v7, v5, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 1365
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v7, v25

    move v8, v15

    .line 1364
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1366
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v5, :cond_24

    .line 1368
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 1369
    .local v27, "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1370
    if-eqz v27, :cond_22

    move-object/from16 v0, v27

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v5, :cond_22

    .line 1371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v27

    if-eq v5, v0, :cond_22

    .line 1378
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1397
    .end local v27    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 1400
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1399
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v5, v6, v0, v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;III)V

    .line 1402
    const/4 v5, 0x0

    return v5

    .line 1388
    .restart local v27    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_23

    .line 1389
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v6, "startActivityUnchecked"

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1391
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1392
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1391
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_8

    .line 1395
    .end local v27    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->addRecentActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_8
.end method

.method private updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "launchFlags"    # I
    .param p3, "focusedStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const v1, 0x10004000

    const/4 v2, 0x1

    .line 1824
    and-int v0, p2, v1

    if-ne v0, v1, :cond_0

    .line 1827
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1828
    return-void

    .line 1829
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1831
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1832
    return-void

    .line 1833
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eq p3, v0, :cond_3

    .line 1834
    invoke-virtual {p3}, Lcom/android/server/am/ActivityStack;->isAssistantStack()Z

    move-result v0

    .line 1833
    if-eqz v0, :cond_3

    .line 1836
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1837
    return-void

    .line 1840
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/android/server/am/ActivityStack;->isRecentsStack()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1841
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1842
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1843
    return-void

    .line 1849
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1850
    return-void
.end method

.method private uriHasUserId(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2561
    if-nez p1, :cond_0

    .line 2562
    const/4 v0, 0x0

    return v0

    .line 2563
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method clearPendingActivityLaunchesLocked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2472
    const/4 v0, 0x0

    .line 2474
    .local v0, "didSomething":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "palNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2475
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 2476
    .local v1, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 2477
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2478
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2479
    const/4 v0, 0x1

    .line 2474
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2482
    .end local v1    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return v0
.end method

.method final doPendingActivityLaunchesLocked(Z)V
    .locals 12
    .param p1, "doResume"    # Z

    .prologue
    .line 2214
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2215
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 2216
    .local v11, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    .line 2218
    :goto_1
    :try_start_0
    iget-object v1, v11, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v11, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v5, v11, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 2219
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 2218
    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2220
    :catch_0
    move-exception v10

    .line 2221
    .local v10, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception during pending activity launch pal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2222
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    goto :goto_0

    .line 2216
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    .local v6, "resume":Z
    goto :goto_1

    .line 2225
    .end local v6    # "resume":Z
    .end local v11    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2488
    if-eqz p3, :cond_3

    .line 2489
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 2490
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2489
    if-eqz v1, :cond_3

    .line 2491
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    .line 2492
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2489
    if-eqz v1, :cond_3

    .line 2493
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2489
    if-eqz v1, :cond_3

    .line 2494
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2495
    const-string/jumbo v1, "(nothing)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2496
    return-void

    .line 2500
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2501
    const-string/jumbo v1, "mCurrentUser="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2503
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2504
    const-string/jumbo v1, "mLastStartReason="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2505
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2506
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    const-string/jumbo v1, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2508
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2509
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2510
    const-string/jumbo v1, "mLastStartActivityResult="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2511
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2512
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v1, v3

    .line 2513
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_4

    .line 2514
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2515
    const-string/jumbo v1, "mLastStartActivityRecord:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2518
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    const-string/jumbo v1, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2520
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2521
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v1, v3

    .line 2522
    if-eqz v0, :cond_5

    .line 2523
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2524
    const-string/jumbo v1, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2527
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_6

    .line 2528
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2529
    const-string/jumbo v1, "mStartActivity:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2530
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2532
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_7

    .line 2533
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2534
    const-string/jumbo v1, "mIntent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2535
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2537
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_8

    .line 2538
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    const-string/jumbo v1, "mOptions="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2540
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2542
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2543
    const-string/jumbo v1, "mLaunchSingleTop="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2544
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2545
    const-string/jumbo v1, " mLaunchSingleInstance="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2546
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2547
    const-string/jumbo v1, " mLaunchSingleTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2548
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2549
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2550
    const-string/jumbo v1, "mLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2551
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2552
    const-string/jumbo v1, " mDoResume="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2553
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2554
    const-string/jumbo v1, " mAddingToTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2555
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2556
    return-void
.end method

.method getOverrideBounds(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2443
    const/4 v0, 0x0

    .line 2444
    .local v0, "newBounds":Landroid/graphics/Rect;
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2445
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2446
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v2

    .line 2445
    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2447
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2450
    .end local v0    # "newBounds":Landroid/graphics/Rect;
    :cond_1
    return-object v0
.end method

.method isValidLaunchStackId(IILcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 2417
    packed-switch p1, :pswitch_data_0

    .line 2434
    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->isDynamicStack(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2435
    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0

    .line 2420
    :pswitch_0
    return v3

    .line 2422
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2424
    :pswitch_2
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v0

    return v0

    .line 2426
    :pswitch_3
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreen()Z

    move-result v0

    return v0

    .line 2428
    :pswitch_4
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    return v0

    .line 2430
    :pswitch_5
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v0

    return v0

    .line 2432
    :pswitch_6
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isAssistantActivity()Z

    move-result v0

    return v0

    .line 2437
    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isValidLaunchStackId: Unexpected stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    return v3

    .line 2417
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "prevFocusedStackId"    # I
    .param p4, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const v9, 0x10008000

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 728
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 729
    return-void

    .line 735
    :cond_0
    if-ne p2, v7, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 736
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->reportTaskToFrontNoLaunch(Lcom/android/server/am/ActivityRecord;)V

    .line 739
    :cond_1
    const/4 v4, -0x1

    .line 740
    .local v4, "startedActivityStackId":I
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 741
    .local v1, "currentStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_5

    .line 742
    iget v4, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 747
    :cond_2
    :goto_0
    if-ne v4, v8, :cond_7

    .line 748
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 749
    .local v2, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isVisible()Z

    move-result v3

    .line 750
    :goto_1
    if-eqz v3, :cond_4

    .line 754
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Scheduling recents launch."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    .line 757
    :cond_4
    return-void

    .line 743
    .end local v2    # "homeStack":Lcom/android/server/am/ActivityStack;
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_2

    .line 744
    iget v4, p5, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_0

    .line 749
    .restart local v2    # "homeStack":Lcom/android/server/am/ActivityStack;
    :cond_6
    const/4 v3, 0x0

    .local v3, "homeStackVisible":Z
    goto :goto_1

    .line 760
    .end local v2    # "homeStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "homeStackVisible":Z
    :cond_7
    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_a

    .line 761
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_9

    const/4 v0, 0x1

    .line 762
    .local v0, "clearedTask":Z
    :goto_2
    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    if-eq p2, v7, :cond_8

    .line 763
    if-ne p2, v8, :cond_b

    .line 767
    :cond_8
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    .line 769
    return-void

    .line 761
    .end local v0    # "clearedTask":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "clearedTask":Z
    goto :goto_2

    .line 760
    .end local v0    # "clearedTask":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "clearedTask":Z
    goto :goto_2

    .line 762
    :cond_b
    if-nez v0, :cond_8

    .line 771
    :cond_c
    return-void
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 2458
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2459
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 2460
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_0

    .line 2461
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2458
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2464
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1125
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1127
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    .line 1129
    :cond_0
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "forceSend"    # Z
    .param p2, "targetActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x1

    .line 1106
    move v1, p1

    .line 1108
    .local v1, "sendHint":Z
    if-nez p1, :cond_1

    .line 1111
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1112
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1113
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_3

    .line 1112
    :cond_0
    const/4 v1, 0x1

    .line 1117
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "sendHint":Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_2

    .line 1118
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1119
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    .line 1121
    :cond_2
    return-void

    .line 1114
    .restart local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "sendHint":Z
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    goto :goto_0
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 2454
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2455
    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;ILjava/lang/String;)I
    .locals 34
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "bOptions"    # Landroid/os/Bundle;
    .param p8, "userId"    # I
    .param p9, "reason"    # Ljava/lang/String;

    .prologue
    .line 1029
    if-nez p4, :cond_0

    .line 1030
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "intents is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1032
    :cond_0
    if-nez p5, :cond_1

    .line 1033
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "resolvedTypes is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1035
    :cond_1
    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v4, v0

    if-eq v2, v4, :cond_2

    .line 1036
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "intents are length different than resolvedTypes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1039
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 1040
    .local v19, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 1043
    .local v20, "realCallingUid":I
    if-ltz p2, :cond_3

    .line 1044
    const/16 v16, -0x1

    .line 1051
    .local v16, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 1053
    .local v30, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1054
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v25, v0

    .line 1055
    .local v25, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v28, 0x0

    .end local p6    # "resultTo":Landroid/os/IBinder;
    .local v28, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v28

    if-ge v0, v2, :cond_c

    .line 1056
    aget-object v29, p4, v28

    .line 1057
    .local v29, "intent":Landroid/content/Intent;
    if-nez v29, :cond_5

    move-object/from16 v3, v29

    .line 1055
    .end local v29    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 1045
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v16    # "callingPid":I
    .end local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v28    # "i":I
    .end local v30    # "origId":J
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :cond_3
    if-nez p1, :cond_4

    .line 1046
    move/from16 v16, v19

    .line 1047
    .restart local v16    # "callingPid":I
    move/from16 p2, v20

    goto :goto_0

    .line 1049
    .end local v16    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    const/16 v16, -0x1

    .restart local v16    # "callingPid":I
    goto :goto_0

    .line 1062
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .restart local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "i":I
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v30    # "origId":J
    :cond_5
    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1063
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    .end local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v28    # "i":I
    .end local v29    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1098
    :catchall_1
    move-exception v2

    .line 1099
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1098
    throw v2

    .line 1066
    .restart local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "i":I
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_7

    const/16 v24, 0x1

    .line 1069
    .local v24, "componentSpecified":Z
    :goto_3
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1072
    .end local v29    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    aget-object v4, p5, v28

    const/4 v5, 0x0

    .line 1073
    const/4 v6, 0x0

    move/from16 v7, p8

    .line 1072
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 1075
    .local v9, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v2, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 1077
    if-eqz v9, :cond_8

    .line 1078
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 1080
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1081
    const-string/jumbo v4, "FLAG_CANT_SAVE_STATE not supported here"

    .line 1080
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1066
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "componentSpecified":Z
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v24, 0x0

    .restart local v24    # "componentSpecified":Z
    goto :goto_3

    .line 1085
    .end local v29    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_8
    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_9

    move-object/from16 v2, p7

    .line 1084
    :goto_4
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v22

    .line 1087
    .local v22, "options":Landroid/app/ActivityOptions;
    aget-object v8, p5, v28

    .line 1086
    const/4 v7, 0x0

    .line 1087
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    .line 1089
    const/16 v21, 0x0

    .line 1090
    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v13, p6

    move/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v27, p9

    .line 1086
    invoke-virtual/range {v4 .. v27}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v32

    .line 1091
    .local v32, "res":I
    if-gez v32, :cond_a

    :try_start_4
    monitor-exit v33

    .line 1053
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1099
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1092
    return v32

    .line 1085
    .end local v22    # "options":Landroid/app/ActivityOptions;
    .end local v32    # "res":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 1095
    .restart local v22    # "options":Landroid/app/ActivityOptions;
    .restart local v32    # "res":I
    :cond_a
    const/4 v2, 0x0

    :try_start_5
    aget-object v2, v25, v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    aget-object v2, v25, v2

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local p6    # "resultTo":Landroid/os/IBinder;
    goto/16 :goto_2

    .end local p6    # "resultTo":Landroid/os/IBinder;
    :cond_b
    const/16 p6, 0x0

    .local p6, "resultTo":Landroid/os/IBinder;
    goto/16 :goto_2

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "options":Landroid/app/ActivityOptions;
    .end local v24    # "componentSpecified":Z
    .end local v32    # "res":I
    .end local p6    # "resultTo":Landroid/os/IBinder;
    :cond_c
    :try_start_6
    monitor-exit v33

    .line 1053
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1099
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1102
    const/4 v2, 0x0

    return v2
.end method

.method startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    .locals 25
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Landroid/app/ActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p23, "reason"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Need to specify a reason."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :cond_0
    move-object/from16 v0, p23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move-object/from16 v24, p22

    .line 306
    invoke-direct/range {v2 .. v24}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    .line 312
    if-eqz p21, :cond_1

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, p21, v3

    .line 318
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    const/16 v3, 0x66

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    .locals 56
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/WaitResult;
    .param p14, "globalConfig"    # Landroid/content/res/Configuration;
    .param p15, "bOptions"    # Landroid/os/Bundle;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p19, "reason"    # Ljava/lang/String;

    .prologue
    .line 809
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 810
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "File descriptors passed in Intent"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 812
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 813
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_11

    const/16 v28, 0x1

    .line 816
    .local v28, "componentSpecified":Z
    :goto_0
    new-instance v35, Landroid/content/Intent;

    move-object/from16 v0, v35

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 818
    .local v35, "ephemeralIntent":Landroid/content/Intent;
    new-instance v40, Landroid/content/Intent;

    move-object/from16 v0, v40

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 819
    .end local p4    # "intent":Landroid/content/Intent;
    .local v40, "intent":Landroid/content/Intent;
    if-eqz v28, :cond_1

    .line 820
    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 821
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 819
    if-eqz v4, :cond_1

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    .line 823
    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 822
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v4

    .line 819
    if-eqz v4, :cond_1

    .line 827
    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 828
    const/16 v28, 0x0

    .line 831
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v40

    move-object/from16 v1, p5

    move/from16 v2, p17

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 832
    .local v14, "rInfo":Landroid/content/pm/ResolveInfo;
    if-nez v14, :cond_4

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, p17

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v51

    .line 834
    .local v51, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v51, :cond_12

    invoke-virtual/range {v51 .. v51}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v54

    .line 839
    .local v54, "userManager":Landroid/os/UserManager;
    const/16 v45, 0x0

    .line 840
    .local v45, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v52

    .line 842
    .local v52, "token":J
    :try_start_0
    move-object/from16 v0, v54

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v44

    .line 843
    .local v44, "parent":Landroid/content/pm/UserInfo;
    if-eqz v44, :cond_13

    .line 844
    move-object/from16 v0, v44

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    .line 843
    if-eqz v4, :cond_13

    .line 845
    move-object/from16 v0, v54

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    xor-int/lit8 v45, v4, 0x1

    .line 847
    .end local v45    # "profileLockedAndParentUnlockingOrUnlocked":Z
    :goto_1
    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    if-eqz v45, :cond_2

    .line 850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 851
    const/high16 v5, 0xc0000

    .line 850
    move-object/from16 v0, v40

    move-object/from16 v1, p5

    move/from16 v2, p17

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 857
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->IS_PARALLEL_APP_FEATURED:Z

    if-eqz v4, :cond_4

    .line 858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v38

    .line 860
    .local v38, "identity":J
    const/16 v4, 0x3e7

    move/from16 v0, p17

    if-ne v0, v4, :cond_3

    .line 861
    :try_start_1
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "startActivity resolve intent to owner"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    .line 865
    :cond_3
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v38    # "identity":J
    .end local v44    # "parent":Landroid/content/pm/UserInfo;
    .end local v51    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v52    # "token":J
    .end local v54    # "userManager":Landroid/os/UserManager;
    :cond_4
    move-object/from16 v47, v14

    .line 872
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v47, "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    move/from16 v2, p11

    move-object/from16 v3, p12

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v32

    .line 874
    .local v32, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v26

    .line 875
    .local v26, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v55, v0

    monitor-enter v55

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 876
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    .line 877
    .local v23, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    .line 879
    .local v24, "realCallingUid":I
    if-ltz p2, :cond_14

    .line 880
    const/16 v20, -0x1

    .line 888
    .local v20, "callingPid":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v49, v0

    .line 889
    .local v49, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p14, :cond_17

    .line 890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    .line 889
    :goto_4
    move-object/from16 v0, v49

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 891
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG_CONFIGURATION:Ljava/lang/String;

    .line 892
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting activity when config will change = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    iget-boolean v6, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 891
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v42

    .line 896
    .local v42, "origId":J
    if-eqz v32, :cond_18

    .line 897
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_18

    .line 901
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v36, v0

    .line 903
    .local v36, "heavy":Lcom/android/server/am/ProcessRecord;
    if-eqz v36, :cond_19

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_6

    .line 904
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 903
    if-eqz v4, :cond_1d

    .line 905
    :cond_6
    move/from16 v7, p2

    .line 906
    .local v7, "appCallingUid":I
    if-eqz p1, :cond_7

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v33

    .line 908
    .local v33, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v33, :cond_1a

    .line 909
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 919
    .end local v33    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 920
    const-string/jumbo v6, "android"

    .line 921
    const/4 v5, 0x1

    new-array v12, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v40, v12, v5

    .line 922
    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p5, v13, v5

    .line 920
    const/4 v5, 0x2

    .line 921
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 922
    const/high16 v14, 0x50000000

    .line 923
    const/4 v15, 0x0

    move/from16 v8, p17

    .line 919
    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v50

    .line 925
    .local v50, "target":Landroid/content/IIntentSender;
    new-instance v41, Landroid/content/Intent;

    invoke-direct/range {v41 .. v41}, Landroid/content/Intent;-><init>()V

    .line 926
    .local v41, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_8

    .line 928
    const-string/jumbo v4, "has_result"

    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    :cond_8
    const-string/jumbo v4, "intent"

    .line 931
    new-instance v5, Landroid/content/IntentSender;

    move-object/from16 v0, v50

    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 930
    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 932
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 933
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/am/ActivityRecord;

    .line 934
    .local v37, "hist":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v4, "cur_app"

    .line 935
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 934
    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    const-string/jumbo v4, "cur_task"

    .line 937
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 936
    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    .end local v37    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const-string/jumbo v4, "new_app"

    .line 940
    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 939
    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->getFlags()I

    move-result v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 942
    const-string/jumbo v4, "android"

    .line 943
    const-class v5, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 942
    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 944
    move-object/from16 p4, v41

    .line 945
    .end local v40    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 946
    .local p5, "resolvedType":Ljava/lang/String;
    const/16 p1, 0x0

    .line 947
    .local p1, "caller":Landroid/app/IApplicationThread;
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 948
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 949
    const/16 v28, 0x1

    .line 950
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    move-object/from16 v0, v41

    move/from16 v1, p17

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v14

    .line 951
    .end local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_1b

    :try_start_4
    iget-object v13, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 952
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_5
    if-eqz v13, :cond_a

    .line 953
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p17

    invoke-virtual {v4, v13, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v13

    .line 959
    .end local v7    # "appCallingUid":I
    .end local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v41    # "newIntent":Landroid/content/Intent;
    .end local v50    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    :cond_a
    :goto_6
    const/4 v4, 0x1

    new-array v0, v4, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v29, v0

    .local v29, "outRecord":[Lcom/android/server/am/ActivityRecord;
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, v35

    move-object/from16 v12, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move/from16 v19, p10

    move/from16 v21, p2

    move-object/from16 v22, p3

    move/from16 v25, p11

    move/from16 v27, p16

    move-object/from16 v30, p18

    move-object/from16 v31, p19

    .line 960
    invoke-virtual/range {v8 .. v31}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I

    move-result v48

    .line 967
    .local v48, "res":I
    invoke-static/range {v42 .. v43}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    move-object/from16 v0, v49

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v4, :cond_c

    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.CHANGE_CONFIGURATION"

    .line 975
    const-string/jumbo v6, "updateConfiguration()"

    .line 974
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const/4 v4, 0x0

    move-object/from16 v0, v49

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 977
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG_CONFIGURATION:Ljava/lang/String;

    .line 978
    const-string/jumbo v5, "Updating to new configuration after starting activity."

    .line 977
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z

    .line 982
    :cond_c
    if-eqz p13, :cond_10

    .line 983
    move/from16 v0, v48

    move-object/from16 v1, p13

    iput v0, v1, Landroid/app/WaitResult;->result:I

    .line 984
    if-nez v48, :cond_f

    .line 985
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 988
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 991
    :goto_7
    :try_start_7
    move-object/from16 v0, p13

    iget v4, v0, Landroid/app/WaitResult;->result:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e

    .line 992
    move-object/from16 v0, p13

    iget-boolean v4, v0, Landroid/app/WaitResult;->timeout:Z

    xor-int/lit8 v4, v4, 0x1

    .line 991
    if-eqz v4, :cond_e

    .line 992
    move-object/from16 v0, p13

    iget-object v4, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v4, :cond_d

    .line 993
    :cond_e
    move-object/from16 v0, p13

    iget v4, v0, Landroid/app/WaitResult;->result:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    .line 994
    const/16 v48, 0x2

    .line 997
    :cond_f
    const/4 v4, 0x2

    move/from16 v0, v48

    if-ne v0, v4, :cond_10

    .line 998
    const/4 v4, 0x0

    aget-object v46, v29, v4

    .line 1002
    .local v46, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_1c

    .line 1003
    const/4 v4, 0x0

    move-object/from16 v0, p13

    iput-boolean v4, v0, Landroid/app/WaitResult;->timeout:Z

    .line 1004
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p13

    iput-object v4, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1005
    const-wide/16 v4, 0x0

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/WaitResult;->totalTime:J

    .line 1006
    const-wide/16 v4, 0x0

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/WaitResult;->thisTime:J

    .line 1021
    .end local v46    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    const/4 v5, 0x0

    aget-object v5, v29, v5

    move/from16 v0, v48

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v55

    .line 875
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1022
    return v48

    .line 813
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "callingPid":I
    .end local v23    # "realCallingPid":I
    .end local v24    # "realCallingUid":I
    .end local v26    # "options":Landroid/app/ActivityOptions;
    .end local v28    # "componentSpecified":Z
    .end local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v35    # "ephemeralIntent":Landroid/content/Intent;
    .end local v42    # "origId":J
    .end local v48    # "res":I
    .end local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_11
    const/16 v28, 0x0

    .restart local v28    # "componentSpecified":Z
    goto/16 :goto_0

    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v35    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v40    # "intent":Landroid/content/Intent;
    .restart local v51    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_12
    move-object/from16 v47, v14

    .line 834
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_2

    .line 843
    .end local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v44    # "parent":Landroid/content/pm/UserInfo;
    .restart local v45    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v52    # "token":J
    .restart local v54    # "userManager":Landroid/os/UserManager;
    :cond_13
    const/16 v45, 0x0

    goto/16 :goto_1

    .line 846
    .end local v44    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    .line 847
    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 846
    throw v4

    .line 864
    .end local v45    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v38    # "identity":J
    .restart local v44    # "parent":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v4

    .line 865
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 864
    throw v4

    .line 881
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v38    # "identity":J
    .end local v44    # "parent":Landroid/content/pm/UserInfo;
    .end local v51    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v52    # "token":J
    .end local v54    # "userManager":Landroid/os/UserManager;
    .restart local v23    # "realCallingPid":I
    .restart local v24    # "realCallingUid":I
    .restart local v26    # "options":Landroid/app/ActivityOptions;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_14
    if-nez p1, :cond_15

    .line 882
    move/from16 v20, v23

    .line 883
    .restart local v20    # "callingPid":I
    move/from16 p2, v24

    goto/16 :goto_3

    .line 885
    .end local v20    # "callingPid":I
    :cond_15
    const/16 p2, -0x1

    const/16 v20, -0x1

    .restart local v20    # "callingPid":I
    goto/16 :goto_3

    .line 890
    .restart local v49    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 889
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_4

    .restart local v42    # "origId":J
    :cond_18
    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v47

    .end local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v40

    .line 898
    .end local v40    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_6

    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v40    # "intent":Landroid/content/Intent;
    .restart local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_19
    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v47

    .end local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v40

    .line 904
    .end local v40    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_6

    .line 911
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v7    # "appCallingUid":I
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v40    # "intent":Landroid/content/Intent;
    .restart local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_1a
    :try_start_8
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 912
    const-string/jumbo v6, " (pid="

    .line 911
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 912
    const-string/jumbo v6, ") when starting: "

    .line 911
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 913
    invoke-virtual/range {v40 .. v40}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    .line 911
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static/range {v26 .. v26}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 915
    const/16 v4, -0x5e

    monitor-exit v55

    .line 875
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 915
    return v4

    .line 951
    .end local v33    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "intent":Landroid/content/Intent;
    .end local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v41    # "newIntent":Landroid/content/Intent;
    .restart local v50    # "target":Landroid/content/IIntentSender;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .restart local p4    # "intent":Landroid/content/Intent;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_1b
    const/4 v13, 0x0

    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_5

    .line 1008
    .end local v7    # "appCallingUid":I
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v41    # "newIntent":Landroid/content/Intent;
    .end local v50    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v46    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v48    # "res":I
    :cond_1c
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/WaitResult;->thisTime:J

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p13

    invoke-virtual {v4, v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1013
    :goto_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1016
    :goto_9
    :try_start_b
    move-object/from16 v0, p13

    iget-boolean v4, v0, Landroid/app/WaitResult;->timeout:Z

    if-nez v4, :cond_10

    move-object/from16 v0, p13

    iget-object v4, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-nez v4, :cond_10

    goto :goto_8

    .line 875
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "callingPid":I
    .end local v23    # "realCallingPid":I
    .end local v24    # "realCallingUid":I
    .end local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v42    # "origId":J
    .end local v46    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v48    # "res":I
    .end local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v40    # "intent":Landroid/content/Intent;
    .restart local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :catchall_2
    move-exception v4

    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v47

    .end local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v40

    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "intent":Landroid/content/Intent;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    :goto_a
    monitor-exit v55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "appCallingUid":I
    .restart local v20    # "callingPid":I
    .restart local v23    # "realCallingPid":I
    .restart local v24    # "realCallingUid":I
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v41    # "newIntent":Landroid/content/Intent;
    .restart local v42    # "origId":J
    .restart local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v50    # "target":Landroid/content/IIntentSender;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :catchall_3
    move-exception v4

    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v47

    .end local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_a

    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_4
    move-exception v4

    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_a

    .end local v7    # "appCallingUid":I
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v41    # "newIntent":Landroid/content/Intent;
    .end local v50    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    :catchall_5
    move-exception v4

    goto :goto_a

    .line 1014
    .restart local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v46    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v48    # "res":I
    :catch_0
    move-exception v34

    .local v34, "e":Ljava/lang/InterruptedException;
    goto :goto_9

    .line 989
    .end local v34    # "e":Ljava/lang/InterruptedException;
    .end local v46    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_1
    move-exception v34

    .restart local v34    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_7

    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v34    # "e":Ljava/lang/InterruptedException;
    .end local v48    # "res":I
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v40    # "intent":Landroid/content/Intent;
    .restart local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_1d
    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v47

    .end local v47    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v40

    .end local v40    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_6
.end method

.method startConfirmCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "optionsBundle"    # Landroid/os/Bundle;

    .prologue
    .line 792
    const v1, 0x10804000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 795
    if-eqz p2, :cond_0

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 797
    .local v0, "options":Landroid/app/ActivityOptions;
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 798
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 799
    return-void

    .line 796
    .end local v0    # "options":Landroid/app/ActivityOptions;
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .restart local v0    # "options":Landroid/app/ActivityOptions;
    goto :goto_0
.end method

.method startHomeActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 774
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    move-object/from16 v22, v0

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHomeActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 775
    const/4 v2, 0x0

    .line 776
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 777
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 778
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 779
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 780
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 781
    const/16 v21, 0x0

    .line 782
    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    .line 775
    invoke-virtual/range {v1 .. v24}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartResult:I

    .line 783
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v1, :cond_0

    .line 787
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 789
    :cond_0
    return-void
.end method
