.class Lcom/android/server/policy/OemPhoneWindowManager$11$3;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/OemPhoneWindowManager$11;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$11$3;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$11;

    .line 2263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$11$3;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$11;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$11;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    .line 2267
    return-void
.end method