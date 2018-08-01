.class Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingConfirmationSnackbarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->hide()V
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$4;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .line 235
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$4;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->setVisibility(I)V

    .line 239
    return-void
.end method
