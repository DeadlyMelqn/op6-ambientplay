.class Lcom/android/server/policy/OemPhoneWindowManager$11$2;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager$11;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OemPhoneWindowManager$11;

.field final synthetic val$availableApps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager$11;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/OemPhoneWindowManager$11;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$11$2;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$11;

    iput-object p2, p0, Lcom/android/server/policy/OemPhoneWindowManager$11$2;->val$availableApps:Ljava/util/ArrayList;

    .line 2253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2255
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2256
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$11$2;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$11;

    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager$11;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$11$2;->val$availableApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->index:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap9(Lcom/android/server/policy/OemPhoneWindowManager;IZZ)V

    .line 2257
    return-void
.end method
