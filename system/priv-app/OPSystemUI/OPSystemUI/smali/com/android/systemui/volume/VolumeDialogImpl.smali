.class public Lcom/android/systemui/volume/VolumeDialogImpl;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogImpl$1;,
        Lcom/android/systemui/volume/VolumeDialogImpl$2;,
        Lcom/android/systemui/volume/VolumeDialogImpl$3;,
        Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialogImpl$H;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActiveStream:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mBackgroundSliderTint:Landroid/content/res/ColorStateList;

.field private mBlackAccentColor:I

.field private mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mDensity:I

.field private mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogRowsView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mExpandButton:Landroid/widget/ImageButton;

.field private mExpandButtonAnimationDuration:I

.field private mExpandButtonAnimationRunning:Z

.field private mExpanded:Z

.field private mFontScale:F

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field private mHovering:Z

.field private mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private mOrientation:F

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private mPrevActiveStream:I

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowA11yStream:Z

.field private mShowFullZen:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mSysui:Lcom/android/systemui/SystemUI;

.field private mThemeColorExpandBtn:I

.field private mThemeColorFooterIcon:I

.field private mThemeColorFooterText:I

.field private mThemeColorIcon:I

.field private mThemeColorMode:I

.field private mThemeColorPrimary:I

.field private mThemeColorSeekbar:I

.field private mThemeColorSeekbarBackgroundColor:I

.field private mThemeColorSeekbarBackgroundDrawable:I

.field private mThemeColorSeekbarThumb:I

.field private mThemeColorText:I

.field private mVolumeExpendContent:Landroid/view/ViewGroup;

.field private mWhiteAccentColor:I

.field private mWindow:Landroid/view/Window;

.field private mWindowType:I

.field private mZenFooter:Lcom/android/systemui/volume/ZenFooter;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

.field private final mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/VolumeDialogImpl;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mFontScale:F

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/volume/VolumeDialogImpl;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:F

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialog$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/Window;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ZenFooter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDensity:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumeDialogImpl;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDensity:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/VolumeDialogImpl;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mFontScale:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/VolumeDialogImpl;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:F

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Lcom/android/systemui/volume/SafetyWarningDialog;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "ss"    # Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateDialogTopPadding()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandButtonH()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/volume/VolumeDialogImpl;ZZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "expanded"    # Z
    .param p2, "dismissing"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandedH(ZZ)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateFooterH()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "activeRow"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "forceupdate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyColorTheme(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateDialogBottomMarginH()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/SystemUI;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sysui"    # Lcom/android/systemui/SystemUI;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 130
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .line 153
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 154
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 165
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    .line 166
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWhiteAccentColor:I

    .line 167
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBlackAccentColor:I

    .line 168
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorPrimary:I

    .line 169
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    .line 170
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    .line 171
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    .line 172
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    .line 173
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundColor:I

    .line 175
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 177
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterIcon:I

    .line 178
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterText:I

    .line 179
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorExpandBtn:I

    .line 181
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 188
    iput v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mFontScale:F

    .line 192
    iput v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:F

    .line 1240
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1239
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 1371
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 1388
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 200
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSysui:Lcom/android/systemui/SystemUI;

    .line 204
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 205
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 208
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 211
    const v0, 0x7f0603f8

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 213
    const v0, 0x7f060343

    const v1, 0x42ffffff    # 127.99999f

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->loadColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBackgroundSliderTint:Landroid/content/res/ColorStateList;

    .line 215
    return-void
.end method

