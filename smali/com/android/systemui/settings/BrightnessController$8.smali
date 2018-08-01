.class Lcom/android/systemui/settings/BrightnessController$8;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
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
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$8;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$8;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get0(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 311
    .local v0, "newMode":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$8;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1, v0}, Lcom/android/systemui/settings/BrightnessController;->-wrap0(Lcom/android/systemui/settings/BrightnessController;I)V

    .line 312
    return-void

    .line 310
    .end local v0    # "newMode":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "newMode":I
    goto :goto_0
.end method
