.class Lcom/android/systemui/settings/BrightnessController$2$1;
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
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$2$1;->this$1:Lcom/android/systemui/settings/BrightnessController$2;

    iput p2, p0, Lcom/android/systemui/settings/BrightnessController$2$1;->val$val:I

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2$1;->this$1:Lcom/android/systemui/settings/BrightnessController$2;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    const-string/jumbo v1, "screen_brightness"

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController$2$1;->val$val:I

    .line 214
    const/4 v3, -0x2

    .line 212
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 215
    return-void
.end method
