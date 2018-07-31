.class Lcom/android/systemui/settings/BrightnessController$2$2;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/BrightnessController$2;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/settings/BrightnessController$2;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$2$2;->this$1:Lcom/android/systemui/settings/BrightnessController$2;

    iput p2, p0, Lcom/android/systemui/settings/BrightnessController$2$2;->val$val:I

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2$2;->this$1:Lcom/android/systemui/settings/BrightnessController$2;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    const-string/jumbo v1, "screen_auto_brightness_adj"

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController$2$2;->val$val:I

    int-to-float v2, v2

    .line 221
    const/4 v3, -0x2

    .line 219
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 222
    return-void
.end method