.method private addExistingRows()V
    .locals 8

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 475
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 477
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get9(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V

    .line 478
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 475
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 480
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_0
    return-void
.end method

.method private addRow(IIIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 453
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 454
    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 9
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z
    .param p5, "dynamic"    # Z

    .prologue
    const/4 v8, 0x1

    .line 458
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 459
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V

    .line 462
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "rowSize":I
    if-le v6, v8, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .local v7, "viewSize":I
    if-le v7, v8, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v7, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    add-int/lit8 v2, v6, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 471
    .end local v6    # "rowSize":I
    .end local v7    # "viewSize":I
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private applyAndroidTheme()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1722
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1723
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f060055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorPrimary:I

    .line 1724
    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    .line 1726
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    .line 1727
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    .line 1728
    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    .line 1731
    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterIcon:I

    .line 1732
    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterText:I

    .line 1733
    const v1, 0x7f060056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorExpandBtn:I

    .line 1734
    return-void
.end method

.method private applyBlackTheme()V
    .locals 2

    .prologue
    .line 1705
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1706
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f060071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorPrimary:I

    .line 1707
    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    .line 1708
    const v1, 0x7f060075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    .line 1709
    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    .line 1710
    const v1, 0x7f060073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterIcon:I

    .line 1711
    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterText:I

    .line 1712
    const v1, 0x7f060072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorExpandBtn:I

    .line 1714
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBlackAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    .line 1715
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBlackAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    .line 1716
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBlackAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    .line 1717
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBlackAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorExpandBtn:I

    .line 1719
    return-void
.end method

.method private applyColorTheme(Z)V
    .locals 3
    .param p1, "forceupdate"    # Z

    .prologue
    .line 1660
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/Utils;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    .line 1663
    .local v1, "theme":I
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->isAccentColorChanged(IZ)Z

    move-result v0

    .line 1666
    .local v0, "accentColorChanged":Z
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    if-ne v2, v1, :cond_0

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    xor-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 1667
    return-void

    .line 1670
    :cond_0
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    .line 1672
    packed-switch v1, :pswitch_data_0

    .line 1683
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyWhiteTheme()V

    .line 1688
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyColors()V

    .line 1689
    return-void

    .line 1674
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyWhiteTheme()V

    goto :goto_0

    .line 1677
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyBlackTheme()V

    goto :goto_0

    .line 1680
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyAndroidTheme()V

    goto :goto_0

    .line 1672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private applyColors()V
    .locals 5

    .prologue
    .line 1737
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorPrimary:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1738
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorExpandBtn:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1740
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getThumbBackground()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 1743
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1744
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1745
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1746
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1747
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1748
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1750
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1755
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0359

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1756
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a035b

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterText:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1757
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a035a

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1758
    return-void
.end method

.method private applyWhiteTheme()V
    .locals 2

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1693
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0603fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorPrimary:I

    .line 1694
    const v1, 0x7f060402

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    .line 1695
    const v1, 0x7f0603fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterIcon:I

    .line 1696
    const v1, 0x7f0603fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorFooterText:I

    .line 1698
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWhiteAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    .line 1699
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWhiteAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    .line 1700
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWhiteAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    .line 1701
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWhiteAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorExpandBtn:I

    .line 1702
    return-void
.end method

.method private computeTimeoutH()I
    .locals 2

    .prologue
    const/16 v1, 0x1388

    .line 658
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e20

    return v0

    .line 659
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    return v1

    .line 661
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_4

    :cond_3
    return v1

    .line 662
    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const/16 v0, 0x5dc

    return v0

    .line 663
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenFooter;->shouldShowIntroduction()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 664
    const/16 v0, 0x1770

    return v0

    .line 666
    :cond_6
    const/16 v0, 0xbb8

    return v0
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 497
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 498
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    .line 500
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 4

    .prologue
    .line 488
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 489
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    .line 490
    return-object v0

    .line 493
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-object v2
.end method

.method private getConservativeCollapseDuration()J
    .locals 2

    .prologue
    .line 720
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 520
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 521
    .local v2, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 523
    .local v0, "level":I
    :goto_0
    return v0

    .line 522
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    .restart local v0    # "level":I
    goto :goto_0

    .end local v0    # "level":I
    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 4
    .param p1, "ss"    # Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .prologue
    .line 1191
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1192
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    return-object v1

    .line 1195
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find translation for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private getTransition()Landroid/transition/AutoTransition;
    .locals 4

    .prologue
    .line 1203
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    .line 1204
    .local v0, "transition":Landroid/transition/AutoTransition;
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 1205
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 1206
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$12;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 1231
    return-object v0
.end method

.method private hasTouchFeature()Z
    .locals 2

    .prologue
    .line 1235
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1236
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private initDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const v2, 0x7f060343

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 248
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 250
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 251
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 252
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 253
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 255
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v10}, Landroid/view/Window;->clearFlags(I)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0128

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0, v9}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 265
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 266
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowType:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 267
    const/4 v0, -0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 268
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    const/16 v0, 0x31

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 270
    const v0, 0x7f0704a2

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 271
    const/16 v0, 0x30

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 272
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 273
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 277
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 278
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 279
    const v0, 0x42ffffff    # 127.99999f

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->loadColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBackgroundSliderTint:Landroid/content/res/ColorStateList;

    .line 282
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportSOCThreekey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0d00d5

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setContentView(I)V

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a034f

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0350

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    .line 301
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0351

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 302
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    .line 303
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0352

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    .line 304
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    .line 307
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 306
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0353

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeExpendContent:Landroid/view/ViewGroup;

    .line 313
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:F

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateDialogTopPadding()V

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateWindowWidthH()V

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandButtonH()V

    .line 320
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    .line 321
    new-instance v5, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 320
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 345
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    const v0, 0x7f0802cd

    const v1, 0x7f0802ce

    .line 351
    invoke-direct {p0, v10, v0, v1, v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 355
    const v0, 0x7f0802c7

    const v1, 0x7f0802ca

    .line 354
    invoke-direct {p0, v11, v0, v1, v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 357
    const/4 v0, 0x4

    .line 358
    const v1, 0x7f0802bc

    const v2, 0x7f0802bd

    .line 357
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 360
    const v0, 0x7f0802d2

    const v1, 0x7f0802d2

    .line 359
    invoke-direct {p0, v8, v0, v1, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 361
    const/4 v0, 0x6

    .line 362
    const v1, 0x7f0802be

    const v2, 0x7f0802be

    .line 361
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 364
    const v0, 0x7f0802d0

    const v1, 0x7f0802d1

    .line 363
    invoke-direct {p0, v9, v0, v1, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 365
    const/16 v0, 0xa

    const v1, 0x7f0802bb

    .line 366
    const v2, 0x7f0802bb

    .line 365
    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 377
    :goto_2
    const v0, 0x7f0b0070

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    .line 378
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0358

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenFooter;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    .line 380
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSysui:Lcom/android/systemui/SystemUI;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/SystemUI;Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a0330

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerZenModePanel;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    .line 383
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V

    .line 389
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBlackAccentColor:I

    .line 390
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWhiteAccentColor:I

    .line 392
    const v0, 0x7f060121

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundColor:I

    .line 394
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 396
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0d0157

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setContentView(I)V

    goto/16 :goto_0

    :cond_1
    move v0, v8

    .line 307
    goto/16 :goto_1

    .line 371
    :cond_2
    const v0, 0x7f0802c7

    const v1, 0x7f0802ca

    .line 370
    invoke-direct {p0, v11, v0, v1, v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    goto :goto_2

    .line 375
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->addExistingRows()V

    goto :goto_2
.end method

.method private initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "stream"    # I
    .param p3, "iconRes"    # I
    .param p4, "iconMuteRes"    # I
    .param p5, "important"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 530
    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set7(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 531
    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 532
    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set9(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 534
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportSOCThreekey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00d6

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 540
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 541
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 542
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0355

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 543
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 544
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 545
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 546
    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 549
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 573
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 574
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 576
    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 578
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 579
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    :goto_1
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0158

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0

    .line 619
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    goto :goto_1
.end method

.method private isAccentColorChanged(IZ)Z
    .locals 4
    .param p1, "theme"    # I
    .param p2, "forceupdate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1636
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 1638
    .local v0, "accentColor":I
    if-nez p1, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWhiteAccentColor:I

    if-eq v1, v0, :cond_0

    .line 1639
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWhiteAccentColor:I

    .line 1640
    return v2

    .line 1645
    :cond_0
    if-ne p1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBlackAccentColor:I

    if-eq v1, v0, :cond_1

    .line 1646
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBlackAccentColor:I

    .line 1647
    return v2

    .line 1650
    :cond_1
    return v3
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private loadColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "colorResId"    # I
    .param p2, "mask"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    and-int/2addr v0, p2

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 11
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    const/4 v4, 0x1

    .line 838
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v6

    .line 839
    .local v6, "animating":Z
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChangedH animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 841
    if-eqz v6, :cond_1

    .line 842
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingStateChanged:Z

    .line 843
    return-void

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 847
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 848
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 849
    .local v1, "stream":I
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 850
    .local v10, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    iget-boolean v0, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v0, :cond_3

    .line 847
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 852
    :cond_3
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " onStateChangedH stream:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 855
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    if-nez v0, :cond_2

    .line 856
    const v2, 0x7f0802cb

    const v3, 0x7f0802cc

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_1

    .line 861
    .end local v1    # "stream":I
    .end local v10    # "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, v2, :cond_5

    .line 862
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    .line 863
    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 864
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 865
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 867
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "row$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 868
    .local v8, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-direct {p0, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_2

    .line 870
    .end local v8    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateFooterH()V

    .line 871
    return-void
.end method

.method private prepareForCollapse()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 724
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCollapseTime:J

    .line 726
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateDialogBottomMarginH()V

    .line 727
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getConservativeCollapseDuration()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessageDelayed(IJ)Z

    .line 728
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    .line 1143
    if-nez p1, :cond_1

    .line 1144
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 1146
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1147
    .local v0, "r":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    .line 1150
    .end local v0    # "r":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1153
    :cond_3
    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 5
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 1156
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1157
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1159
    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " setStreamImportantH stream:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " important:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set9(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 1162
    return-void

    .line 1165
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "activeRow"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    const/16 v4, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 788
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 789
    .local v0, "isActive":Z
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 790
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return v1

    .line 788
    .end local v0    # "isActive":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isActive":Z
    goto :goto_0

    .line 795
    :cond_1
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 796
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    if-ne v3, v4, :cond_2

    .line 797
    return v2

    .line 800
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v3, :cond_5

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v0, v2

    .end local v0    # "isActive":Z
    :cond_4
    :goto_1
    return v0

    .line 801
    .restart local v0    # "isActive":Z
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v3, :cond_6

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get9(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 800
    if-nez v0, :cond_3

    .line 802
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_1
.end method

.method private showH(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 632
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 635
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 637
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 640
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyColorTheme(Z)V

    .line 642
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 643
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    .line 644
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 645
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 646
    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 1168
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    .line 1169
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 1168
    if-eqz v0, :cond_2

    .line 1170
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1171
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1172
    return-void

    .line 1174
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$11;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$11;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1185
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1187
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1188
    return-void

    .line 1170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private trimObsoleteH()V
    .locals 4

    .prologue
    .line 826
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 828
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 829
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 827
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 830
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 831
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 832
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 835
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_3
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    .prologue
    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCollapseTime:J

    sub-long v2, v6, v8

    .line 708
    .local v2, "diff":J
    iget-wide v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getConservativeCollapseDuration()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    const/4 v1, 0x1

    .line 709
    .local v1, "collapsing":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 710
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 712
    .local v0, "bottomMargin":I
    :goto_1
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v5, :cond_1

    .line 713
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bottomMargin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 715
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    :cond_1
    return-void

    .line 708
    .end local v0    # "bottomMargin":I
    .end local v1    # "collapsing":Z
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "collapsing":Z
    goto :goto_0

    .line 711
    .restart local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07049c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "bottomMargin":I
    goto :goto_1
.end method

.method private updateDialogTopPadding()V
    .locals 7

    .prologue
    const v6, 0x7f070306

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1338
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportSOCThreekey()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1340
    :cond_0
    return-void

    .line 1342
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1343
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1344
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1345
    .local v1, "marginTop":I
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    .line 1346
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1351
    :goto_0
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1352
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "marginTop":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeExpendContent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 1356
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeExpendContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1357
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1358
    .restart local v1    # "marginTop":I
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_5

    .line 1359
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1364
    :goto_1
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1365
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeExpendContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1367
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "marginTop":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1368
    return-void

    .line 1348
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "marginTop":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1361
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 748
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateExpandButtonH"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 750
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isAttached()Z

    move-result v4

    :goto_0
    if-nez v4, :cond_1

    .line 751
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v4, :cond_4

    const v3, 0x7f0802c0

    .line 753
    .local v3, "res":I
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hasTouchFeature()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 754
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 760
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v4, :cond_6

    .line 761
    const v4, 0x7f1100f6

    .line 760
    :goto_3
    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 763
    .end local v3    # "res":I
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v4, :cond_2

    .line 764
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 765
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v4, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v4, :cond_2

    .line 768
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 770
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 771
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 772
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v5, Lcom/android/systemui/volume/VolumeDialogImpl$9;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$9;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 779
    iget v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    int-to-long v6, v6

    .line 772
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v0    # "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v4, v5

    .line 750
    goto :goto_0

    .line 752
    :cond_4
    const v3, 0x7f0802c2

    .restart local v3    # "res":I
    goto :goto_1

    .line 757
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    const v6, 0x7f0802cd

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 758
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 761
    :cond_6
    const v4, 0x7f1100f7

    goto :goto_3

    .line 780
    .end local v3    # "res":I
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 781
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private updateExpandedH(ZZ)V
    .locals 4
    .param p1, "expanded"    # Z
    .param p2, "dismissing"    # Z

    .prologue
    .line 731
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 732
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isAttached()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    .line 734
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateExpandedH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandButtonH()V

    .line 736
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateFooterH()V

    .line 737
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 738
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    .line 739
    .local v0, "activeRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    if-nez p2, :cond_2

    .line 740
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 741
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTransition()Landroid/transition/AutoTransition;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 743
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 744
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 745
    return-void
.end method

.method private updateFooterH()V
    .locals 6

    .prologue
    .line 874
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateFooterH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenFooter;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    .line 877
    .local v3, "wasVisible":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportSOCThreekey()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    .line 882
    .local v2, "visible":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-static {v4}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 883
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTransition()Landroid/transition/AutoTransition;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 884
    if-eq v3, v2, :cond_1

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1

    .line 885
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->prepareForCollapse()V

    .line 887
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v4, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 888
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 890
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-virtual {v4}, Lcom/android/systemui/tuner/TunerZenModePanel;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    const/4 v1, 0x1

    .line 891
    .local v1, "fullWasVisible":Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowFullZen:Z

    if-eqz v4, :cond_6

    xor-int/lit8 v0, v2, 0x1

    .line 892
    :goto_3
    if-eq v1, v0, :cond_2

    .line 893
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-static {v4, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 894
    if-eqz v0, :cond_2

    .line 895
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/tuner/TunerZenModePanel;->setZenState(I)V

    .line 896
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    new-instance v5, Lcom/android/systemui/volume/VolumeDialogImpl$10;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$10;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/tuner/TunerZenModePanel;->setDoneListener(Landroid/view/View$OnClickListener;)V

    .line 904
    :cond_2
    return-void

    .line 875
    .end local v1    # "fullWasVisible":Z
    .end local v2    # "visible":Z
    .end local v3    # "wasVisible":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "wasVisible":Z
    goto :goto_0

    .line 877
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "visible":Z
    goto :goto_1

    .line 890
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "fullWasVisible":Z
    goto :goto_2

    .line 891
    :cond_6
    const/4 v0, 0x0

    .local v0, "fullVisible":Z
    goto :goto_3
.end method

.method private updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 6
    .param p1, "activeRow"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    .line 806
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateRowsH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v4, :cond_1

    .line 808
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 811
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "row$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 812
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    .line 813
    .local v0, "isActive":Z
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v3

    .line 814
    .local v3, "shouldBeVisible":Z
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 816
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 819
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 820
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    goto :goto_0

    .line 812
    .end local v0    # "isActive":Z
    .end local v3    # "shouldBeVisible":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isActive":Z
    goto :goto_1

    .line 823
    .end local v0    # "isActive":Z
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_4
    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 25
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    .line 907
    sget-boolean v19, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updateVolumeRowH s="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    return-void

    .line 909
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 910
    .local v16, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-nez v16, :cond_2

    return-void

    .line 911
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 912
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 913
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set10(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 915
    :cond_3
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get11(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 916
    const/16 v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set11(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 918
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/4 v6, 0x1

    .line 919
    .local v6, "isA11yStream":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/4 v10, 0x1

    .line 920
    .local v10, "isRingStream":Z
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    const/4 v12, 0x1

    .line 921
    .local v12, "isSystemStream":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    const/4 v7, 0x1

    .line 922
    .local v7, "isAlarmStream":Z
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    const/4 v8, 0x1

    .line 923
    .local v8, "isMusicStream":Z
    :goto_4
    if-eqz v10, :cond_15

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    const/4 v11, 0x1

    .line 925
    .local v11, "isRingVibrate":Z
    :goto_5
    if-eqz v10, :cond_17

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v19, v0

    if-nez v19, :cond_16

    const/4 v9, 0x1

    .line 927
    .local v9, "isRingSilent":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    const/4 v13, 0x1

    .line 928
    .local v13, "isZenAlarms":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    const/4 v14, 0x1

    .line 929
    .local v14, "isZenNone":Z
    :goto_8
    if-eqz v13, :cond_1b

    if-nez v10, :cond_1a

    move/from16 v18, v12

    .line 933
    :goto_9
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    if-eqz v10, :cond_5

    xor-int/lit8 v19, v18, 0x1

    if-eqz v19, :cond_5

    .line 934
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set10(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 939
    :cond_5
    move-object/from16 v0, v16

    iget v15, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 940
    .local v15, "max":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getMax()I

    move-result v19

    move/from16 v0, v19

    if-eq v15, v0, :cond_6

    .line 941
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->setMax(I)V

    .line 945
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 946
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    move-object/from16 v19, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 950
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    :cond_7
    xor-int/lit8 v4, v18, 0x1

    .line 951
    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 952
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    if-eqz v4, :cond_1f

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_b
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 956
    if-eqz v11, :cond_20

    const v5, 0x7f0802cf

    .line 970
    .local v5, "iconRes":I
    :goto_c
    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    .line 972
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportSOCThreekey()Z

    move-result v19

    if-eqz v19, :cond_27

    .line 973
    const v5, 0x7f0802ce

    .line 982
    :cond_8
    :goto_d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    move/from16 v0, v19

    if-eq v5, v0, :cond_a

    .line 983
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    if-eqz v19, :cond_9

    if-eqz v11, :cond_9

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate()V

    .line 986
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 987
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 990
    :cond_a
    const v19, 0x7f0802cf

    move/from16 v0, v19

    if-ne v5, v0, :cond_28

    const/16 v19, 0x3

    .line 989
    :goto_e
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set8(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 996
    if-eqz v4, :cond_36

    .line 997
    if-eqz v10, :cond_31

    .line 998
    if-eqz v11, :cond_2d

    .line 999
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 1001
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 1000
    const v22, 0x7f1105a7

    .line 999
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1037
    :goto_f
    if-eqz v18, :cond_b

    .line 1038
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set15(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 1042
    :cond_b
    xor-int/lit8 v3, v18, 0x1

    .line 1043
    .local v3, "enableSlider":Z
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_37

    if-nez v10, :cond_37

    xor-int/lit8 v19, v18, 0x1

    if-eqz v19, :cond_37

    const/16 v17, 0x0

    .line 1048
    .local v17, "vlevel":I
    :goto_10
    if-eqz v10, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-nez v19, :cond_c

    if-eqz v13, :cond_d

    .line 1052
    :cond_c
    const/16 v17, 0x0

    .line 1055
    :cond_d
    sget-boolean v19, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v19, :cond_e

    if-eqz v10, :cond_e

    .line 1056
    sget-object v19, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updateVolumeRowSliderH zenMuted:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " isZenAlarms:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V

    .line 1060
    return-void

    .line 918
    .end local v3    # "enableSlider":Z
    .end local v5    # "iconRes":I
    .end local v6    # "isA11yStream":Z
    .end local v7    # "isAlarmStream":Z
    .end local v8    # "isMusicStream":Z
    .end local v9    # "isRingSilent":Z
    .end local v10    # "isRingStream":Z
    .end local v11    # "isRingVibrate":Z
    .end local v12    # "isSystemStream":Z
    .end local v13    # "isZenAlarms":Z
    .end local v14    # "isZenNone":Z
    .end local v15    # "max":I
    .end local v17    # "vlevel":I
    :cond_f
    const/4 v6, 0x0

    .restart local v6    # "isA11yStream":Z
    goto/16 :goto_0

    .line 919
    :cond_10
    const/4 v10, 0x0

    .restart local v10    # "isRingStream":Z
    goto/16 :goto_1

    .line 920
    :cond_11
    const/4 v12, 0x0

    .restart local v12    # "isSystemStream":Z
    goto/16 :goto_2

    .line 921
    :cond_12
    const/4 v7, 0x0

    .restart local v7    # "isAlarmStream":Z
    goto/16 :goto_3

    .line 922
    :cond_13
    const/4 v8, 0x0

    .restart local v8    # "isMusicStream":Z
    goto/16 :goto_4

    .line 924
    :cond_14
    const/4 v11, 0x0

    .restart local v11    # "isRingVibrate":Z
    goto/16 :goto_5

    .line 923
    .end local v11    # "isRingVibrate":Z
    :cond_15
    const/4 v11, 0x0

    .restart local v11    # "isRingVibrate":Z
    goto/16 :goto_5

    .line 926
    :cond_16
    const/4 v9, 0x0

    .restart local v9    # "isRingSilent":Z
    goto/16 :goto_6

    .line 925
    .end local v9    # "isRingSilent":Z
    :cond_17
    const/4 v9, 0x0

    .restart local v9    # "isRingSilent":Z
    goto/16 :goto_6

    .line 927
    :cond_18
    const/4 v13, 0x0

    .restart local v13    # "isZenAlarms":Z
    goto/16 :goto_7

    .line 928
    :cond_19
    const/4 v14, 0x0

    .restart local v14    # "isZenNone":Z
    goto/16 :goto_8

    .line 929
    :cond_1a
    const/16 v18, 0x1

    .local v18, "zenMuted":Z
    goto/16 :goto_9

    .line 930
    .end local v18    # "zenMuted":Z
    :cond_1b
    if-eqz v14, :cond_1d

    if-nez v10, :cond_1c

    if-nez v12, :cond_1c

    if-nez v7, :cond_1c

    move/from16 v18, v8

    .local v18, "zenMuted":Z
    goto/16 :goto_9

    .end local v18    # "zenMuted":Z
    :cond_1c
    const/16 v18, 0x1

    .local v18, "zenMuted":Z
    goto/16 :goto_9

    .line 931
    .end local v18    # "zenMuted":Z
    :cond_1d
    const/16 v18, 0x0

    .restart local v18    # "zenMuted":Z
    goto/16 :goto_9

    .line 950
    .end local v18    # "zenMuted":Z
    .restart local v15    # "max":I
    :cond_1e
    const/4 v4, 0x0

    .local v4, "iconEnabled":Z
    goto/16 :goto_a

    .line 952
    .end local v4    # "iconEnabled":Z
    :cond_1f
    const/high16 v19, 0x3f000000    # 0.5f

    goto/16 :goto_b

    .line 957
    :cond_20
    if-nez v9, :cond_21

    if-eqz v18, :cond_22

    :cond_21
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get2(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    .restart local v5    # "iconRes":I
    goto/16 :goto_c

    .line 958
    .end local v5    # "iconRes":I
    :cond_22
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v19, v0

    if-eqz v19, :cond_24

    .line 959
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23

    const v5, 0x7f0802c9

    .restart local v5    # "iconRes":I
    goto/16 :goto_c

    .line 960
    .end local v5    # "iconRes":I
    :cond_23
    const v5, 0x7f0802c8

    .restart local v5    # "iconRes":I
    goto/16 :goto_c

    .line 961
    .end local v5    # "iconRes":I
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    move/from16 v19, v0

    if-eqz v19, :cond_25

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    if-nez v19, :cond_25

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    .restart local v5    # "iconRes":I
    goto/16 :goto_c

    .line 962
    .end local v5    # "iconRes":I
    :cond_25
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_26

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    .restart local v5    # "iconRes":I
    goto/16 :goto_c

    .end local v5    # "iconRes":I
    :cond_26
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    .restart local v5    # "iconRes":I
    goto/16 :goto_c

    .line 977
    :cond_27
    const v5, 0x7f0802cd

    goto/16 :goto_d

    .line 991
    :cond_28
    const v19, 0x7f0802c9

    move/from16 v0, v19

    if-eq v5, v0, :cond_29

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    move/from16 v0, v19

    if-ne v5, v0, :cond_2a

    .line 992
    :cond_29
    const/16 v19, 0x2

    goto/16 :goto_e

    .line 993
    :cond_2a
    const v19, 0x7f0802c8

    move/from16 v0, v19

    if-eq v5, v0, :cond_2b

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    move/from16 v0, v19

    if-ne v5, v0, :cond_2c

    .line 994
    :cond_2b
    const/16 v19, 0x1

    goto/16 :goto_e

    .line 995
    :cond_2c
    const/16 v19, 0x0

    goto/16 :goto_e

    .line 1003
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 1004
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 1005
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2e

    .line 1006
    const v19, 0x7f1105a9

    .line 1004
    :goto_11
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 1008
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 1004
    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1007
    :cond_2e
    const v19, 0x7f1105a8

    goto :goto_11

    .line 1010
    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 1011
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    move/from16 v19, v0

    if-eqz v19, :cond_30

    .line 1012
    const v19, 0x7f1105a6

    .line 1010
    :goto_12
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 1014
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 1010
    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1013
    :cond_30
    const v19, 0x7f1105a5

    goto :goto_12

    .line 1017
    :cond_31
    if-eqz v6, :cond_32

    .line 1018
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1020
    :cond_32
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-nez v19, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    move/from16 v19, v0

    if-eqz v19, :cond_34

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    if-nez v19, :cond_34

    .line 1021
    :cond_33
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 1022
    const v22, 0x7f1105a7

    .line 1021
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1025
    :cond_34
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 1026
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    move/from16 v19, v0

    if-eqz v19, :cond_35

    .line 1027
    const v19, 0x7f1105a6

    .line 1025
    :goto_13
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 1029
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 1025
    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1028
    :cond_35
    const v19, 0x7f1105a5

    goto :goto_13

    .line 1033
    :cond_36
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1044
    .restart local v3    # "enableSlider":Z
    :cond_37
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v17, v0

    .restart local v17    # "vlevel":I
    goto/16 :goto_10
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    .line 1079
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v1, 0x1

    .line 1081
    .local v1, "isRingStream":Z
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1082
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    .line 1083
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1084
    return-void

    .line 1079
    .end local v1    # "isRingStream":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isRingStream":Z
    goto :goto_0

    .line 1082
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1086
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    .line 1087
    .local v4, "progress":I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v2

    .line 1088
    .local v2, "level":I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v5, 0x1

    .line 1089
    .local v5, "rowVisible":Z
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 1090
    const-wide/16 v8, 0x3e8

    .line 1089
    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    const/4 v0, 0x1

    .line 1091
    .local v0, "inGracePeriod":Z
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    .line 1092
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    .line 1093
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "inGracePeriod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1095
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    .line 1094
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1096
    return-void

    .line 1088
    .end local v0    # "inGracePeriod":Z
    .end local v5    # "rowVisible":Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "rowVisible":Z
    goto :goto_2

    .line 1089
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "inGracePeriod":Z
    goto :goto_3

    .line 1098
    :cond_6
    if-ne p3, v4, :cond_8

    .line 1099
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    .line 1101
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    .line 1102
    sget-object v6, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "don\'t clamp if visible and vlevel is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_7
    return-void

    .line 1108
    :cond_8
    move v3, p3

    .line 1109
    .local v3, "newProgress":I
    if-eq v4, p3, :cond_b

    .line 1111
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_9

    if-eqz v1, :cond_9

    .line 1112
    sget-object v6, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowSliderH newProgress:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    .line 1117
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1118
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get1(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    if-ne v6, p3, :cond_a

    .line 1119
    return-void

    .line 1122
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v6, :cond_c

    .line 1123
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const-string/jumbo v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    aput p3, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1124
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1129
    :goto_4
    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set1(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1130
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1131
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 1140
    :cond_b
    :goto_5
    return-void

    .line 1126
    :cond_c
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1127
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput p3, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_4

    .line 1134
    :cond_d
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 1135
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1137
    :cond_e
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p3, v7}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_5
.end method

.method private updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 1063
    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 1064
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 1066
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 1068
    .local v0, "tint":Landroid/content/res/ColorStateList;
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get3(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-ne v0, v1, :cond_2

    return-void

    .line 1067
    .end local v0    # "tint":Landroid/content/res/ColorStateList;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .restart local v0    # "tint":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 1069
    :cond_2
    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-set3(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1070
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1071
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1073
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBackgroundSliderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1075
    return-void
.end method

.method private updateWindowWidthH()V
    .locals 8

    .prologue
    .line 416
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 418
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 420
    .local v0, "contentViewLp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 421
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateWindowWidth dm.w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 424
    .local v4, "w":I
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 425
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 428
    const v6, 0x7f07049f

    .line 427
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 429
    .local v3, "max":I
    if-le v4, v3, :cond_1

    .line 430
    move v4, v3

    .line 432
    :cond_1
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 433
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->destroy()V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenFooter;->cleanup()V

    .line 243
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public dismiss(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 629
    return-void
.end method

.method protected dismissH(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 670
    sget-boolean v2, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dismissH r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 674
    .local v1, "forceDismiss":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    .line 675
    return-void

    .line 672
    .end local v1    # "forceDismiss":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "forceDismiss":Z
    goto :goto_0

    .line 677
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 678
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v2, v6}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 679
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v2, :cond_3

    return-void

    .line 680
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 681
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogImpl$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    .line 687
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 689
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 690
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 691
    const-class v2, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 692
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 693
    const v4, 0x7f11059e

    .line 692
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 696
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v6, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 697
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 698
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 699
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v2, :cond_6

    .line 700
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "SafetyWarning dismissed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v3

    .line 704
    return-void

    .line 698
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dismissWaitForRipple(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$13;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 1632
    const-wide/16 v2, 0xc8

    .line 1627
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1633
    return-void
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 5
    .param p1, "windowType"    # I
    .param p2, "callback"    # Lcom/android/systemui/plugins/VolumeDialog$Callback;

    .prologue
    .line 218
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    .line 219
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowType:I

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 227
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sysui_show_full_zen"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 230
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDensity:I

    .line 232
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mFontScale:F

    .line 234
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 400
    const-string/jumbo v1, "sysui_show_full_zen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowFullZen:Z

    .line 403
    :cond_1
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 649
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 650
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 651
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 652
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 651
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 652
    int-to-long v4, v0

    .line 651
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 653
    sget-boolean v1, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    .line 655
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 442
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 443
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    .line 444
    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 448
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 449
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    .line 450
    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    return-void

    .line 437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 625
    return-void
.end method
