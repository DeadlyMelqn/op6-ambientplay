.class final synthetic Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;
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
    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/DatePickerCalendarDelegate;

    invoke-virtual {v0}, Landroid/widget/DatePickerCalendarDelegate;->lambda$-android_widget_DatePickerCalendarDelegate_13424()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/DateTimeView;

    invoke-static {v0}, Landroid/widget/DateTimeView$ReceiverInfo;->lambda$-android_widget_DateTimeView$ReceiverInfo_16958(Landroid/widget/DateTimeView;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->lambda$-android_widget_SearchView$SearchAutoComplete_74041()V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->lambda$-android_widget_SearchView$SearchAutoComplete_74041()V

    return-void
.end method

.method private final synthetic $m$4()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->lambda$-android_widget_SearchView$SearchAutoComplete_74041()V

    return-void
.end method

.method private final synthetic $m$5()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->lambda$-android_widget_SearchView$SearchAutoComplete_74041()V

    return-void
.end method

.method private final synthetic $m$6()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->-android_widget_SelectionActionModeHelper$TextClassificationAsyncTask-mthref-0()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$id:B

    iput-object p2, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$3()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$4()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$5()V

    return-void

    :pswitch_6
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$6()V

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
    .end packed-switch
.end method
