.class Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;
.super Landroid/os/Handler;
.source "OemGestureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemGestureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemGestureButtonHandler"
.end annotation


# static fields
.field static final MSG_OEM_ADD_BUTTON:I = 0x1

.field static final MSG_OEM_EFFECT:I = 0xa

.field static final MSG_OEM_REMOVE_BUTTON:I = 0x3

.field static final MSG_OEM_REMOVE_BUTTON_TIMEOUT:I = 0x4

.field static final MSG_OEM_SCALE_BUTTON:I = 0x2

.field static final MSG_OEM_SCALE_UP_ANIMATION:I = 0x9

.field static final MSG_OEM_SEND_KEY:I = 0x6

.field static final MSG_OEM_SEND_SWITCH_KEY:I = 0x5

.field static final MSG_OEM_START_TRANSITION:I = 0x8

.field static final MSG_OEM_UPDATE_BACKGROUND:I = 0xb

.field static final MSG_OEM_UPDATE_REGION:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemGestureButton;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 771
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 772
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 776
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 778
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get3(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->-get2()[F

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->setSize()V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->-get2()[F

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/policy/OemGestureButton;->-get3(Lcom/android/server/policy/OemGestureButton;)I

    move-result v19

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->onPull(F)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get3(Lcom/android/server/policy/OemGestureButton;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set0(Lcom/android/server/policy/OemGestureButton;I)I

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 784
    const-wide/16 v18, 0x10

    const/16 v20, 0xa

    .line 783
    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 786
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->onRelease()V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set0(Lcom/android/server/policy/OemGestureButton;I)I

    goto/16 :goto_0

    .line 792
    :pswitch_1
    const-string/jumbo v17, "OemGestureButton"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MSG_OEM_SEND_KEY mPreparedKeycode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/policy/OemGestureButton;->-get11(Lcom/android/server/policy/OemGestureButton;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get11(Lcom/android/server/policy/OemGestureButton;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set1(Lcom/android/server/policy/OemGestureButton;I)I

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get11(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 797
    const/16 v18, 0x3

    .line 796
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-wrap5(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 800
    const/16 v18, 0x4

    .line 799
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 802
    const-wide/16 v18, 0x7d0

    const/16 v20, 0x4

    .line 801
    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 804
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_0

    .line 806
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get11(Lcom/android/server/policy/OemGestureButton;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-wrap8(Lcom/android/server/policy/OemGestureButton;I)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get10(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    if-nez v17, :cond_0

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 810
    const/16 v18, 0xa

    .line 809
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 815
    :pswitch_2
    const-string/jumbo v17, "OemGestureButton"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MSG_OEM_SEND_SWITCH_KEY edge="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/policy/OemGestureButton;->-get17(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 816
    const-string/jumbo v19, " mSwipeLongFireable="

    .line 815
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/policy/OemGestureButton;->-get16(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v19

    .line 815
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 816
    const-string/jumbo v19, " mIsKeyguardShowing="

    .line 815
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/policy/OemGestureButton;->-get6(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v19

    .line 815
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get17(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get16(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get6(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_0

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    const/16 v18, 0xbb

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set1(Lcom/android/server/policy/OemGestureButton;I)I

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set7(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set6(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 823
    sget-boolean v17, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v17, :cond_4

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 825
    const-string/jumbo v18, "op_gesture_button_guide_state"

    const/16 v19, 0x2

    .line 824
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 828
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get10(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    if-nez v17, :cond_5

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get15(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get13(Lcom/android/server/policy/OemGestureButton;)F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v19, v18

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 830
    .local v15, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get14(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get13(Lcom/android/server/policy/OemGestureButton;)F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v19, v18

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 835
    .local v16, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get13(Lcom/android/server/policy/OemGestureButton;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/policy/OemGestureButton;->-get12(Lcom/android/server/policy/OemGestureButton;)F

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton;->-wrap7(Lcom/android/server/policy/OemGestureButton;IIFF)V

    goto/16 :goto_0

    .line 832
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get14(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get13(Lcom/android/server/policy/OemGestureButton;)F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v19, v18

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 833
    .restart local v15    # "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get15(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get13(Lcom/android/server/policy/OemGestureButton;)F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v19, v18

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .restart local v16    # "y":I
    goto :goto_1

    .line 841
    .end local v15    # "x":I
    .end local v16    # "y":I
    :pswitch_3
    const-string/jumbo v17, "OemGestureButton"

    const-string/jumbo v18, "MSG_OEM_ADD_BUTTON"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-wrap4(Lcom/android/server/policy/OemGestureButton;)V

    goto/16 :goto_0

    .line 845
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/MotionEvent;

    .line 846
    .local v4, "event":Landroid/view/MotionEvent;
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    .line 847
    .local v11, "rawX":F
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    .line 848
    .local v14, "rawY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get10(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    if-nez v17, :cond_8

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get5(Lcom/android/server/policy/OemGestureButton;)F

    move-result v17

    sub-float v17, v17, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 856
    .local v10, "moveDistance":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    const/high16 v17, 0x41a00000    # 20.0f

    cmpl-float v17, v10, v17

    if-lez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get8(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 865
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get14(Lcom/android/server/policy/OemGestureButton;)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v10, v18

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v19, v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set3(Lcom/android/server/policy/OemGestureButton;F)F

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get14(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    div-int/lit8 v7, v17, 0x2

    .line 867
    .local v7, "half":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get12(Lcom/android/server/policy/OemGestureButton;)F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_9

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    div-float v18, v10, v18

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v19, v18

    const v19, 0x3f19999a    # 0.6f

    mul-float v18, v18, v19

    const v19, 0x3ecccccd    # 0.4f

    add-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set5(Lcom/android/server/policy/OemGestureButton;F)F

    .line 873
    :goto_3
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->-get0()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 874
    const-string/jumbo v17, "OemGestureButton"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MSG_OEM_SCALE_BUTTON setScaleX rawX="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " rawY="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 875
    const-string/jumbo v19, " moveDistance="

    .line 874
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 875
    const-string/jumbo v19, " mScaleAlpha="

    .line 874
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/policy/OemGestureButton;->-get12(Lcom/android/server/policy/OemGestureButton;)F

    move-result v19

    .line 874
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 875
    const-string/jumbo v19, " mScaleSize="

    .line 874
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/policy/OemGestureButton;->-get13(Lcom/android/server/policy/OemGestureButton;)F

    move-result v19

    .line 874
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get13(Lcom/android/server/policy/OemGestureButton;)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get13(Lcom/android/server/policy/OemGestureButton;)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/policy/OemGestureButton;->-get12(Lcom/android/server/policy/OemGestureButton;)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 853
    .end local v7    # "half":I
    .end local v10    # "moveDistance":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get4(Lcom/android/server/policy/OemGestureButton;)F

    move-result v17

    sub-float v17, v17, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .restart local v10    # "moveDistance":F
    goto/16 :goto_2

    .line 870
    .restart local v7    # "half":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    sub-float v18, v10, v18

    int-to-float v0, v7

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v19, v18

    const v19, 0x3dcccccc    # 0.099999994f

    mul-float v18, v18, v19

    const v19, 0x3e99999a    # 0.3f

    add-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set5(Lcom/android/server/policy/OemGestureButton;F)F

    goto/16 :goto_3

    .line 884
    .end local v4    # "event":Landroid/view/MotionEvent;
    .end local v7    # "half":I
    .end local v10    # "moveDistance":F
    .end local v11    # "rawX":F
    .end local v14    # "rawY":F
    :pswitch_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 885
    .local v12, "now":J
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 886
    :goto_4
    const-string/jumbo v17, "OemGestureButton"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MSG_OEM_REMOVE_BUTTON mGestureScreenShotView="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    return-void

    .line 885
    :cond_a
    const/4 v9, 0x0

    .local v9, "isWaitForHome":Z
    goto :goto_4

    .line 888
    .end local v9    # "isWaitForHome":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 889
    .local v5, "focus":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get7(Lcom/android/server/policy/OemGestureButton;)I

    move-result v17

    const/16 v18, 0xbb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 890
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v8

    .line 892
    :goto_5
    if-eqz v8, :cond_c

    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get9(Lcom/android/server/policy/OemGestureButton;)J

    move-result-wide v18

    cmp-long v17, v12, v18

    if-gez v17, :cond_c

    .line 893
    const-string/jumbo v17, "OemGestureButton"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MSG_OEM_REMOVE_BUTTON now="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " focus="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/android/server/policy/OemGestureButton;->-wrap2(Lcom/android/server/policy/OemGestureButton;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v17

    and-int v8, v8, v17

    .line 897
    :cond_c
    if-nez v8, :cond_11

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 899
    const/16 v18, 0x3

    .line 898
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v18, v0

    .line 901
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/16 v20, 0x3

    .line 900
    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 901
    const-wide/16 v20, 0xa

    .line 900
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 902
    sget-boolean v17, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v17, :cond_d

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->-get0()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 903
    :cond_d
    const-string/jumbo v17, "OemGestureButton"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MSG_OEM_REMOVE_BUTTON delay remove to wait for visible win:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_e
    return-void

    .line 890
    :cond_f
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v8

    .local v8, "isFocusShown":Z
    goto/16 :goto_5

    .line 889
    .end local v8    # "isFocusShown":Z
    :cond_10
    const/4 v8, 0x0

    .local v8, "isFocusShown":Z
    goto/16 :goto_5

    .line 907
    .end local v8    # "isFocusShown":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 908
    const/16 v18, 0x3

    .line 907
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 910
    const/16 v18, 0x4

    .line 909
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    if-eqz v17, :cond_12

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-wrap0(Lcom/android/server/policy/OemGestureButton;)Landroid/view/WindowManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 915
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 917
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Lcom/android/server/policy/OemGestureButton;->-set3(Lcom/android/server/policy/OemGestureButton;F)F

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set5(Lcom/android/server/policy/OemGestureButton;F)F

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set4(Lcom/android/server/policy/OemGestureButton;Z)Z

    goto/16 :goto_0

    .line 921
    .end local v5    # "focus":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v12    # "now":J
    :pswitch_6
    const-string/jumbo v17, "OemGestureButton"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MSG_OEM_REMOVE_BUTTON_TIMEOUT mGestureScreenShotView="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 923
    const/16 v18, 0x3

    .line 922
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    if-eqz v17, :cond_14

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-wrap0(Lcom/android/server/policy/OemGestureButton;)Landroid/view/WindowManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 928
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 930
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Lcom/android/server/policy/OemGestureButton;->-set3(Lcom/android/server/policy/OemGestureButton;F)F

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set5(Lcom/android/server/policy/OemGestureButton;F)F

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-set4(Lcom/android/server/policy/OemGestureButton;Z)Z

    goto/16 :goto_0

    .line 934
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-wrap9(Lcom/android/server/policy/OemGestureButton;)V

    goto/16 :goto_0

    .line 937
    :pswitch_8
    const-string/jumbo v17, "OemGestureButton"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MSG_OEM_START_TRANSITION mGestureScreenShotView="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_16

    return-void

    .line 939
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 943
    .local v6, "focusWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/android/server/policy/OemGestureButton;->-wrap2(Lcom/android/server/policy/OemGestureButton;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_17

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_19

    .line 944
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 945
    const/16 v18, 0x8

    .line 944
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 947
    const-wide/16 v18, 0xa

    const/16 v20, 0x8

    .line 946
    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 948
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->-get0()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 949
    const-string/jumbo v17, "OemGestureButton"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MSG_OEM_START_TRANSITION delay remove bg to wait for visible win:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_18
    return-void

    .line 953
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 958
    .end local v6    # "focusWin":Landroid/view/WindowManagerPolicy$WindowState;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->-get16(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 960
    const/16 v18, 0x3

    .line 959
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton;->-wrap6(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 963
    const/16 v18, 0x4

    .line 962
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    move-object/from16 v17, v0

    .line 965
    const-wide/16 v18, 0x7d0

    const/16 v20, 0x4

    .line 964
    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 969
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/policy/OemGestureButton;->setIgnoreNotchWallpaper()V

    goto/16 :goto_0

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method
