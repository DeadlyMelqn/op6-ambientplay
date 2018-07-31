.class final synthetic Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;
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
    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->-android_app_Dialog-mthref-0()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->lambda$-android_app_EnterTransitionCoordinator_8442()V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->-android_app_Fragment-mthref-0()V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/app/FragmentTransition;->lambda$-android_app_FragmentTransition_16724(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final synthetic $m$4()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v0}, Landroid/app/KeyguardManager$1;->-android_app_KeyguardManager$1-mthref-2(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private final synthetic $m$5()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v0}, Landroid/app/KeyguardManager$1;->-android_app_KeyguardManager$1-mthref-0(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private final synthetic $m$6()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v0}, Landroid/app/KeyguardManager$1;->-android_app_KeyguardManager$1-mthref-1(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private final synthetic $m$7()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->lambda$-android_app_LoadedApk$ReceiverDispatcher$Args_53997()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$id:B

    iput-object p2, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$3()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$4()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$5()V

    return-void

    :pswitch_6
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$6()V

    return-void

    :pswitch_7
    invoke-direct {p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;->$m$7()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
