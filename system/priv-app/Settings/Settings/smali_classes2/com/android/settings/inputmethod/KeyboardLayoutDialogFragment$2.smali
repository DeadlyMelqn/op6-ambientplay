.class Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$2;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$2;->this$0:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$2;->this$0:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-static {v0, p2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->-wrap0(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;I)V

    .line 109
    return-void
.end method
