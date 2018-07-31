.class final Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMenuRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForDrag"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationMenuRow;Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;
    .param p2, "-this1"    # Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 537
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-get3(Lcom/android/systemui/statusbar/NotificationMenuRow;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 538
    .local v0, "absTransX":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-wrap1(Lcom/android/systemui/statusbar/NotificationMenuRow;)F

    move-result v1

    .line 539
    .local v1, "bounceBackToMenuWidth":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-get2(Lcom/android/systemui/statusbar/NotificationMenuRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float v2, v3, v4

    .line 540
    .local v2, "notiThreshold":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-wrap0(Lcom/android/systemui/statusbar/NotificationMenuRow;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    :cond_0
    float-to-double v4, v0

    float-to-double v6, v1

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_1

    .line 542
    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    .line 543
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-wrap2(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V

    .line 545
    :cond_1
    return-void
.end method
