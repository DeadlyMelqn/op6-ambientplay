.class final Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;
.super Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutofillWindowPresenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method static synthetic -com_android_server_autofill_ui_FillUi$AutofillWindowPresenter-mthref-0(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)V
    .locals 0

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/FillUi;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/FillUi;
    .param p2, "-this1"    # Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    return-void
.end method


# virtual methods
.method public hide(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "transitionEpicenter"    # Landroid/graphics/Rect;

    .prologue
    .line 374
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v1}, Lcom/android/server/autofill/ui/FillUi;->-get3(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$1;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 375
    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_ui_FillUi$AutofillWindowPresenter_13643(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi;->-get3(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->show(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .locals 3
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transitionEpicenter"    # Landroid/graphics/Rect;
    .param p3, "fitsSystemWindows"    # Z
    .param p4, "layoutDirection"    # I

    .prologue
    .line 364
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v0, "FillUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AutofillWindowPresenter.show(): fit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string/jumbo v2, ", epicenter="

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string/jumbo v2, ", dir="

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string/jumbo v2, ", params="

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/autofill/ui/-$Lambda$TTOM-vgvIOJotO3pKgpKhg7oNlE;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-void
.end method
