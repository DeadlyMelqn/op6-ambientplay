.class Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$5;
.super Ljava/lang/Object;
.source "FingerprintUnlockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFinishedGoingToSleep(I)V
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$5;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$5;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintAuthFailed()V

    .line 492
    return-void
.end method
