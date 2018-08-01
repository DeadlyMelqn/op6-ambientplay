.class final synthetic Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/doze/DozeSensors$Callback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(IZFF)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/doze/DozeTriggers;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/doze/DozeTriggers;->-com_android_systemui_doze_DozeTriggers-mthref-0(IZFF)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSensorPulse(IZFF)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw;->$m$0(IZFF)V

    return-void
.end method
