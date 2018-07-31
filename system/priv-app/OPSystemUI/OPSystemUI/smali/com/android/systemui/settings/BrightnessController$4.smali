.class Lcom/android/systemui/settings/BrightnessController$4;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 282
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get8(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 284
    const-string/jumbo v3, "screen_brightness_for_vr"

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->-get9(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v4

    .line 283
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 286
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get7(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v2

    .line 287
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get10(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->-get12(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 288
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->-get12(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v4

    sub-int v4, v1, v4

    .line 286
    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 305
    .end local v1    # "value":I
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get0(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get13(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 292
    const-string/jumbo v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    .line 291
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 294
    .local v0, "value":F
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get7(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v2

    .line 295
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    const/high16 v4, 0x45000000    # 2048.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 294
    const/16 v4, 0x800

    invoke-virtual {v2, v6, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 299
    .end local v0    # "value":F
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 300
    const-string/jumbo v3, "screen_brightness"

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->-get9(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v4

    .line 299
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 302
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get7(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get9(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->-get11(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 303
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->-get11(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v4

    sub-int v4, v1, v4

    .line 302
    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
