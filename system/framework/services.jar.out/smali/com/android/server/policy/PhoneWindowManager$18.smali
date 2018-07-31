.class Lcom/android/server/policy/PhoneWindowManager$18;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2589
    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .locals 2
    .param p1, "transit"    # I

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap3(Lcom/android/server/policy/PhoneWindowManager;ILandroid/view/animation/Animation;)I

    .line 2600
    return-void
.end method

.method public onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)I
    .locals 1
    .param p1, "transit"    # I
    .param p2, "openToken"    # Landroid/os/IBinder;
    .param p3, "closeToken"    # Landroid/os/IBinder;
    .param p4, "openAnimation"    # Landroid/view/animation/Animation;
    .param p5, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, p1, p4}, Lcom/android/server/policy/PhoneWindowManager;->-wrap3(Lcom/android/server/policy/PhoneWindowManager;ILandroid/view/animation/Animation;)I

    move-result v0

    return v0
.end method
