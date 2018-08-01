.class Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$2;
.super Ljava/lang/Object;
.source "SettingConfirmationSnackbarView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$2;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView$2;->this$0:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->hide()V

    .line 104
    return-void
.end method
