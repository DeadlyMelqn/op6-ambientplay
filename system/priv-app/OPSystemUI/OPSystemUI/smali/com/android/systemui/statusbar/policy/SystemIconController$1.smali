.class Lcom/android/systemui/statusbar/policy/SystemIconController$1;
.super Ljava/lang/Object;
.source "SystemIconController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/SystemIconController;->refreshIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SystemIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SystemIconController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/SystemIconController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController$1;->this$0:Lcom/android/systemui/statusbar/policy/SystemIconController;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Lcom/android/systemui/statusbar/policy/SystemIconController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/android/systemui/statusbar/policy/SystemIconController;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Run reset runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController$1;->this$0:Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->-wrap0(Lcom/android/systemui/statusbar/policy/SystemIconController;)V

    .line 313
    return-void
.end method
