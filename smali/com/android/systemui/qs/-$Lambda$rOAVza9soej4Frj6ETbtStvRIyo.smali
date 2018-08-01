.class final synthetic Lcom/android/systemui/qs/-$Lambda$rOAVza9soej4Frj6ETbtStvRIyo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/-$Lambda$rOAVza9soej4Frj6ETbtStvRIyo;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSDetailItems;

    iget v1, p0, Lcom/android/systemui/qs/-$Lambda$rOAVza9soej4Frj6ETbtStvRIyo;->-$f0:I

    iget v2, p0, Lcom/android/systemui/qs/-$Lambda$rOAVza9soej4Frj6ETbtStvRIyo;->-$f1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->lambda$-com_android_systemui_qs_QSDetailItems_3811(II)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/-$Lambda$rOAVza9soej4Frj6ETbtStvRIyo;->-$f0:I

    iput p2, p0, Lcom/android/systemui/qs/-$Lambda$rOAVza9soej4Frj6ETbtStvRIyo;->-$f1:I

    iput-object p3, p0, Lcom/android/systemui/qs/-$Lambda$rOAVza9soej4Frj6ETbtStvRIyo;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/-$Lambda$rOAVza9soej4Frj6ETbtStvRIyo;->$m$0()V

    return-void
.end method
