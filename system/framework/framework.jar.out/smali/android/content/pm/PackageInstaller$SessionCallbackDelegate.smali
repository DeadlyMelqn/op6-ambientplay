.class Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
.super Landroid/content/pm/IPackageInstallerCallback$Stub;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionCallbackDelegate"
.end annotation


# static fields
.field private static final MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field private static final MSG_SESSION_BADGING_CHANGED:I = 0x2

.field private static final MSG_SESSION_CREATED:I = 0x1

.field private static final MSG_SESSION_FINISHED:I = 0x5

.field private static final MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field final mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Looper;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 594
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerCallback$Stub;-><init>()V

    .line 595
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 596
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 597
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 601
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 602
    .local v1, "sessionId":I
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 620
    return v2

    .line 604
    :pswitch_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$SessionCallback;->onCreated(I)V

    .line 605
    return v3

    .line 607
    :pswitch_1
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$SessionCallback;->onBadgingChanged(I)V

    .line 608
    return v3

    .line 610
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 611
    .local v0, "active":Z
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageInstaller$SessionCallback;->onActiveChanged(IZ)V

    .line 612
    return v3

    .line 610
    .end local v0    # "active":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_0

    .line 614
    .end local v0    # "active":Z
    :pswitch_3
    iget-object v4, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageInstaller$SessionCallback;->onProgressChanged(IF)V

    .line 615
    return v3

    .line 617
    :pswitch_4
    iget-object v4, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageInstaller$SessionCallback;->onFinished(IZ)V

    .line 618
    return v3

    .line 602
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onSessionActiveChanged(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "active"    # Z

    .prologue
    .line 635
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 637
    return-void

    .line 635
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSessionBadgingChanged(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .prologue
    .line 630
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 631
    return-void
.end method

.method public onSessionCreated(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .prologue
    .line 625
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 626
    return-void
.end method

.method public onSessionFinished(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "success"    # Z

    .prologue
    .line 647
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 649
    return-void

    .line 647
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSessionProgressChanged(IF)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "progress"    # F

    .prologue
    .line 641
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 643
    return-void
.end method
