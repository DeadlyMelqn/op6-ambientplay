.class public Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;
.super Ljava/lang/Object;
.source "NotificationSnooze.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationSnooze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationSnoozeOption"
.end annotation


# instance fields
.field private mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private mConfirmation:Ljava/lang/CharSequence;

.field private mCriterion:Landroid/service/notification/SnoozeCriterion;

.field private mDescription:Ljava/lang/CharSequence;

.field private mMinutesToSnoozeFor:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationSnooze;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationSnooze;
    .param p2, "sc"    # Landroid/service/notification/SnoozeCriterion;
    .param p3, "minToSnoozeFor"    # I
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "confirmation"    # Ljava/lang/CharSequence;
    .param p6, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->this$0:Lcom/android/systemui/statusbar/NotificationSnooze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->mCriterion:Landroid/service/notification/SnoozeCriterion;

    .line 461
    iput p3, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->mMinutesToSnoozeFor:I

    .line 462
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->mDescription:Ljava/lang/CharSequence;

    .line 463
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->mConfirmation:Ljava/lang/CharSequence;

    .line 464
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 465
    return-void
.end method


# virtual methods
.method public getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public getConfirmation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->mConfirmation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMinutesToSnoozeFor()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->mMinutesToSnoozeFor:I

    return v0
.end method

.method public getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;->mCriterion:Landroid/service/notification/SnoozeCriterion;

    return-object v0
.end method
