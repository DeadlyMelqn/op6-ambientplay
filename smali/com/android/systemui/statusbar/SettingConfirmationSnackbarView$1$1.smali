.class Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$1;
.super Ljava/lang/Object;
.source "SettingConfirmationSnackbarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$1;->this$1:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$1;->this$1:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-get0(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$1;->this$1:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-get4(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$1;->this$1:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-get0(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$1;->this$1:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-get4(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;->onSettingConfirm(Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$1;->this$1:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-set0(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;)Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$1;->this$1:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-set2(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    return-void
.end method
