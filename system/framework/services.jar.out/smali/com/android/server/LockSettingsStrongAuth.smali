.class public Lcom/android/server/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStrongAuth$1;,
        Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;
    }
.end annotation


# static fields
.field private static final MSG_REGISTER_TRACKER:I = 0x2

.field private static final MSG_REMOVE_USER:I = 0x4

.field private static final MSG_REQUIRE_STRONG_AUTH:I = 0x1

.field private static final MSG_SCHEDULE_STRONG_AUTH_TIMEOUT:I = 0x5

.field private static final MSG_UNREGISTER_TRACKER:I = 0x3

.field private static final STRONG_AUTH_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsStrongAuth.timeoutForUser"

.field private static final TAG:Ljava/lang/String; = "LockSettings"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultStrongAuthFlags:I

.field private final mHandler:Landroid/os/Handler;

.field private final mStrongAuthForUser:Landroid/util/SparseIntArray;

.field private final mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrongAuthTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/trust/IStrongAuthTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/LockSettingsStrongAuth;
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/LockSettingsStrongAuth;
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/LockSettingsStrongAuth;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleRemoveUser(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/LockSettingsStrongAuth;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/LockSettingsStrongAuth;
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/LockSettingsStrongAuth;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleScheduleStrongAuthTimeout(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 209
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/LockSettingsStrongAuth;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/android/server/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 71
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 72
    return-void
.end method

.method private handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 6
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 75
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 76
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v4}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 77
    return-void

    .line 75
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 84
    .local v2, "key":I
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 86
    .local v3, "value":I
    :try_start_0
    invoke-interface {p1, v3, v2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "LockSettings"

    const-string/jumbo v5, "Exception while adding StrongAuthTracker."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 91
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "key":I
    .end local v3    # "value":I
    :cond_2
    return-void
.end method

.method private handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 3
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    return-void

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method private handleRemoveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 126
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 128
    iget v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 130
    :cond_0
    return-void
.end method

.method private handleRequireStrongAuth(II)V
    .locals 3
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 103
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 106
    .local v1, "key":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    .end local v1    # "key":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    .line 111
    :cond_1
    return-void
.end method

.method private handleRequireStrongAuthOneUser(II)V
    .locals 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 115
    .local v1, "oldValue":I
    if-nez p1, :cond_1

    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "newValue":I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 122
    :cond_0
    return-void

    .line 117
    .end local v0    # "newValue":I
    :cond_1
    or-int v0, v1, p1

    .restart local v0    # "newValue":I
    goto :goto_0
.end method

.method private handleScheduleStrongAuthTimeout(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 135
    .local v7, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {v7, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v8

    add-long v2, v0, v8

    .line 137
    .local v2, "when":J
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    .line 138
    .local v5, "alarm":Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;
    if-eqz v5, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v4, "LockSettingsStrongAuth.timeoutForUser"

    .line 146
    iget-object v6, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 145
    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 147
    return-void

    .line 141
    :cond_0
    new-instance v5, Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    .end local v5    # "alarm":Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;
    invoke-direct {v5, p0, p1}, Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;-><init>(Lcom/android/server/LockSettingsStrongAuth;I)V

    .line 142
    .restart local v5    # "alarm":Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private notifyStrongAuthTrackers(II)V
    .locals 5
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 150
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v3, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettings"

    const-string/jumbo v4, "Exception while notifying StrongAuthTracker."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 153
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v3, "LockSettings"

    const-string/jumbo v4, "Removing dead StrongAuthTracker."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 161
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_0
    return-void
.end method


# virtual methods
.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    return-void
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "argNotUsed":I
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 174
    return-void
.end method

.method public reportSuccessfulStrongAuthUnlock(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "argNotUsed":I
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 193
    return-void
.end method

.method public reportUnlock(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 188
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 2
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 177
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-ltz p2, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 182
    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method
