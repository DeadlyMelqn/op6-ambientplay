.class final synthetic Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/app/Fragment;

    check-cast p1, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->lambda$-com_android_systemui_fragments_FragmentHostManager_5414(Ljava/lang/String;Landroid/app/Fragment;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/app/Fragment;

    check-cast p1, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->lambda$-com_android_systemui_fragments_FragmentHostManager_5728(Ljava/lang/String;Landroid/app/Fragment;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;->$id:B

    iput-object p2, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw;->$m$1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
