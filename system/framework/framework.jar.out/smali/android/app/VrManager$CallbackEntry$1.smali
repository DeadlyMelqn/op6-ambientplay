.class Landroid/app/VrManager$CallbackEntry$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "VrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VrManager$CallbackEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/VrManager$CallbackEntry;


# direct methods
.method constructor <init>(Landroid/app/VrManager$CallbackEntry;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/VrManager$CallbackEntry;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/app/VrManager$CallbackEntry$1;->this$1:Landroid/app/VrManager$CallbackEntry;

    .line 27
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-android_app_VrManager$CallbackEntry$1_902(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 30
    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$1;->this$1:Landroid/app/VrManager$CallbackEntry;

    iget-object v0, v0, Landroid/app/VrManager$CallbackEntry;->mCallback:Landroid/app/VrStateCallback;

    invoke-virtual {v0, p1}, Landroid/app/VrStateCallback;->onVrStateChanged(Z)V

    return-void
.end method

.method public onVrStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 30
    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$1;->this$1:Landroid/app/VrManager$CallbackEntry;

    iget-object v0, v0, Landroid/app/VrManager$CallbackEntry;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p0}, Landroid/app/-$Lambda$BjtyKj7ksh5kcpFCATScxTJ5PrQ;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method
