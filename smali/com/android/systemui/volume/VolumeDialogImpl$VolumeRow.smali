.class Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedIconRes:I

.field private cachedSliderTint:Landroid/content/res/ColorStateList;

.field private header:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageButton;

.field private iconMuteRes:I

.field private iconRes:I

.field private iconState:I

.field private important:Z

.field private lastAudibleLevel:I

.field private requestedLevel:I

.field private slider:Landroid/widget/SeekBar;

.field private ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

.field private stream:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget-wide v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    return-wide v0
.end method

.method static synthetic -get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedIconRes:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconState:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # Landroid/animation/ObjectAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # Landroid/widget/SeekBar;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    return-wide p1
.end method

.method static synthetic -set17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedIconRes:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # Landroid/widget/TextView;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # Landroid/widget/ImageButton;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconState:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    return p1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    .line 1352
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    .line 1334
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>()V

    return-void
.end method
