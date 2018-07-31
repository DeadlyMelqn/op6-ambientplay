.class final synthetic Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->lambda$-com_android_systemui_statusbar_notification_NotificationIconDozeHelper_2497(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->lambda$-com_android_systemui_statusbar_notification_NotificationIconDozeHelper_2231(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final synthetic $m$2(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->lambda$-com_android_systemui_statusbar_notification_NotificationTemplateViewWrapper_9228(Landroid/widget/ProgressBar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final synthetic $m$3(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/util/Property;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->lambda$-com_android_systemui_statusbar_notification_PropertyAnimator_3329(Landroid/util/Property;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->$id:B

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->$m$1(Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->$m$2(Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;->$m$3(Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
