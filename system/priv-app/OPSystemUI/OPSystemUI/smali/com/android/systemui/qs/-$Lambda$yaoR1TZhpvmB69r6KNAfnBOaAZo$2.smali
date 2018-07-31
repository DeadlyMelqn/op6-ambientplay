.class final synthetic Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;IIIIIIII)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I
    .param p6, "arg5"    # I
    .param p7, "arg6"    # I
    .param p8, "arg7"    # I
    .param p9, "arg8"    # I

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSFooterImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/qs/QSFooterImpl;->lambda$-com_android_systemui_qs_QSFooterImpl_6705(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/-$Lambda$yaoR1TZhpvmB69r6KNAfnBOaAZo$2;->$m$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method
