.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationEvent"
.end annotation


# static fields
.field static FILTERS:[Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field static LENGTHS:[I


# instance fields
.field final animationType:I

.field final changingView:Landroid/view/View;

.field darkAnimationOriginIndex:I

.field final eventStartTime:J

.field final filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field headsUpFromBottom:Z

.field final length:J

.field viewAfterChangingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x13

    .line 4610
    new-array v0, v3, [Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 4613
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4622
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4631
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4640
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4649
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 4653
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 4658
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 4662
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 4666
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 4675
    const/4 v1, 0x0

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 4678
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 4688
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 4692
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 4700
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 4709
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 4717
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 4725
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 4734
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 4742
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 4610
    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 4754
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    .line 4608
    return-void

    .line 4754
    nop

    :array_0
    .array-data 4
        0x1d0
        0x1d0
        0x168
        0x168
        0x168
        0x168
        0xdc
        0xdc
        0x168
        0xc8
        0x1c0
        0x168
        0x168
        0x168
        0x28a
        0xe6
        0xe6
        0x168
        0x168
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 4847
    sget-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    .line 4848
    return-void
.end method

.method constructor <init>(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "length"    # J

    .prologue
    .line 4855
    sget-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/stack/AnimationFilter;

    aget-object v6, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJLcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 4856
    return-void
.end method

.method constructor <init>(Landroid/view/View;IJLcom/android/systemui/statusbar/stack/AnimationFilter;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "length"    # J
    .param p5, "filter"    # Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .prologue
    .line 4858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4859
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->eventStartTime:J

    .line 4860
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    .line 4861
    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 4862
    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    .line 4863
    iput-object p5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 4864
    return-void
.end method

.method constructor <init>(Landroid/view/View;ILcom/android/systemui/statusbar/stack/AnimationFilter;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "filter"    # Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .prologue
    .line 4851
    sget-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJLcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 4852
    return-void
.end method

.method static combineLength(Ljava/util/ArrayList;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 4874
    .local p0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    const-wide/16 v2, 0x0

    .line 4875
    .local v2, "length":J
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4876
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 4877
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 4878
    .local v0, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 4879
    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 4880
    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    return-wide v6

    .line 4876
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4883
    .end local v0    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_1
    return-wide v2
.end method
