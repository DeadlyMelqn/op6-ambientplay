.class Lcom/android/systemui/statusbar/phone/DozeScrimController$6;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-wrap0(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get2(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get1(Lcom/android/systemui/statusbar/phone/DozeScrimController;)F

    move-result v1

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-wrap4(Lcom/android/systemui/statusbar/phone/DozeScrimController;FJ)V

    .line 389
    :cond_0
    return-void
.end method
