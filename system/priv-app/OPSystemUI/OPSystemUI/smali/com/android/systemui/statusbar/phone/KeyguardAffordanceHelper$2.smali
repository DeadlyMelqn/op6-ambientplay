.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    .line 82
    return-void
.end method
