.class public Lcom/android/server/secrecy/policy/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"

# interfaces
.implements Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;


# static fields
.field public static final POLICY_DECRYPTED:Z = false

.field public static final POLICY_ENCRYPTED:Z = true

.field private static final TAG:Ljava/lang/String; = "SecrecyService.PolicyManager"

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/secrecy/policy/PolicyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecryptTool:Lcom/android/server/secrecy/policy/DecryptTool;

.field private mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

.field private mIsEncryptAdb:Z

.field private mIsEncryptApp:Z

.field private mIsEncryptLog:Z

.field private mLooper:Landroid/os/Looper;

.field private mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

.field private final mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

.field private mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

.field private mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/android/server/secrecy/SecrecyConfig;->getInstance()Lcom/android/server/secrecy/SecrecyConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    .line 53
    return-void
.end method

.method private checkChangeToPolicyDecryptedIfNeeded()V
    .locals 9

    .prologue
    .line 317
    iget-object v6, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v6}, Lcom/android/server/secrecy/policy/DownloadInfo;->getCurrentDownloadTimeInMills()J

    move-result-wide v2

    .line 318
    .local v2, "currentDownloadTimeInMills":J
    iget-object v6, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v6}, Lcom/android/server/secrecy/policy/DownloadInfo;->getLastDownloadTimeInMills()J

    move-result-wide v4

    .line 319
    .local v4, "lastDownloadTimeInMills":J
    iget-object v6, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v6}, Lcom/android/server/secrecy/policy/DownloadInfo;->isCurrentDownloadInternal()Z

    move-result v0

    .line 320
    .local v0, "currentDownloadInternal":Z
    const-string/jumbo v6, "SecrecyService.PolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkChangeToPolicyDecryptedIfNeeded, currentDownloadTimeInMills = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string/jumbo v6, "SecrecyService.PolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkChangeToPolicyDecryptedIfNeeded, lastDownloadTimeInMills    = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string/jumbo v6, "SecrecyService.PolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkChangeToPolicyDecryptedIfNeeded, lastDownloadTimeInMills    = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 324
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 325
    .local v1, "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    .line 326
    const-string/jumbo v6, "newDownloadInternal"

    invoke-virtual {p0, v1, v6}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    .line 328
    .end local v1    # "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/secrecy/policy/PolicyManager;
    .locals 2

    .prologue
    .line 44
    sget-object v1, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/android/server/secrecy/policy/PolicyManager;->sInstance:Lcom/android/server/secrecy/policy/PolicyManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-direct {v0}, Lcom/android/server/secrecy/policy/PolicyManager;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/policy/PolicyManager;->sInstance:Lcom/android/server/secrecy/policy/PolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 49
    sget-object v0, Lcom/android/server/secrecy/policy/PolicyManager;->sInstance:Lcom/android/server/secrecy/policy/PolicyManager;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSecreyConfig()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/secrecy/SecrecyConfig;->setPolicyManager(Lcom/android/server/secrecy/policy/PolicyManager;Landroid/os/Looper;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyConfig;->loadSecrecyConfig()V

    .line 81
    return-void
.end method

.method private notifySecrecyConfigChanged(Ljava/util/Map;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 150
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "ctl.restart"

    const-string/jumbo v1, "adbd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v0, "SecrecyService.PolicyManager"

    const-string/jumbo v1, "restart adbd"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method private startCountDownTimerIfNessesary(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "unlockType"    # Ljava/lang/String;
    .param p2, "changedToDecrypted"    # Z

    .prologue
    .line 158
    if-nez p2, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    const-string/jumbo v0, "mac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->startCountDown(Ljava/lang/String;)V

    .line 164
    :cond_1
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 263
    packed-switch p0, :pswitch_data_0

    .line 271
    :pswitch_0
    const-string/jumbo v0, "Unknown_TYPE"

    return-object v0

    .line 265
    :pswitch_1
    const-string/jumbo v0, "LOG_TYPE"

    return-object v0

    .line 267
    :pswitch_2
    const-string/jumbo v0, "APP_TYPE"

    return-object v0

    .line 269
    :pswitch_3
    const-string/jumbo v0, "ADB_TYPE"

    return-object v0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updatePolicyStateLocked(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 9
    .param p2, "unlockType"    # Ljava/lang/String;
    .param p3, "needToSave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "changedPolicyState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 104
    .local v4, "updatedSecrecyStateMap":Ljava/util/Map;
    const/4 v0, 0x0

    .line 105
    .local v0, "changedToDecrypted":Z
    const-string/jumbo v5, "SecrecyService.PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePolicyStateLocked, changedPolicyState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", unlockType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Throwable;

    const-string/jumbo v8, "Kevin_DEBUG"

    invoke-direct {v7, v8}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    sget-object v6, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 107
    const/4 v5, 0x2

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 108
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 109
    .local v2, "newIsEncryptApp":Z
    iget-boolean v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    if-eq v2, v5, :cond_0

    .line 110
    const-string/jumbo v5, "SecrecyService.PolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePolicyStateLocked, mIsEncryptApp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iput-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    .line 112
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-boolean v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    if-nez v5, :cond_5

    const/4 v0, 0x1

    .line 117
    .end local v2    # "newIsEncryptApp":Z
    :cond_0
    :goto_0
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 118
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 119
    .local v3, "newIsEncryptLog":Z
    iget-boolean v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    if-eq v3, v5, :cond_1

    .line 120
    const-string/jumbo v5, "SecrecyService.PolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePolicyStateLocked, mIsEncryptLog : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iput-boolean v3, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    .line 122
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-boolean v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    if-nez v5, :cond_6

    const/4 v0, 0x1

    .line 127
    .end local v3    # "newIsEncryptLog":Z
    :cond_1
    :goto_1
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 128
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 129
    .local v1, "newIsEncryptAdb":Z
    iget-boolean v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    if-eq v1, v5, :cond_2

    .line 130
    const-string/jumbo v5, "SecrecyService.PolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePolicyStateLocked, mIsEncryptAdb : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-boolean v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    .line 132
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-boolean v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_7

    const/4 v0, 0x1

    .end local v1    # "newIsEncryptAdb":Z
    :cond_2
    :goto_2
    monitor-exit v6

    .line 139
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 140
    const-string/jumbo v5, "SecrecyService.PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePolicyStateLocked, unlockType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", changedToDecrypted = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-eqz p3, :cond_3

    .line 142
    invoke-static {}, Lcom/android/server/secrecy/SecrecyConfig;->getInstance()Lcom/android/server/secrecy/SecrecyConfig;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/secrecy/SecrecyConfig;->saveSecrecyConfig(Ljava/util/Map;)V

    .line 144
    :cond_3
    invoke-direct {p0, p2, v0}, Lcom/android/server/secrecy/policy/PolicyManager;->startCountDownTimerIfNessesary(Ljava/lang/String;Z)V

    .line 147
    :cond_4
    return-void

    .line 113
    .restart local v2    # "newIsEncryptApp":Z
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 123
    .end local v2    # "newIsEncryptApp":Z
    .restart local v3    # "newIsEncryptLog":Z
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 133
    .end local v3    # "newIsEncryptLog":Z
    .restart local v1    # "newIsEncryptAdb":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 106
    .end local v1    # "newIsEncryptAdb":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public createPolicyState(Ljava/util/Map;Z)V
    .locals 2
    .param p2, "policyState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "secrecyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "PolicyManager dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    sget-object v1, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mIsEncryptApp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mIsEncryptLog = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    mIsEncryptAdb = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 286
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/policy/DownloadInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/SecrecyConfig;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 292
    :cond_0
    const-string/jumbo v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCurrentDownloadTimeInMills()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;->getCurrentDownloadTimeInMills()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptTool()Lcom/android/server/secrecy/policy/DecryptTool;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDecryptTool:Lcom/android/server/secrecy/policy/DecryptTool;

    return-object v0
.end method

.method public getDefaultPolicy()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    return v4

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;->isCurrentDownloadInternal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;->getLastDownloadTimeInMills()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 172
    :cond_1
    return v4

    .line 174
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 259
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPolicyState(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 239
    sget-object v1, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    monitor-exit v1

    .line 254
    const/4 v0, 0x0

    return v0

    .line 242
    :pswitch_1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 244
    :pswitch_2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    .line 246
    :pswitch_3
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getSecrecyKey([B)Z
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/SecrecyConfig;->getSecrecyKey([B)Z

    move-result v0

    return v0
.end method

.method public importRC4Key(Ljava/lang/String;)V
    .locals 2
    .param p1, "key_arg"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/PolicyManager;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/SecrecyConfig;->saveImei(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/SecrecyConfig;->saveRC4Key(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/SecrecyConfig;->saveSecrecyConfig(Ljava/util/Map;)V

    .line 186
    return-void
.end method

.method public initUpdateBroadcastReceiver()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onConfigLoadFinished()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onConfigSaveFinished(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "updatedSecrecyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v0, "SecrecyService.PolicyManager"

    const-string/jumbo v1, "updatedSecrecyStateMap.isEnpty() onConfigSaveFinished return"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/SecrecyService;->notifySecrecyState(Ljava/util/Map;)V

    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/secrecy/policy/PolicyManager;->notifySecrecyConfigChanged(Ljava/util/Map;)V

    .line 204
    return-void
.end method

.method public onCountDownTimerExpired()V
    .locals 3

    .prologue
    .line 232
    const-string/jumbo v1, "SecrecyService.PolicyManager"

    const-string/jumbo v2, "onCountDownTimerExpired change all types to POLICY_ENCRYPTED"

    invoke-static {v1, v2}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 234
    .local v0, "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    .line 235
    const-string/jumbo v1, "countDown_TimerExpired"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public onSecrecySwitchUpdate()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onSecrecyUpdateFromProvider()V
    .locals 10

    .prologue
    .line 212
    iget-boolean v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSystemReady:Z

    if-nez v5, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    iget-object v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v5}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getSupportSwitch()Z

    move-result v4

    .line 216
    .local v4, "support":Z
    iget-object v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v5}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getActivitySwitch()Z

    move-result v0

    .line 217
    .local v0, "activity":Z
    iget-object v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v5}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getLogSwitch()Z

    move-result v2

    .line 218
    .local v2, "log":Z
    iget-object v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v5}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getAdbSwitch()Z

    move-result v1

    .line 219
    .local v1, "adb":Z
    const-string/jumbo v5, "SecrecyService.PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSecrecySwitchUpdate, support = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    iget-object v6, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v6}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getMacTimeout()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v8}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getIdTimeout()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->updateCountDownTime(JJ)V

    .line 223
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 224
    .local v3, "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string/jumbo v5, "secrecy_update"

    invoke-virtual {p0, v3, v5}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setLastDownloadTimeInMills(Ljava/lang/String;)V
    .locals 1
    .param p1, "lastDownloadTimeInMillis"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/policy/DownloadInfo;->setLastDownloadTimeInMills(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/android/server/secrecy/policy/PolicyManager;->checkChangeToPolicyDecryptedIfNeeded()V

    .line 314
    return-void
.end method

.method public setSecrecyService(Landroid/content/Context;Lcom/android/server/secrecy/SecrecyService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secrecyService"    # Lcom/android/server/secrecy/SecrecyService;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 56
    iput-object p3, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mLooper:Landroid/os/Looper;

    .line 57
    iput-object p1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    .line 60
    new-instance v0, Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-direct {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    .line 61
    new-instance v0, Lcom/android/server/secrecy/policy/DecryptTool;

    invoke-direct {v0, p1, p0}, Lcom/android/server/secrecy/policy/DecryptTool;-><init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/PolicyManager;)V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDecryptTool:Lcom/android/server/secrecy/policy/DecryptTool;

    .line 63
    new-instance v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;-><init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/PolicyManager;)V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    .line 64
    new-instance v0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;-><init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;)V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    .line 65
    return-void
.end method

.method public status(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 296
    sget-object v1, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secrecy_on="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v2}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encrypt_all="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encrypt_app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encrypt_log="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encrypt_adb="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "decrypt_all="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    :goto_1
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 305
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public systemReady(Z)V
    .locals 6
    .param p1, "secrecySupport"    # Z

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSystemReady:Z

    .line 69
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;->readDownloadInfo()V

    .line 70
    invoke-direct {p0}, Lcom/android/server/secrecy/policy/PolicyManager;->initSecreyConfig()V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/PolicyManager;->initUpdateBroadcastReceiver()V

    .line 73
    const-string/jumbo v0, "SecrecyService.PolicyManager"

    const-string/jumbo v1, "systemReady, initUpdateBroadcastReceiver"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v1}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getMacTimeout()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v1}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getIdTimeout()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->updateCountDownTime(JJ)V

    .line 76
    return-void
.end method

.method public updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p2, "unlockType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "newPolicyState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method public updatePolicyState(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "unlockType"    # Ljava/lang/String;
    .param p3, "needToSave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "newPolicyState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyStateLocked(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 99
    return-void
.end method
