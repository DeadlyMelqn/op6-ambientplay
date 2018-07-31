.class Lcom/android/server/OemSceneModeController$5;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    iput p2, p0, Lcom/android/server/OemSceneModeController$5;->val$code:I

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 729
    iget v0, p0, Lcom/android/server/OemSceneModeController$5;->val$code:I

    packed-switch v0, :pswitch_data_0

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 731
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-get7(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->-get2(Lcom/android/server/OemSceneModeController;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneModeController;->-wrap3(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    goto :goto_0

    .line 734
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-get7(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneModeController;->-wrap3(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    goto :goto_0

    .line 737
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-get7(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneModeController;->-wrap3(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    .line 738
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-get2(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-get7(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneModeController;->-wrap3(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    goto :goto_0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
