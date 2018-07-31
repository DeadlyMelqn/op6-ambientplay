.class public Landroid/app/VrManager;
.super Ljava/lang/Object;
.source "VrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/VrManager$CallbackEntry;
    }
.end annotation


# instance fields
.field private mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/VrStateCallback;",
            "Landroid/app/VrManager$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/service/vr/IVrManager;


# direct methods
.method public constructor <init>(Landroid/service/vr/IVrManager;)V
    .locals 1
    .param p1, "service"    # Landroid/service/vr/IVrManager;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/VrManager;->mCallbackMap:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    .line 58
    return-void
.end method


# virtual methods
.method public getPersistentVrModeEnabled()Z
    .locals 2

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->getPersistentVrModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 147
    const/4 v1, 0x0

    return v1
.end method

.method public getVrModeEnabled()Z
    .locals 2

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->getVrModeState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 130
    const/4 v1, 0x0

    return v1
.end method

.method public registerVrStateCallback(Landroid/app/VrStateCallback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "callback"    # Landroid/app/VrStateCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/app/VrManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    :cond_0
    return-void

    .line 75
    :cond_1
    new-instance v1, Landroid/app/VrManager$CallbackEntry;

    invoke-direct {v1, p1, p2}, Landroid/app/VrManager$CallbackEntry;-><init>(Landroid/app/VrStateCallback;Landroid/os/Handler;)V

    .line 76
    .local v1, "entry":Landroid/app/VrManager$CallbackEntry;
    iget-object v3, p0, Landroid/app/VrManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :try_start_0
    iget-object v3, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    iget-object v4, v1, Landroid/app/VrManager$CallbackEntry;->mStateCallback:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v3, v4}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 79
    iget-object v3, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    iget-object v4, v1, Landroid/app/VrManager$CallbackEntry;->mPersistentStateCallback:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v3, v4}, Landroid/service/vr/IVrManager;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/VrManager;->unregisterVrStateCallback(Landroid/app/VrStateCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v2

    .line 84
    .local v2, "ignore":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public setAndBindVrCompositor(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 195
    :try_start_0
    iget-object v2, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    .line 196
    if-nez p1, :cond_0

    .line 195
    :goto_0
    invoke-interface {v2, v1}, Landroid/service/vr/IVrManager;->setAndBindCompositor(Ljava/lang/String;)V

    .line 200
    :goto_1
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_1
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    invoke-interface {v1, p1}, Landroid/service/vr/IVrManager;->setPersistentVrModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 2
    .param p1, "vr2dDisplayProp"    # Landroid/app/Vr2dDisplayProperties;

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    invoke-interface {v1, p1}, Landroid/service/vr/IVrManager;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public unregisterVrStateCallback(Landroid/app/VrStateCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/VrStateCallback;

    .prologue
    .line 100
    iget-object v2, p0, Landroid/app/VrManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/VrManager$CallbackEntry;

    .line 101
    .local v0, "entry":Landroid/app/VrManager$CallbackEntry;
    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    iget-object v2, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    iget-object v3, v0, Landroid/app/VrManager$CallbackEntry;->mStateCallback:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    iget-object v3, v0, Landroid/app/VrManager$CallbackEntry;->mPersistentStateCallback:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :cond_0
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v1

    .local v1, "ignore":Landroid/os/RemoteException;
    goto :goto_1

    .line 104
    .end local v1    # "ignore":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .restart local v1    # "ignore":Landroid/os/RemoteException;
    goto :goto_0
.end method
