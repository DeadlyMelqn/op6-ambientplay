.class final Lcom/android/server/policy/OemCameraNotchGuide$H;
.super Landroid/os/Handler;
.source "OemCameraNotchGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemCameraNotchGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemCameraNotchGuide;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemCameraNotchGuide;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemCameraNotchGuide;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/policy/OemCameraNotchGuide$H;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    .line 145
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$H;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v0}, Lcom/android/server/policy/OemCameraNotchGuide;->-wrap1(Lcom/android/server/policy/OemCameraNotchGuide;)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$H;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v0}, Lcom/android/server/policy/OemCameraNotchGuide;->-wrap0(Lcom/android/server/policy/OemCameraNotchGuide;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
