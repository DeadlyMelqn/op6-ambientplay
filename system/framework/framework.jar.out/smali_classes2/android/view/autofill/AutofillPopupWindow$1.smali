.class Landroid/view/autofill/AutofillPopupWindow$1;
.super Ljava/lang/Object;
.source "AutofillPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/autofill/AutofillPopupWindow;


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/autofill/AutofillPopupWindow;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/view/autofill/AutofillPopupWindow$1;->this$0:Landroid/view/autofill/AutofillPopupWindow;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$1;->this$0:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->dismiss()V

    .line 60
    return-void
.end method