.class public abstract Landroid/telephony/ims/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field public static final EMERGENCY_MMTEL:I = 0x0

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final MAX:I = 0x3

.field public static final MMTEL:I = 0x1

.field public static final RCS:I = 0x2

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_NOT_AVAILABLE:I = 0x0

.field public static final STATE_READY:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemovedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotId:I

.field private mState:I

.field private final mStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 95
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    .line 41
    return-void
.end method

.method static synthetic lambda$-android_telephony_ims_feature_ImsFeature_4367(ILandroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;)V
    .locals 0
    .param p0, "slotId"    # I
    .param p1, "l"    # Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;

    .prologue
    .line 128
    invoke-interface {p1, p0}, Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;->onFeatureRemoved(I)V

    return-void
.end method

.method private notifyFeatureState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    .line 174
    iget-object v4, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v4

    .line 175
    :try_start_0
    iget-object v3, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 176
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsFeatureStatusCallback;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 175
    if-eqz v3, :cond_0

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .local v0, "callback":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_start_1
    const-string/jumbo v3, "ImsFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifying ImsFeatureState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 184
    const-string/jumbo v3, "ImsFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t notify feature state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 174
    .end local v0    # "callback":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsFeatureStatusCallback;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsFeatureStatusCallback;>;"
    :cond_0
    monitor-exit v4

    .line 188
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->sendImsServiceIntent(I)V

    .line 189
    return-void
.end method

.method private sendImsServiceIntent(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 195
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 196
    :cond_0
    return-void

    .line 199
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    const-string/jumbo v1, "android:phone_id"

    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    return-void

    .line 202
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 205
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addFeatureRemovedListener(Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;

    .prologue
    .line 114
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 117
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    return-void

    .line 150
    :cond_0
    :try_start_0
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    .line 152
    iget-object v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 158
    :goto_0
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ImsFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t notify feature state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFeatureState()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    return v0
.end method

.method public notifyFeatureRemoved(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 127
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    new-instance v2, Landroid/telephony/ims/feature/-$Lambda$nHF_Dbrg4P2H381tqGPRuFD0u_w;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/-$Lambda$nHF_Dbrg4P2H381tqGPRuFD0u_w;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 129
    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->onFeatureRemoved()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 131
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract onFeatureRemoved()V
.end method

.method public removeFeatureRemovedListener(Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;

    .prologue
    .line 120
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 123
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 167
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method protected final setFeatureState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 138
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    if-eq v0, p1, :cond_0

    .line 139
    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    .line 140
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyFeatureState(I)V

    .line 142
    :cond_0
    return-void
.end method

.method public setSlotId(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 110
    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    .line 111
    return-void
.end method
