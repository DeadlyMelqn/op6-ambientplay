.class Lcom/android/server/am/TaskChangeNotificationController;
.super Ljava/lang/Object;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskChangeNotificationController$MainHandler;,
        Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    }
.end annotation


# static fields
.field private static final LOG_STACK_STATE_MSG:I = 0x1

.field private static final NOTIFY_ACTIVITY_DISMISSING_DOCKED_STACK_MSG:I = 0x7

.field private static final NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_FAILED_MSG:I = 0x12

.field private static final NOTIFY_ACTIVITY_PINNED_LISTENERS_MSG:I = 0x3

.field private static final NOTIFY_ACTIVITY_REQUESTED_ORIENTATION_CHANGED_LISTENERS:I = 0xc

.field private static final NOTIFY_ACTIVITY_UNPINNED_LISTENERS_MSG:I = 0x11

.field private static final NOTIFY_FORCED_RESIZABLE_MSG:I = 0x6

.field private static final NOTIFY_PINNED_ACTIVITY_RESTART_ATTEMPT_LISTENERS_MSG:I = 0x4

.field private static final NOTIFY_PINNED_STACK_ANIMATION_ENDED_LISTENERS_MSG:I = 0x5

.field private static final NOTIFY_PINNED_STACK_ANIMATION_STARTED_LISTENERS_MSG:I = 0x10

.field private static final NOTIFY_TASK_ADDED_LISTENERS_MSG:I = 0x8

.field private static final NOTIFY_TASK_DESCRIPTION_CHANGED_LISTENERS_MSG:I = 0xb

.field private static final NOTIFY_TASK_MOVED_TO_FRONT_LISTENERS_MSG:I = 0xa

.field private static final NOTIFY_TASK_PROFILE_LOCKED_LISTENERS_MSG:I = 0xe

.field private static final NOTIFY_TASK_REMOVAL_STARTED_LISTENERS:I = 0xd

.field private static final NOTIFY_TASK_REMOVED_LISTENERS_MSG:I = 0x9

.field private static final NOTIFY_TASK_SNAPSHOT_CHANGED_LISTENERS_MSG:I = 0xf

.field private static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_DELAY:I = 0x64

.field private static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_MSG:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLocalTaskStackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyActivityDismissingDockedStack:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityForcedResizable:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityPinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityRequestedOrientationChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityUnpinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedActivityRestartAttempt:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedStackAnimationEnded:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedStackAnimationStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskCreated:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskDescriptionChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskMovedToFront:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskProfileLocked:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRemovalStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRemoved:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskSnapshotChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskStackChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

.field private final mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/TaskChangeNotificationController;
    .param p1, "callback"    # Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Handler;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$0:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 69
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$1:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 73
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$9:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 77
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$10:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 81
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$11:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 85
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$12:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 89
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$13:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 93
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$14:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 97
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$15:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 101
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$16:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 105
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$2:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 109
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$3:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 113
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$4:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 117
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$5:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 121
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$6:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 125
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$7:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 129
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    sget-object v0, Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;->$INST$8:Lcom/android/server/am/-$Lambda$FqYE94sGA9-gF3KGIicLxzMb89s;

    .line 133
    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    .line 213
    iput-object p1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 214
    iput-object p2, p0, Lcom/android/server/am/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 215
    new-instance v0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;-><init>(Lcom/android/server/am/TaskChangeNotificationController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method private forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 259
    iget-object v3, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 260
    iget-object v2, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 262
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 259
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 268
    return-void

    .line 259
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 263
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 245
    iget-object v3, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 246
    iget-object v2, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 249
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 254
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 245
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 256
    return-void

    .line 245
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 250
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_3225(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_3334(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-interface {p0, v1, v0}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_3467(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_3582(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(I)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_3708(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-interface {p0, v1, v0}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_3878(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_4027(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(I)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_4147(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_4289(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_4415(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 106
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt(Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_4563(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationStarted()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_4697(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_4827(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_4991(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_5140(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_5277(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(II)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_am_TaskChangeNotificationController_5409(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-interface {p0, v1, v0}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    return-void
.end method


# virtual methods
.method notifyActivityDismissingDockedStack()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 330
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 332
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 333
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 334
    return-void
.end method

.method notifyActivityForcedResizable(IILjava/lang/String;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 337
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 340
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 341
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 342
    return-void
.end method

.method notifyActivityLaunchOnSecondaryDisplayFailed()V
    .locals 3

    .prologue
    const/16 v2, 0x12

    .line 345
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 348
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 349
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    return-void
.end method

.method notifyActivityPinned(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I

    .prologue
    const/4 v2, 0x3

    .line 282
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 285
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 286
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    return-void
.end method

.method notifyActivityRequestedOrientationChanged(II)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 383
    const/16 v2, 0xc

    .line 382
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 384
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 385
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 386
    return-void
.end method

.method notifyActivityUnpinned()V
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 291
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 294
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 295
    return-void
.end method

.method notifyPinnedActivityRestartAttempt(Z)V
    .locals 5
    .param p1, "clearedTask"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 303
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    iget-object v3, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 306
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 305
    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 307
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 308
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 309
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 306
    goto :goto_0
.end method

.method notifyPinnedStackAnimationEnded()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 322
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 325
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 326
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-void
.end method

.method notifyPinnedStackAnimationStarted()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 313
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 316
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 317
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 318
    return-void
.end method

.method notifyTaskCreated(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    .line 354
    const/4 v3, 0x0

    .line 353
    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 355
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 356
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 357
    return-void
.end method

.method notifyTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    .line 375
    const/4 v3, 0x0

    .line 374
    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 376
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 377
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 379
    return-void
.end method

.method notifyTaskMovedToFront(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    .line 368
    const/4 v3, 0x0

    .line 367
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 369
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 370
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 371
    return-void
.end method

.method notifyTaskProfileLocked(II)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 408
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 409
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 410
    return-void
.end method

.method notifyTaskRemovalStarted(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    .line 395
    const/4 v3, 0x0

    .line 394
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 396
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 397
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 399
    return-void
.end method

.method notifyTaskRemoved(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    .line 361
    const/4 v3, 0x0

    .line 360
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 362
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 363
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 364
    return-void
.end method

.method notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    .line 417
    const/4 v3, 0x0

    .line 416
    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 418
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 419
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 420
    return-void
.end method

.method notifyTaskStackChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 272
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 275
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 277
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 278
    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 219
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 230
    return-void

    .line 226
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 233
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 242
    return-void

    .line 238
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
