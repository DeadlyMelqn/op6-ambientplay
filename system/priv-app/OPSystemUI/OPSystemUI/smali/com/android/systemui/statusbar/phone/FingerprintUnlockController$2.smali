.class Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;
.super Ljava/lang/Object;
.source "FingerprintUnlockController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->-get1(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->-wrap1(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    .line 624
    :cond_0
    return-void
.end method
