.class Lcom/android/keyguard/KeyguardSimPinView$2;
.super Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p2, "this$0_1"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p3, "$anonymous0"    # Ljava/lang/String;
    .param p4, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    .line 285
    invoke-direct {p0, p1, p3, p4}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    .line 1
    return-void
.end method


# virtual methods
.method onSimCheckResponse(II)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPinView$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView$2$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView$2;II)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method
