.class final synthetic Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:F

.field private final synthetic -$f2:F

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$3;->-$f3:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/doze/DozeTriggers;

    iget-boolean v1, p0, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$3;->-$f0:Z

    iget v2, p0, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$3;->-$f1:F

    iget v3, p0, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$3;->-$f2:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/systemui/doze/DozeTriggers;->lambda$-com_android_systemui_doze_DozeTriggers_5468(ZFFI)V

    return-void
.end method

.method public synthetic constructor <init>(ZFFLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$3;->-$f0:Z

    iput p2, p0, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$3;->-$f1:F

    iput p3, p0, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$3;->-$f2:F

    iput-object p4, p0, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$3;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/-$Lambda$krmSGe4g6CSLLG4RW6_aYJyrfaw$3;->$m$0(I)V

    return-void
.end method
