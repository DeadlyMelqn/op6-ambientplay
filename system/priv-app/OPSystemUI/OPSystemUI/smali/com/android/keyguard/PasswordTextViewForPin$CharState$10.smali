.class Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->-wrap1(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 567
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 568
    return-void
.end method
