.class Landroid/companion/CompanionDeviceManager$CallbackProxy;
.super Landroid/companion/IFindDeviceCallback$Stub;
.source "CompanionDeviceManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackProxy"
.end annotation


# instance fields
.field private mCallback:Landroid/companion/CompanionDeviceManager$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mRequest:Landroid/companion/AssociationRequest;

.field final synthetic this$0:Landroid/companion/CompanionDeviceManager;


# direct methods
.method private constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Landroid/companion/CompanionDeviceManager;
    .param p2, "request"    # Landroid/companion/AssociationRequest;
    .param p3, "callback"    # Landroid/companion/CompanionDeviceManager$Callback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 274
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-direct {p0}, Landroid/companion/IFindDeviceCallback$Stub;-><init>()V

    .line 275
    iput-object p3, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 276
    iput-object p4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    .line 277
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    .line 278
    invoke-static {p1}, Landroid/companion/CompanionDeviceManager;->-wrap0(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$CallbackProxy;)V
    .locals 0
    .param p1, "this$0"    # Landroid/companion/CompanionDeviceManager;
    .param p2, "request"    # Landroid/companion/AssociationRequest;
    .param p3, "callback"    # Landroid/companion/CompanionDeviceManager$Callback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "-this4"    # Landroid/companion/CompanionDeviceManager$CallbackProxy;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/CompanionDeviceManager$CallbackProxy;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-android_companion_CompanionDeviceManager$CallbackProxy_10810(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "launcher"    # Landroid/app/PendingIntent;

    .prologue
    .line 286
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 287
    .local v0, "callback":Landroid/companion/CompanionDeviceManager$Callback;
    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/companion/CompanionDeviceManager$Callback;->onDeviceFound(Landroid/content/IntentSender;)V

    return-void
.end method

.method synthetic lambda$-android_companion_CompanionDeviceManager$CallbackProxy_11183(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/CharSequence;

    .prologue
    .line 297
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 298
    .local v0, "callback":Landroid/companion/CompanionDeviceManager$Callback;
    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceManager$Callback;->onFailure(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 317
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 305
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->-wrap0(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object v1

    if-eq p1, v1, :cond_0

    return-void

    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->-get0(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v3}, Landroid/companion/CompanionDeviceManager;->-wrap1(Landroid/companion/CompanionDeviceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p0, v3}, Landroid/companion/ICompanionDeviceManager;->stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->-wrap0(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 312
    iput-object v4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 313
    iput-object v4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    .line 314
    iput-object v4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    .line 315
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 320
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 319
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 322
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 318
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 321
    return-void
.end method

.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/CharSequence;

    .prologue
    .line 294
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    .line 295
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    new-instance v1, Landroid/companion/-$Lambda$5JzRO2PPKyhIE1CwHHamoNS-two;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Landroid/companion/-$Lambda$5JzRO2PPKyhIE1CwHHamoNS-two;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method public onSuccess(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "launcher"    # Landroid/app/PendingIntent;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    .line 284
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    new-instance v1, Landroid/companion/-$Lambda$5JzRO2PPKyhIE1CwHHamoNS-two;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Landroid/companion/-$Lambda$5JzRO2PPKyhIE1CwHHamoNS-two;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method
