.class Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;
.super Ljava/lang/Object;
.source "SettingConfirmationSnackbarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-get2(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-get1(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-get1(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$1;-><init>(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-set1(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Landroid/os/Handler;)Landroid/os/Handler;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->hide()V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-get3(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-get1(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-get1(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1$2;-><init>(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->-set1(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Landroid/os/Handler;)Landroid/os/Handler;

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$1;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->hide()V

    .line 94
    :cond_3
    return-void
.end method
