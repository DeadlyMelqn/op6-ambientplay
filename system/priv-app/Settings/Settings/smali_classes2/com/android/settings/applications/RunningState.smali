.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$1;,
        Lcom/android/settings/applications/RunningState$2;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;,
        Lcom/android/settings/applications/RunningState$UserState;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final DEBUG_COMPARE:Z = false

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_RESET_CONTENTS:I = 0x1

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIME:I = 0x4

.field static final TAG:Ljava/lang/String; = "RunningState"

.field static final TIME_UPDATE_DELAY:J = 0x3e8L

.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field private final mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/RunningState;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/RunningState;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v1, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 96
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 101
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 100
    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 105
    new-instance v1, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    .line 104
    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 113
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 112
    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 123
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 127
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 140
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 142
    iput v3, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 145
    new-instance v1, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    .line 144
    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 205
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 256
    new-instance v1, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 322
    new-instance v1, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;)V

    .line 321
    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    .line 780
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 781
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 782
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 783
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 784
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .line 785
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 786
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    .line 787
    iput-boolean v3, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 788
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "RunningState:Background"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 789
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 790
    new-instance v1, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 791
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 792
    return-void

    .line 786
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "newItem"    # Lcom/android/settings/applications/RunningState$MergedItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 871
    .local p2, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local p3, "userItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 872
    .local v2, "userItem":Lcom/android/settings/applications/RunningState$MergedItem;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v4, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 873
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 874
    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 875
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_2

    .line 877
    return-void

    .line 872
    .end local v0    # "first":Z
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "first":Z
    goto :goto_0

    .line 879
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 880
    return-void

    .line 882
    :cond_3
    if-nez v2, :cond_5

    .line 883
    new-instance v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v2    # "userItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v2, v3}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 884
    .restart local v2    # "userItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 888
    :goto_1
    iget v3, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    .line 889
    new-instance v3, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {v3}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    .line 890
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v1, v3, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 891
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v4, v1}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 892
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 893
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    return-void

    .line 886
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_5
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 771
    sget-object v1, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 772
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v0, :cond_0

    .line 773
    new-instance v0, Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    .line 775
    :cond_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 4
    .param p1, "pi"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 847
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 848
    return v3

    .line 850
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 851
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 852
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x10e

    if-ge v0, v1, :cond_1

    .line 853
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v0, :cond_1

    .line 855
    return v3

    .line 857
    :cond_1
    return v2
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 754
    if-eqz p2, :cond_1

    iget v3, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_0

    .line 755
    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 756
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 757
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 758
    return-object v0

    .line 762
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, p1

    .line 763
    .local v1, "label":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 764
    .local v2, "tail":I
    if-ltz v2, :cond_2

    .line 765
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 767
    :cond_2
    return-object v1
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 862
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 863
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 864
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 865
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 866
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 867
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 68
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 899
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v46

    .line 901
    .local v46, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    add-int/lit8 v63, v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 903
    const/16 v18, 0x0

    .line 908
    .local v18, "changed":Z
    const/16 v63, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v51

    .line 909
    .local v51, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v51, :cond_1

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v11

    .line 910
    .local v11, "NS":I
    :goto_0
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move/from16 v0, v27

    if-ge v0, v11, :cond_3

    .line 911
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 915
    .local v54, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v63, v0

    if-nez v63, :cond_2

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v63, v0

    if-nez v63, :cond_2

    .line 916
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 917
    add-int/lit8 v27, v27, -0x1

    .line 918
    add-int/lit8 v11, v11, -0x1

    .line 910
    :cond_0
    :goto_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 909
    .end local v11    # "NS":I
    .end local v27    # "i":I
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "NS":I
    goto :goto_0

    .line 923
    .restart local v27    # "i":I
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0x8

    if-eqz v63, :cond_0

    .line 925
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 926
    add-int/lit8 v27, v27, -0x1

    .line 927
    add-int/lit8 v11, v11, -0x1

    .line 928
    goto :goto_2

    .line 935
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v48

    .line 936
    .local v48, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v48, :cond_4

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v9

    .line 937
    .local v9, "NP":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 938
    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    if-ge v0, v9, :cond_5

    .line 939
    move-object/from16 v0, v48

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 940
    .local v40, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    new-instance v65, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v65

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v63 .. v65}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 938
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 936
    .end local v9    # "NP":I
    .end local v40    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "NP":I
    goto :goto_3

    .line 945
    :cond_5
    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    if-ge v0, v11, :cond_7

    .line 946
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 947
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_6

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v63, v0

    if-lez v63, :cond_6

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 949
    .local v13, "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_6

    .line 950
    const/16 v63, 0x1

    move/from16 v0, v63

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 951
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v63, v0

    if-eqz v63, :cond_6

    .line 952
    const/16 v63, 0x1

    move/from16 v0, v63

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 945
    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 959
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v27, 0x0

    .end local v18    # "changed":Z
    :goto_6
    move/from16 v0, v27

    if-ge v0, v11, :cond_13

    .line 960
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 967
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_b

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v63, v0

    if-lez v63, :cond_b

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 969
    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v63, v0

    xor-int/lit8 v63, v63, 0x1

    if-eqz v63, :cond_b

    .line 975
    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 976
    const/16 v64, 0x12c

    .line 975
    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_b

    .line 979
    const/16 v58, 0x0

    .line 980
    .local v58, "skip":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 981
    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v13, :cond_9

    .line 982
    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v63, v0

    if-nez v63, :cond_8

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v63

    if-eqz v63, :cond_a

    .line 983
    :cond_8
    const/16 v58, 0x1

    .line 988
    :cond_9
    if-eqz v58, :cond_b

    .line 959
    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v58    # "skip":Z
    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_6

    .line 986
    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .restart local v58    # "skip":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    goto :goto_7

    .line 995
    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v58    # "skip":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    .line 996
    .local v49, "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    if-nez v49, :cond_c

    .line 997
    new-instance v49, Ljava/util/HashMap;

    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    .line 998
    .restart local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1000
    :cond_c
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1001
    .local v47, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_d

    .line 1002
    const/16 v18, 0x1

    .line 1003
    .restart local v18    # "changed":Z
    new-instance v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v63, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v63

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1004
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v63

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    .end local v18    # "changed":Z
    :cond_d
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_11

    .line 1008
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_12

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v43, v0

    .line 1009
    .local v43, "pid":I
    :goto_9
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    move/from16 v0, v43

    move/from16 v1, v63

    if-eq v0, v1, :cond_10

    .line 1010
    const/16 v18, 0x1

    .line 1011
    .restart local v18    # "changed":Z
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    move/from16 v0, v63

    move/from16 v1, v43

    if-eq v0, v1, :cond_10

    .line 1012
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-eqz v63, :cond_e

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    .line 1015
    :cond_e
    if-eqz v43, :cond_f

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v43

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1018
    :cond_f
    move/from16 v0, v43

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1021
    .end local v18    # "changed":Z
    :cond_10
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1022
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1024
    .end local v43    # "pid":I
    :cond_11
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v63

    or-int v18, v18, v63

    .local v18, "changed":Z
    goto/16 :goto_8

    .line 1008
    .end local v18    # "changed":Z
    :cond_12
    const/16 v43, 0x0

    .restart local v43    # "pid":I
    goto :goto_9

    .line 1029
    .end local v43    # "pid":I
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/16 v27, 0x0

    :goto_a
    move/from16 v0, v27

    if-ge v0, v9, :cond_18

    .line 1030
    move-object/from16 v0, v48

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1031
    .restart local v40    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1032
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_15

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1037
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_14

    .line 1038
    const/16 v18, 0x1

    .line 1039
    .local v18, "changed":Z
    new-instance v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v63, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v63

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1040
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1043
    .end local v18    # "changed":Z
    :cond_14
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1046
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v63

    if-eqz v63, :cond_17

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_16

    .line 1048
    const/16 v18, 0x1

    .line 1049
    .restart local v18    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    .end local v18    # "changed":Z
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1052
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1053
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1058
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1059
    move-object/from16 v0, v40

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1029
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    .line 1055
    :cond_17
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 1064
    .end local v40    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1065
    .local v10, "NRP":I
    const/16 v27, 0x0

    :goto_c
    move/from16 v0, v27

    if-ge v0, v10, :cond_1d

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1067
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1c

    .line 1068
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v20, v0

    .line 1069
    .local v20, "clientPid":I
    if-eqz v20, :cond_1b

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1071
    .local v19, "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v19, :cond_19

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v19, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1074
    .restart local v19    # "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_19
    if-eqz v19, :cond_1a

    .line 1075
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1083
    .end local v19    # "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1a
    :goto_d
    add-int/lit8 v27, v27, 0x1

    goto :goto_c

    .line 1081
    :cond_1b
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_d

    .line 1085
    .end local v20    # "clientPid":I
    :cond_1c
    const/16 v18, 0x1

    .line 1086
    .restart local v18    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    .line 1087
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_c

    .line 1092
    .end local v18    # "changed":Z
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1093
    .local v8, "NHP":I
    const/16 v27, 0x0

    :goto_e
    move/from16 v0, v27

    if-ge v0, v8, :cond_20

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1095
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v63, v0

    if-eqz v63, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v63

    if-nez v63, :cond_1f

    .line 1096
    :cond_1e
    const/16 v18, 0x1

    .line 1097
    .restart local v18    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1098
    add-int/lit8 v27, v27, -0x1

    .line 1099
    add-int/lit8 v8, v8, -0x1

    .line 1093
    .end local v18    # "changed":Z
    :cond_1f
    add-int/lit8 v27, v27, 0x1

    goto :goto_e

    .line 1106
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1107
    .local v6, "NAP":I
    const/16 v27, 0x0

    :goto_f
    move/from16 v0, v27

    if-ge v0, v6, :cond_22

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1109
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_21

    .line 1110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v63

    or-int v18, v18, v63

    .line 1107
    :cond_21
    add-int/lit8 v27, v27, 0x1

    goto :goto_f

    .line 1115
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_22
    const/16 v61, 0x0

    .line 1116
    .local v61, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    .end local v61    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_2a

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    .line 1118
    .restart local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .line 1119
    .local v45, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_29

    .line 1120
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1121
    .local v41, "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_26

    .line 1122
    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1123
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-nez v63, :cond_24

    .line 1126
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1142
    :cond_24
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v57

    .line 1143
    .local v57, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_23

    .line 1144
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1145
    .local v55, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_25

    .line 1146
    const/16 v18, 0x1

    .line 1147
    .restart local v18    # "changed":Z
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 1129
    .end local v18    # "changed":Z
    .end local v55    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    .end local v57    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_26
    const/16 v18, 0x1

    .line 1130
    .restart local v18    # "changed":Z
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->remove()V

    .line 1131
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->size()I

    move-result v63

    if-nez v63, :cond_28

    .line 1132
    if-nez v61, :cond_27

    .line 1133
    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v61

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    :cond_28
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-eqz v63, :cond_23

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 1116
    .end local v18    # "changed":Z
    .end local v41    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_29
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_10

    .line 1153
    .end local v45    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_2a
    if-eqz v61, :cond_2b

    .line 1154
    const/16 v27, 0x0

    :goto_13
    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_2b

    .line 1155
    move-object/from16 v0, v61

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Integer;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v60

    .line 1156
    .local v60, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1154
    add-int/lit8 v27, v27, 0x1

    goto :goto_13

    .line 1160
    .end local v60    # "uid":I
    :cond_2b
    if-eqz v18, :cond_41

    .line 1162
    new-instance v59, Ljava/util/ArrayList;

    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v59, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    const/16 v27, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_30

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .local v42, "pi$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_2f

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1165
    .restart local v41    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1166
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1167
    const-wide v64, 0x7fffffffffffffffL

    move-wide/from16 v0, v64

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1168
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    .local v56, "si$iterator":Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_2e

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1169
    .restart local v55    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2d

    .line 1170
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0x1

    if-eqz v63, :cond_2d

    .line 1172
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1174
    :cond_2d
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2c

    .line 1175
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v63, v0

    if-eqz v63, :cond_2c

    .line 1176
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1177
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v66, v0

    cmp-long v63, v64, v66

    if-lez v63, :cond_2c

    .line 1178
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 1182
    .end local v55    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v59

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1163
    .end local v41    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v56    # "si$iterator":Ljava/util/Iterator;
    :cond_2f
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_14

    .line 1186
    .end local v42    # "pi$iterator":Ljava/util/Iterator;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v63, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1188
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    .local v33, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    .local v34, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1191
    const/16 v27, 0x0

    :goto_17
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_3a

    .line 1192
    move-object/from16 v0, v59

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1193
    .restart local v41    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1197
    .local v23, "firstProc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1199
    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-lez v63, :cond_31

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_31
    const/16 v28, 0x0

    .line 1206
    .local v28, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    const/16 v26, 0x0

    .line 1207
    .local v26, "haveAllMerged":Z
    const/16 v30, 0x0

    .line 1208
    .local v30, "needDivider":Z
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .restart local v56    # "si$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_34

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1209
    .restart local v55    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move/from16 v0, v30

    move-object/from16 v1, v55

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1210
    const/16 v30, 0x1

    .line 1211
    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    if-eqz v63, :cond_33

    .line 1213
    if-eqz v28, :cond_32

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_32

    .line 1214
    const/16 v26, 0x0

    .line 1216
    :cond_32
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v28, v0

    .local v28, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    goto :goto_18

    .line 1218
    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_33
    const/16 v26, 0x0

    goto :goto_18

    .line 1222
    .end local v55    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_34
    if-eqz v26, :cond_35

    if-nez v28, :cond_36

    .line 1225
    :cond_35
    new-instance v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1226
    .restart local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :goto_19
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_38

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1227
    .restart local v55    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    move-object/from16 v0, v28

    move-object/from16 v1, v55

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_19

    .line 1223
    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v55    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_36
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/HashMap;->size()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_35

    .line 1237
    :cond_37
    const/16 v63, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1238
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_39

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v63

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1191
    :goto_1a
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_17

    .line 1230
    .restart local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_38
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1231
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1232
    move/from16 v29, v23

    .local v29, "mpi":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    add-int/lit8 v63, v63, -0x1

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_37

    .line 1233
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    add-int/lit8 v29, v29, 0x1

    goto :goto_1b

    .line 1241
    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v29    # "mpi":I
    :cond_39
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1247
    .end local v23    # "firstProc":I
    .end local v26    # "haveAllMerged":Z
    .end local v30    # "needDivider":Z
    .end local v41    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v56    # "si$iterator":Ljava/util/Iterator;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1248
    const/16 v27, 0x0

    :goto_1c
    move/from16 v0, v27

    if-ge v0, v8, :cond_3e

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1250
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v63, v0

    if-nez v63, :cond_3c

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->size()I

    move-result v63

    if-gtz v63, :cond_3c

    .line 1251
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    if-nez v63, :cond_3b

    .line 1252
    new-instance v63, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v64, v0

    invoke-direct/range {v63 .. v64}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1253
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1255
    :cond_3b
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1256
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3d

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    .line 1258
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v64, v0

    .line 1257
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v63

    move-object/from16 v4, v64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1262
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    :cond_3c
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1c

    .line 1260
    :cond_3d
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v64

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    .line 1268
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1269
    .local v12, "NU":I
    const/16 v27, 0x0

    :goto_1e
    move/from16 v0, v27

    if-ge v0, v12, :cond_40

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1271
    .local v62, "user":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v62

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_3f

    .line 1272
    const/16 v63, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1269
    :cond_3f
    add-int/lit8 v27, v27, 0x1

    goto :goto_1e

    .line 1276
    .end local v62    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v64, v0

    monitor-enter v64

    .line 1277
    :try_start_0
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1278
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v64

    .line 1284
    .end local v12    # "NU":I
    .end local v33    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v34    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v59    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1286
    const/16 v36, 0x0

    .line 1287
    .local v36, "numBackgroundProcesses":I
    const/16 v37, 0x0

    .line 1288
    .local v37, "numForegroundProcesses":I
    const/16 v39, 0x0

    .line 1289
    .local v39, "numServiceProcesses":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1290
    const/16 v27, 0x0

    :goto_1f
    move/from16 v0, v27

    if-ge v0, v10, :cond_45

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1292
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_44

    .line 1295
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1296
    const/16 v64, 0x190

    .line 1295
    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_42

    .line 1297
    add-int/lit8 v36, v36, 0x1

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    :goto_20
    add-int/lit8 v27, v27, 0x1

    goto :goto_1f

    .line 1276
    .end local v36    # "numBackgroundProcesses":I
    .end local v37    # "numForegroundProcesses":I
    .end local v39    # "numServiceProcesses":I
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v12    # "NU":I
    .restart local v33    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .restart local v34    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v59    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v63

    monitor-exit v64

    throw v63

    .line 1299
    .end local v12    # "NU":I
    .end local v33    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v34    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v59    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .restart local v36    # "numBackgroundProcesses":I
    .restart local v37    # "numForegroundProcesses":I
    .restart local v39    # "numServiceProcesses":I
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_42
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1300
    const/16 v64, 0xc8

    .line 1299
    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_43

    .line 1301
    add-int/lit8 v37, v37, 0x1

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1304
    :cond_43
    const-string/jumbo v63, "RunningState"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Unknown non-service process: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 1305
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 1304
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 1305
    const-string/jumbo v65, " #"

    .line 1304
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 1305
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v65, v0

    .line 1304
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1308
    :cond_44
    add-int/lit8 v39, v39, 0x1

    goto :goto_20

    .line 1312
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_45
    const-wide/16 v14, 0x0

    .line 1313
    .local v14, "backgroundProcessMemory":J
    const-wide/16 v24, 0x0

    .line 1314
    .local v24, "foregroundProcessMemory":J
    const-wide/16 v52, 0x0

    .line 1315
    .local v52, "serviceProcessMemory":J
    const/16 v31, 0x0

    .line 1316
    .local v31, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v35, 0x0

    .line 1317
    .local v35, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v21, 0x0

    .line 1319
    .local v21, "diffUsers":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v38

    .line 1320
    .local v38, "numProc":I
    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v44, v0

    .line 1321
    .local v44, "pids":[I
    const/16 v27, 0x0

    :goto_21
    move/from16 v0, v27

    move/from16 v1, v38

    if-ge v0, v1, :cond_46

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    aput v63, v44, v27

    .line 1321
    add-int/lit8 v27, v27, 0x1

    goto :goto_21

    .line 1324
    :cond_46
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v50

    .line 1326
    .local v50, "pss":[J
    const/16 v16, 0x0

    .line 1327
    .local v16, "bgIndex":I
    const/16 v27, 0x0

    move-object/from16 v32, v31

    .end local v21    # "diffUsers":Z
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v32, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_22
    :try_start_2
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v63, v0

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_50

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1329
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    aget-wide v64, v50, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-wide/from16 v2, v64

    move/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v63

    or-int v18, v18, v63

    .line 1330
    .local v18, "changed":Z
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_47

    .line 1331
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0

    add-long v52, v52, v64

    move-object/from16 v31, v32

    .line 1327
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v31, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_23
    add-int/lit8 v27, v27, 0x1

    move-object/from16 v32, v31

    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto :goto_22

    .line 1332
    :cond_47
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1333
    const/16 v64, 0x190

    .line 1332
    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_4f

    .line 1334
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0

    add-long v14, v14, v64

    .line 1336
    if-eqz v32, :cond_49

    .line 1337
    new-instance v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1338
    .restart local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1339
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_48

    const/16 v63, 0x1

    :goto_24
    or-int v21, v21, v63

    .line 1340
    .local v21, "diffUsers":Z
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v31, v32

    .line 1358
    .end local v21    # "diffUsers":Z
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_25
    const/16 v63, 0x1

    :try_start_3
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1359
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1360
    add-int/lit8 v16, v16, 0x1

    goto :goto_23

    .line 1339
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_48
    const/16 v63, 0x0

    goto :goto_24

    .line 1342
    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_49
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v16

    move/from16 v1, v63

    if-ge v0, v1, :cond_4a

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_4e

    .line 1344
    :cond_4a
    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1345
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .local v17, "bgi":I
    :goto_26
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4c

    .line 1346
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1347
    .restart local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4b

    const/16 v63, 0x1

    :goto_27
    or-int v21, v21, v63

    .line 1348
    .restart local v21    # "diffUsers":Z
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    add-int/lit8 v17, v17, 0x1

    goto :goto_26

    .line 1347
    .end local v21    # "diffUsers":Z
    :cond_4b
    const/16 v63, 0x0

    goto :goto_27

    .line 1350
    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_4c
    new-instance v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1351
    .restart local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1352
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4d

    const/16 v63, 0x1

    :goto_28
    or-int v21, v21, v63

    .line 1353
    .restart local v21    # "diffUsers":Z
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_25

    .line 1366
    .end local v16    # "bgIndex":I
    .end local v17    # "bgi":I
    .end local v18    # "changed":Z
    .end local v21    # "diffUsers":Z
    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v38    # "numProc":I
    .end local v44    # "pids":[I
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v50    # "pss":[J
    :catch_0
    move-exception v22

    .line 1369
    :goto_29
    if-nez v31, :cond_52

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v63

    move/from16 v1, v36

    if-le v0, v1, :cond_52

    .line 1372
    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1373
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .restart local v17    # "bgi":I
    :goto_2a
    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_52

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1375
    .restart local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_51

    const/16 v63, 0x1

    :goto_2b
    or-int v21, v21, v63

    .line 1376
    .restart local v21    # "diffUsers":Z
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    add-int/lit8 v17, v17, 0x1

    goto :goto_2a

    .line 1352
    .end local v21    # "diffUsers":Z
    .restart local v16    # "bgIndex":I
    .restart local v18    # "changed":Z
    .restart local v38    # "numProc":I
    .restart local v44    # "pids":[I
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v50    # "pss":[J
    :cond_4d
    const/16 v63, 0x0

    goto :goto_28

    .line 1355
    .end local v17    # "bgi":I
    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    .restart local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_25

    .line 1361
    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4f
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1362
    const/16 v64, 0xc8

    .line 1361
    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_5b

    .line 1363
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    add-long v24, v24, v64

    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v18    # "changed":Z
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_50
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .line 1375
    .end local v16    # "bgIndex":I
    .end local v38    # "numProc":I
    .end local v44    # "pids":[I
    .end local v50    # "pss":[J
    .restart local v17    # "bgi":I
    .restart local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_51
    const/16 v63, 0x0

    goto :goto_2b

    .line 1381
    .end local v17    # "bgi":I
    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_52
    if-eqz v31, :cond_53

    .line 1384
    if-nez v21, :cond_54

    .line 1386
    move-object/from16 v35, v31

    .line 1414
    .end local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_53
    const/16 v27, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_58

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1414
    add-int/lit8 v27, v27, 0x1

    goto :goto_2c

    .line 1390
    .restart local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_54
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v35, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1392
    .local v7, "NB":I
    const/16 v27, 0x0

    :goto_2d
    move/from16 v0, v27

    if-ge v0, v7, :cond_56

    .line 1393
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1394
    .restart local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_55

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    .line 1395
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v63

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1392
    :goto_2e
    add-int/lit8 v27, v27, 0x1

    goto :goto_2d

    .line 1398
    :cond_55
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1403
    .end local v28    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1404
    .restart local v12    # "NU":I
    const/16 v27, 0x0

    :goto_2f
    move/from16 v0, v27

    if-ge v0, v12, :cond_53

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1406
    .restart local v62    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v62

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_57

    .line 1407
    const/16 v63, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1408
    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1404
    :cond_57
    add-int/lit8 v27, v27, 0x1

    goto :goto_2f

    .line 1418
    .end local v7    # "NB":I
    .end local v12    # "NU":I
    .end local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v62    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v64, v0

    monitor-enter v64

    .line 1419
    :try_start_7
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1420
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1421
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 1422
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1423
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1424
    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    .line 1425
    if-eqz v31, :cond_59

    .line 1426
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1427
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1428
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v63, v0

    if-eqz v63, :cond_59

    .line 1429
    const/16 v18, 0x1

    .line 1432
    :cond_59
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move/from16 v63, v0

    if-nez v63, :cond_5a

    .line 1433
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5a
    monitor-exit v64

    .line 1438
    return v18

    .line 1418
    :catchall_1
    move-exception v63

    monitor-exit v64

    throw v63

    .line 1366
    .restart local v16    # "bgIndex":I
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v35, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v38    # "numProc":I
    .restart local v44    # "pids":[I
    .restart local v50    # "pss":[J
    :catch_1
    move-exception v22

    .local v22, "e":Landroid/os/RemoteException;
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .end local v22    # "e":Landroid/os/RemoteException;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v18    # "changed":Z
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v47    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_5b
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1455
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1454
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1449
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1448
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 822
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method pause()V
    .locals 3

    .prologue
    .line 839
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 840
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 842
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 844
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .prologue
    .line 795
    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 796
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 797
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 798
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->checkUsersChangedLocked()Z

    move-result v1

    .line 800
    .local v1, "usersChanged":Z
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 801
    .local v0, "configChanged":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 803
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 804
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 805
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 807
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 808
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 810
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 812
    return-void

    .line 795
    .end local v0    # "configChanged":Z
    .end local v1    # "usersChanged":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .param p1, "watching"    # Z

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1443
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1445
    return-void

    .line 1442
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 817
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 819
    return-void

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method waitForData()V
    .locals 6

    .prologue
    .line 828
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 829
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 831
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 832
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 836
    return-void

    .line 828
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
