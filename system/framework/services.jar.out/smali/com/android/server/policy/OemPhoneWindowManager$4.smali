.class Lcom/android/server/policy/OemPhoneWindowManager$4;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$4;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$4;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->-get4(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$4;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->-get3(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$4;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->-set2(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 433
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$4;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap6(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V

    .line 435
    :cond_0
    return-void
.end method