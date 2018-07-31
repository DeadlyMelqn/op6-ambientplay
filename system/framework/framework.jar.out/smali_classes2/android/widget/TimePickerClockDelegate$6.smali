.class Landroid/widget/TimePickerClockDelegate$6;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "focused"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 981
    if-eqz p2, :cond_0

    .line 982
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 997
    return-void

    .line 984
    :sswitch_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->-wrap1(Landroid/widget/TimePickerClockDelegate;I)V

    .line 1000
    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-wrap6(Landroid/widget/TimePickerClockDelegate;)V

    .line 1002
    :cond_0
    return-void

    .line 987
    :sswitch_1
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap1(Landroid/widget/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 990
    :sswitch_2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    .line 993
    :sswitch_3
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v1, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    .line 982
    nop

    :sswitch_data_0
    .sparse-switch
        0x10201a5 -> :sswitch_0
        0x1020289 -> :sswitch_2
        0x10202f7 -> :sswitch_3
        0x1020369 -> :sswitch_1
    .end sparse-switch
.end method
