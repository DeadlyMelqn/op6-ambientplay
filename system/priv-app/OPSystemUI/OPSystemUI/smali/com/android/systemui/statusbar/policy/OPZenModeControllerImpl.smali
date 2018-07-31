.class public Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
.super Ljava/lang/Object;
.source "OPZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OPZenModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDndEnable:Z

.field private mDndSettingObserver:Lcom/android/systemui/qs/SystemSetting;

.field private final mHandler:Landroid/os/Handler;

.field private mOrignalDndEnable:Z

.field private mThreeKeySatus:I

.field private mThreeKeySettingObserver:Lcom/android/systemui/qs/GlobalSetting;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->handleDndUpdate(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
    .param p1, "threeKeyStatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->handleThreeKeyUpdate(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
    .param p1, "dnd"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->onDndUpdate(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
    .param p1, "threekeystatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->onThreeKeyUpdate(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
    .param p1, "newUserId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->onUserSwitched(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->DEBUG:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mOrignalDndEnable:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    .line 49
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->registerListener()V

    .line 80
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCurrentUserId:I

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 90
    return-void
.end method

.method private handleDndUpdate(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 170
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    if-eq v2, p1, :cond_1

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    .line 174
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;
    if-eqz v0, :cond_0

    .line 175
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;->onDndChanged(Z)V

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private handleThreeKeyUpdate(I)V
    .locals 5
    .param p1, "threeKeyStatus"    # I

    .prologue
    .line 154
    iget v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    if-ne p1, v2, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    .line 160
    const-string/jumbo v2, "OPZenModeControllerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " handleThreeKeyUpdate :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    .line 163
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;
    if-eqz v0, :cond_1

    .line 164
    iget v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;->onThreeKeyStatus(I)V

    .line 161
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;
    :cond_2
    return-void
.end method

.method private onDndUpdate(Z)V
    .locals 4
    .param p1, "dnd"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xca

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 150
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method private onThreeKeyUpdate(I)V
    .locals 4
    .param p1, "threekeystatus"    # I

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method private onUserSwitched(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPZenModeControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCurrentUserId:I

    if-eq v0, p1, :cond_1

    .line 96
    iput p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCurrentUserId:I

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->registerListener()V

    .line 99
    :cond_1
    return-void
.end method

.method private registerListener()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v5, 0x1

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$3;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v4, "dnd_mode_enabled"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndSettingObserver:Lcom/android/systemui/qs/SystemSetting;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndSettingObserver:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 112
    new-instance v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    const-string/jumbo v3, "three_Key_mode"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySettingObserver:Lcom/android/systemui/qs/GlobalSetting;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySettingObserver:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->getThreeKeyStatus(Landroid/content/Context;)I

    move-result v7

    .line 120
    .local v7, "threeKeystatus":I
    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    if-eq v7, v0, :cond_0

    .line 121
    iput v7, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    .line 122
    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->onThreeKeyUpdate(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dnd_mode_enabled"

    invoke-static {v0, v1, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v6, 0x1

    .line 125
    .local v6, "dndEnable":Z
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    if-eq v0, v6, :cond_1

    .line 126
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->onDndUpdate(Z)V

    .line 129
    :cond_1
    const-string/jumbo v0, "OPZenModeControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener mDndEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mThreeKeySatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " current user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 124
    .end local v6    # "dndEnable":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "dndEnable":Z
    goto :goto_0
.end method

.method private sendUpdates(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;->onDndChanged(Z)V

    .line 219
    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;->onThreeKeyStatus(I)V

    .line 220
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 187
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OPZenModeControllerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "*** register callback for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 190
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "OPZenModeControllerImpl"

    const-string/jumbo v3, "Object tried to add another callback"

    .line 191
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "Called by"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 192
    return-void

    .line 188
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 199
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->sendUpdates(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    .line 200
    return-void

    .line 186
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 181
    check-cast p1, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    return-void
.end method

.method public getDndEnable()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    return v0
.end method

.method public getThreeKeySatus()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    return v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 206
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OPZenModeControllerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "*** unregister callback for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v2

    .line 214
    return-void

    .line 205
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 202
    check-cast p1, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    return-void
.end method

.method public setDndEnable(Z)V
    .locals 3
    .param p1, "isEnable"    # Z

    .prologue
    .line 135
    const-string/jumbo v0, "OPZenModeControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setDndEnable isEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndSettingObserver:Lcom/android/systemui/qs/SystemSetting;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 137
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
