.class Lcom/android/systemui/statusbar/phone/StatusBar$7;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 805
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(Z)V
    .locals 1
    .param p1, "dreaming"    # Z

    .prologue
    .line 808
    if-eqz p1, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    .line 811
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 816
    invoke-static {}, Landroid/widget/DateTimeView;->onTimeChangeByKeyguard()V

    .line 817
    return-void
.end method
