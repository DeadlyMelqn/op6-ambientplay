.class Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl$1;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;

.field final synthetic val$listener:Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# direct methods
.method constructor <init>(Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;
    .param p2, "$anonymous0"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "$anonymous1"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl$1;->this$1:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;

    iput-object p4, p0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl$1;->val$listener:Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    .line 89
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 1
    return-void
.end method


# virtual methods
.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl$1;->val$listener:Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    .line 92
    invoke-static {p1, p2, v0}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatBaseImpl;->handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
