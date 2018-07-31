.class final synthetic Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;->lambda$-com_android_internal_widget_FloatingToolbar$FloatingToolbarPopup$13_68144()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$2;->-com_android_internal_widget_LockPatternUtils$2-mthref-0(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout$1;->lambda$-com_android_internal_widget_SwipeDismissLayout$1_4841()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;->$id:B

    iput-object p2, p0, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/-$Lambda$hZenqyGYSNt5KiruOSsv736MIDs;->$m$2()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
