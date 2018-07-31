.class final Lcom/android/server/secrecy/SecrecyService$ClientRecord;
.super Ljava/lang/Object;
.source "SecrecyService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/SecrecyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ClientRecord"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field final mReceiver:Landroid/secrecy/ISecrecyServiceReceiver;

.field final synthetic this$0:Lcom/android/server/secrecy/SecrecyService;


# direct methods
.method constructor <init>(Lcom/android/server/secrecy/SecrecyService;Landroid/os/IBinder;Landroid/secrecy/ISecrecyServiceReceiver;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/secrecy/SecrecyService;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/secrecy/ISecrecyServiceReceiver;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p3, p0, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->mReceiver:Landroid/secrecy/ISecrecyServiceReceiver;

    .line 170
    iput-object p2, p0, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->mBinder:Landroid/os/IBinder;

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SecrecyService"

    const-string/jumbo v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {v1}, Lcom/android/server/secrecy/SecrecyService;->-get0(Lcom/android/server/secrecy/SecrecyService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyService$ClientRecord;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void

    .line 182
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/util/NoSuchElementException;
    goto :goto_0
.end method
