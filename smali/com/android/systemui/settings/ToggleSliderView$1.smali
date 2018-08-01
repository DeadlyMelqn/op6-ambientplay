.class Lcom/android/systemui/settings/ToggleSliderView$1;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/ToggleSliderView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "toggle"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get3(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get0(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get0(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->-get5(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSliderView;->-get3(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v4

    const/4 v5, 0x0

    move v3, p2

    .line 144
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get1(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get1(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get4(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 151
    :cond_1
    return-void
.end method
