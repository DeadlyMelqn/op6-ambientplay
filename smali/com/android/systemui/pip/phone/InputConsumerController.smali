.class public Lcom/android/systemui/pip/phone/InputConsumerController;
.super Ljava/lang/Object;
.source "InputConsumerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;,
        Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;,
        Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

.field private mListener:Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;

.field private mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/InputConsumerController;)Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/InputConsumerController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mListener:Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/phone/InputConsumerController;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/view/IWindowManager;)V
    .locals 0
    .param p1, "windowManager"    # Landroid/view/IWindowManager;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/InputConsumerController;->registerInputConsumer()V

    .line 91
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/pip/phone/InputConsumerController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "registered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    return-void

    .line 159
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerInputConsumer()V
    .locals 4

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    if-nez v2, :cond_0

    .line 124
    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    .line 126
    .local v1, "inputChannel":Landroid/view/InputChannel;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v3, "pip_input_consumer"

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 127
    iget-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v3, "pip_input_consumer"

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->createInputConsumer(Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    new-instance v2, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;-><init>(Lcom/android/systemui/pip/phone/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    .line 132
    iget-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    .line 136
    .end local v1    # "inputChannel":Landroid/view/InputChannel;
    :cond_0
    return-void

    .line 128
    .restart local v1    # "inputChannel":Landroid/view/InputChannel;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/systemui/pip/phone/InputConsumerController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to create PIP input consumer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRegistrationListener(Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    .line 108
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchListener(Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mListener:Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;

    .line 98
    return-void
.end method

.method public unregisterInputConsumer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v2, "pip_input_consumer"

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;->dispose()V

    .line 149
    iput-object v3, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    .line 150
    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    .line 154
    :cond_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/systemui/pip/phone/InputConsumerController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to destroy PIP input consumer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
