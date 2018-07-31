.class Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
.super Ljava/lang/Object;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowPresenter"
.end annotation


# instance fields
.field final mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

.field final synthetic this$0:Landroid/view/autofill/AutofillPopupWindow;


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/autofill/AutofillPopupWindow;
    .param p2, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .prologue
    .line 334
    iput-object p1, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->this$0:Landroid/view/autofill/AutofillPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    .line 336
    return-void
.end method


# virtual methods
.method hide(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "transitionEpicenter"    # Landroid/graphics/Rect;

    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    invoke-interface {v1, p1}, Landroid/view/autofill/IAutofillWindowPresenter;->hide(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AutofillPopupWindow"

    const-string/jumbo v2, "Error hiding fill window"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .locals 3
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transitionEpicenter"    # Landroid/graphics/Rect;
    .param p3, "fitsSystemWindows"    # Z
    .param p4, "layoutDirection"    # I

    .prologue
    .line 349
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/autofill/IAutofillWindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AutofillPopupWindow"

    const-string/jumbo v2, "Error showing fill window"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method
