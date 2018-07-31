.class final synthetic Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iget-boolean v1, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->-$f0:Z

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->lambda$-android_view_accessibility_AccessibilityManager_38231(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    iget-boolean v1, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->-$f0:Z

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->lambda$-android_view_accessibility_AccessibilityManager_40153(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    iget-boolean v1, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->-$f0:Z

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->lambda$-android_view_accessibility_AccessibilityManager_39190(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V

    return-void
.end method

.method public synthetic constructor <init>(BZLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->$id:B

    iput-boolean p2, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->-$f0:Z

    iput-object p3, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;->$m$2()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
