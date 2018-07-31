.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final OP_DEBUG:Z


# instance fields
.field private mActivityEnabled:Z

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneContentDescription:Ljava/lang/String;

.field private mAirplaneIconId:I

.field private mBlockAirplane:Z

.field private mBlockEthernet:Z

.field private mBlockMobile:Z

.field private mBlockVoLte:Z

.field private mBlockVoWifi:Z

.field private mBlockWifi:Z

.field private mCount:I

.field private mCustEthernetVisible:Z

.field private mCustVoLteVisible:Z

.field private mCustVoWifiVisible:Z

.field private mCustVpnVisible:Z

.field private mCustWifiVisible:Z

.field private mCustomHideSignalIcon:Z

.field public mDarkIconColor:I

.field private mDarkIntensity:F

.field private final mEndPadding:I

.field private final mEndPaddingBatteryPercent:I

.field private final mEndPaddingNothingVisible:I

.field mEthernet:Landroid/widget/ImageView;

.field mEthernetDark:Landroid/widget/ImageView;

.field private mEthernetDescription:Ljava/lang/String;

.field mEthernetGroup:Landroid/view/ViewGroup;

.field private mEthernetIconId:I

.field private mEthernetVisible:Z

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mForceBlockWifi:Z

.field private final mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

.field private final mIconScaleFactor:F

.field private mIconTint:I

.field private mIsAirplaneMode:Z

.field public mIsStatusBar:Z

.field private mIsVoLteEnable:Z

.field private mIsVoWifiEnable:Z

.field private mLTEStatusResources:[I

.field private mLastAirplaneIconId:I

.field private mLastEthernetIconId:I

.field private mLastVpnIconId:I

.field private mLastWifiActivityId:I

.field private mLastWifiStrengthId:I

.field public mMobileDataIconColor:I

.field private final mMobileDataIconStartPadding:I

.field mMobileSignalGroup:Landroid/widget/LinearLayout;

.field private final mMobileSignalGroupEndPadding:I

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNoSims:Landroid/widget/ImageView;

.field mNoSimsCombo:Landroid/view/View;

.field mNoSimsDark:Landroid/widget/ImageView;

.field private mNoSimsIcon:I

.field private mNoSimsVisible:Z

.field private mOrientation:I

.field private mPhoneStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisionState:[I

.field private mReadIconsFromXML:Z

.field private final mSecondaryTelephonyPadding:I

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field public mSignalIconColor:I

.field private mSimDetected:Z

.field public mStatusbarMiscColor:I

.field private mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

.field private final mTintArea:Landroid/graphics/Rect;

.field mVoLteView:Landroid/widget/ImageView;

.field mVoWifiView:Landroid/widget/ImageView;

.field mVpn:Landroid/widget/ImageView;

.field private mVpnIconId:I

.field private mVpnVisible:Z

.field private final mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityEnabled:Z

.field public mWifiActivityIconColor:I

.field private mWifiActivityId:I

.field mWifiAirplaneSpacer:Landroid/view/View;

.field mWifiDark:Landroid/widget/ImageView;

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field public mWifiIconColor:I

.field private mWifiIn:Z

.field private mWifiOut:Z

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconStartPadding:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/SignalClusterView;)Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/SignalClusterView;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "slot"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->isDataDisable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/SignalClusterView;Z)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "isBranded"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->currentVpnIconId(Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/SignalClusterView;ZZZ)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "in"    # Z
    .param p2, "out"    # Z
    .param p3, "stacked"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/SignalClusterView;->getInOutIndicator(ZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getNoSimIcon()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "iconId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "tint"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    .line 84
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 97
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 99
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    .line 100
    iput v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    .line 101
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 102
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    .line 103
    iput v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 104
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 105
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 106
    iput v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 109
    iput v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    .line 110
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 111
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 112
    iput v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    .line 117
    iput v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 119
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    .line 129
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 152
    const-class v3, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/IconLogger;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    .line 161
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoWifiEnable:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoLteEnable:Z

    .line 163
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoLte:Z

    .line 164
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoWifi:Z

    .line 179
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVpnVisible:Z

    .line 180
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustEthernetVisible:Z

    .line 181
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVoWifiVisible:Z

    .line 182
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVoLteVisible:Z

    .line 183
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustWifiVisible:Z

    .line 184
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    .line 1442
    const/4 v3, 0x6

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    .line 1458
    filled-new-array {v5, v5}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x7f070263

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 203
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroupEndPadding:I

    .line 206
    const v3, 0x7f070262

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 205
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconStartPadding:I

    .line 207
    const v3, 0x7f0704ab

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 208
    const v3, 0x7f0703f8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    .line 209
    const v3, 0x7f07040d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    .line 211
    const v3, 0x7f07028b

    .line 210
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    .line 213
    const v3, 0x7f07040e

    .line 212
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingBatteryPercent:I

    .line 215
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 216
    .local v2, "typedValue":Landroid/util/TypedValue;
    const v3, 0x7f070436

    invoke-virtual {v0, v3, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 217
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    .line 218
    const-class v3, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 219
    const-class v3, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateActivityEnabled()V

    .line 221
    const v3, 0x7f050022

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mReadIconsFromXML:Z

    .line 223
    const/4 v1, 0x0

    .local v1, "slot":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    invoke-direct {p0, v1, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->getSlotProvisionStatus(II)I

    move-result v4

    aput v4, v3, v1

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mOrientation:I

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateCustIconVisible()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->readRenovateMods()V

    .line 231
    return-void
.end method

.method private apply()V
    .locals 25

    .prologue
    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    return-void

    .line 821
    :cond_0
    const/4 v7, 0x0

    .line 822
    .local v7, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    move-object/from16 v21, v0

    const-string/jumbo v22, "vpn"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    const/16 v20, 0x0

    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/SystemIconController;->setVisibility(Ljava/lang/String;I)V

    .line 825
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVpnVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 827
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    .line 831
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "vpn"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 837
    :goto_1
    sget-boolean v20, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v20, :cond_3

    const-string/jumbo v21, "SignalClusterView"

    const-string/jumbo v22, "vpn: %s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    const-string/jumbo v20, "VISIBLE"

    :goto_2
    const/16 v24, 0x0

    aput-object v20, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustEthernetVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 842
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 847
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "ethernet"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 855
    :goto_3
    sget-boolean v20, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v20, :cond_5

    const-string/jumbo v21, "SignalClusterView"

    .line 856
    const-string/jumbo v22, "ethernet: %s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 857
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    const-string/jumbo v20, "VISIBLE"

    :goto_4
    const/16 v24, 0x0

    aput-object v20, v23, v24

    .line 856
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 855
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 861
    const/4 v7, 0x1

    .line 864
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustWifiVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 868
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 871
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 873
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    .line 876
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 883
    :goto_5
    sget-boolean v20, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v20, :cond_9

    const-string/jumbo v21, "SignalClusterView"

    .line 884
    const-string/jumbo v22, "wifi: %s sig=%d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 885
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    const-string/jumbo v20, "VISIBLE"

    :goto_6
    const/16 v24, 0x0

    aput-object v20, v23, v24

    .line 886
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v24, 0x1

    aput-object v20, v23, v24

    .line 884
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 883
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_9
    const/4 v5, 0x0

    .line 893
    .local v5, "anyMobileVisible":Z
    const/4 v14, 0x0

    .line 894
    .local v14, "firstMobileTypeId":I
    const/4 v13, 0x0

    .line 895
    .local v13, "firstMobileDisable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_17

    const/16 v19, 0x1

    .line 897
    .local v19, "theOnlyMobileDisable":Z
    :goto_7
    const/16 v16, 0x0

    .line 900
    .local v16, "stacked":Z
    const/4 v4, 0x0

    .line 903
    .local v4, "anyMobileDataConnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v13    # "firstMobileDisable":Z
    .local v18, "state$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 904
    .local v17, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->apply(Z)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 905
    if-nez v5, :cond_b

    .line 906
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v14

    .line 907
    const/4 v5, 0x1

    .line 910
    :cond_b
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->isDataDisable(I)Z

    move-result v11

    .line 912
    .local v11, "disable":Z
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v20

    if-nez v20, :cond_c

    .line 913
    move v13, v11

    .line 915
    :cond_c
    if-nez v11, :cond_d

    .line 916
    const/16 v19, 0x0

    .line 920
    :cond_d
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v20

    if-eqz v20, :cond_e

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v20

    if-eqz v20, :cond_e

    .line 921
    const/16 v16, 0x1

    .line 925
    :cond_e
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->getVisible()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 926
    add-int/lit8 v7, v7, 0x1

    .line 930
    :cond_f
    if-nez v4, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->getMobileDataConnected()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 931
    const/4 v4, 0x1

    goto :goto_8

    .line 823
    .end local v4    # "anyMobileDataConnected":Z
    .end local v5    # "anyMobileVisible":Z
    .end local v11    # "disable":Z
    .end local v14    # "firstMobileTypeId":I
    .end local v16    # "stacked":Z
    .end local v17    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .end local v18    # "state$iterator":Ljava/util/Iterator;
    .end local v19    # "theOnlyMobileDisable":Z
    :cond_10
    const/16 v20, 0x8

    goto/16 :goto_0

    .line 834
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "vpn"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 837
    :cond_12
    const-string/jumbo v20, "GONE"

    goto/16 :goto_2

    .line 851
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "ethernet"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 857
    :cond_14
    const-string/jumbo v20, "GONE"

    goto/16 :goto_4

    .line 879
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "wifi"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 885
    :cond_16
    const-string/jumbo v20, "GONE"

    goto/16 :goto_6

    .line 895
    .restart local v5    # "anyMobileVisible":Z
    .restart local v13    # "firstMobileDisable":Z
    .restart local v14    # "firstMobileTypeId":I
    :cond_17
    const/16 v19, 0x0

    .restart local v19    # "theOnlyMobileDisable":Z
    goto/16 :goto_7

    .line 935
    .end local v13    # "firstMobileDisable":Z
    .restart local v4    # "anyMobileDataConnected":Z
    .restart local v16    # "stacked":Z
    .restart local v18    # "state$iterator":Ljava/util/Iterator;
    :cond_18
    if-eqz v5, :cond_26

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "mobile"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    .line 941
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_27

    .line 943
    add-int/lit8 v7, v7, 0x1

    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 949
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "airplane"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 957
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustWifiVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_28

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 967
    :goto_b
    if-nez v16, :cond_1a

    if-eqz v5, :cond_29

    if-eqz v14, :cond_29

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustWifiVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_2a

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 974
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2c

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    move/from16 v20, v0

    if-nez v20, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getNoSimIcon()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    .line 976
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    move/from16 v20, v0

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1c

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 980
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "mobile"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 982
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimDetected:Z

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1d

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimDetected:Z

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 984
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimDetected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2b

    .line 985
    new-instance v9, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    .line 986
    .local v9, "d":Lcom/android/systemui/statusbar/phone/SignalDrawable;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getEmptyState(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 990
    new-instance v10, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    .line 991
    .local v10, "dark":Lcom/android/systemui/statusbar/phone/SignalDrawable;
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getEmptyState(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1005
    .end local v9    # "d":Lcom/android/systemui/statusbar/phone/SignalDrawable;
    .end local v10    # "dark":Lcom/android/systemui/statusbar/phone/SignalDrawable;
    :cond_1d
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustWifiVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_2d

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    move/from16 v20, v0

    if-nez v20, :cond_2d

    if-nez v5, :cond_2d

    .line 1009
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVpnVisible:Z

    move/from16 v20, v0

    .line 1008
    if-nez v20, :cond_2d

    .line 1009
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustEthernetVisible:Z

    .line 1010
    :goto_e
    if-eqz v6, :cond_2f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    .line 1011
    .local v12, "end":I
    :goto_f
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v20

    if-eqz v20, :cond_21

    .line 1013
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    move/from16 v20, v0

    if-eqz v20, :cond_20

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/policy/SystemIconController;->getBatteryStyle()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/policy/SystemIconController;->isFastCharge()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    .line 1013
    if-eqz v20, :cond_30

    .line 1015
    :cond_20
    const/4 v12, 0x0

    .line 1020
    :cond_21
    :goto_10
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setPaddingRelative(IIII)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoLteEnable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVoLteVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_31

    const/16 v20, 0x0

    :goto_11
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoWifiEnable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVoWifiVisible:Z

    move/from16 v20, v0

    if-eqz v20, :cond_32

    const/16 v20, 0x0

    :goto_12
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-lez v20, :cond_22

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1028
    .local v15, "imge":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1031
    .end local v15    # "imge":Landroid/graphics/drawable/Drawable;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    if-lez v20, :cond_23

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1033
    .restart local v15    # "imge":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1037
    .end local v15    # "imge":Landroid/graphics/drawable/Drawable;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_25

    .line 1038
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v7, :cond_24

    .line 1039
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCount:I

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/SystemIconController;->updateSignalIconCount(I)V

    .line 1043
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/SystemIconController;->updateMobileDataConnected(Z)V

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoLteEnable:Z

    move/from16 v20, v0

    if-nez v20, :cond_33

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoWifiEnable:Z

    .line 1046
    :goto_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustomHideSignalIcon:Z

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_25

    .line 1047
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustomHideSignalIcon:Z

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/policy/SystemIconController;->customHideSignalIcon(Z)V

    .line 1052
    :cond_25
    return-void

    .line 938
    .end local v12    # "end":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "mobile"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 953
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "airplane"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 960
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 967
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    if-nez v13, :cond_1a

    if-nez v19, :cond_1a

    .line 971
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 995
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f080450

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x7f080450

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 1000
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    move-object/from16 v20, v0

    const-string/jumbo v21, "mobile"

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 1008
    :cond_2d
    const/4 v6, 0x1

    .local v6, "anythingVisible":Z
    goto/16 :goto_e

    .line 1009
    .end local v6    # "anythingVisible":Z
    :cond_2e
    const/4 v6, 0x0

    .restart local v6    # "anythingVisible":Z
    goto/16 :goto_e

    .line 1010
    .end local v6    # "anythingVisible":Z
    :cond_2f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    .restart local v12    # "end":I
    goto/16 :goto_f

    .line 1016
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/policy/SystemIconController;->getBatteryStyle()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    .line 1017
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingBatteryPercent:I

    goto/16 :goto_10

    .line 1022
    :cond_31
    const/16 v20, 0x8

    goto/16 :goto_11

    .line 1023
    :cond_32
    const/16 v20, 0x8

    goto/16 :goto_12

    .line 1045
    :cond_33
    const/4 v8, 0x1

    .local v8, "customHideSignalIcon":Z
    goto/16 :goto_13
.end method

.method private applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "darkIntensity"    # F
    .param p2, "lightIcon"    # Landroid/view/View;
    .param p3, "darkIcon"    # Landroid/view/View;

    .prologue
    .line 1142
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1143
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1144
    return-void
.end method

.method private applyIconTint()V
    .locals 6

    .prologue
    .line 1104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 1105
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 1107
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    .line 1108
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    .line 1106
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    .line 1115
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 1116
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 1117
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 1128
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    .line 1129
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    .line 1127
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    .line 1130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIconTint(IFLandroid/graphics/Rect;)V

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1134
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    .line 1135
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    .line 1134
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 1136
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    .line 1137
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    .line 1136
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v5

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1131
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIconTint(IFLandroid/graphics/Rect;)V

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    if-nez v5, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v0, :cond_4

    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusbarMiscColor:I

    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-nez v5, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v0, :cond_6

    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusbarMiscColor:I

    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    if-nez v5, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v0, :cond_8

    :cond_7
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusbarMiscColor:I

    :cond_8
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-nez v5, :cond_9

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v0, :cond_a

    :cond_9
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconColor:I

    :cond_a
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-nez v5, :cond_b

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v0, :cond_c

    :cond_b
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIconColor:I

    :cond_c
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    if-nez v5, :cond_d

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v0, :cond_e

    :cond_d
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusbarMiscColor:I

    :cond_e
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    if-nez v5, :cond_f

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v0, :cond_10

    :cond_f
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusbarMiscColor:I

    :cond_10
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    if-nez v5, :cond_11

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v0, :cond_12

    :cond_11
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusbarMiscColor:I

    :cond_12
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 1139
    :goto_2
    return-void
.end method

.method private applySignalIconTag()V
    .locals 3

    .prologue
    .line 374
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    if-nez v1, :cond_7

    .line 375
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    const-string/jumbo v2, "qsIcon.Vpn"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const-string/jumbo v2, "qsIcon.Airplane"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const-string/jumbo v2, "qsIcon.WifiActivity"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    const-string/jumbo v2, "qsIcon.Wifi"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 379
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    const-string/jumbo v2, "qsIcon.WifiDark"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 380
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    const-string/jumbo v2, "qsIcon.VoLte"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 381
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    const-string/jumbo v2, "qsIcon.VoWifi"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 391
    :cond_6
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIconTag(Z)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    .end local v0    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    const-string/jumbo v2, "barIcon.Vpn"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 384
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const-string/jumbo v2, "barIcon.Airplane"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 385
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const-string/jumbo v2, "barIcon.WifiActivity"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 386
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    const-string/jumbo v2, "barIcon.Wifi"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 387
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    const-string/jumbo v2, "barIcon.WifiDark"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 388
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    const-string/jumbo v2, "barIcon.VoLte"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 389
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    const-string/jumbo v2, "barIcon.VoWifi"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 394
    .restart local v0    # "i":I
    :cond_e
    return-void
.end method

.method private currentVpnIconId(Z)I
    .locals 1
    .param p1, "isBranded"    # Z

    .prologue
    .line 1151
    if-eqz p1, :cond_0

    const v0, 0x7f0803fd

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f08067b

    goto :goto_0
.end method

.method private getInOutIndicator(ZZZ)I
    .locals 5
    .param p1, "in"    # Z
    .param p2, "out"    # Z
    .param p3, "stacked"    # Z

    .prologue
    const v4, 0x7f08066e

    const v3, 0x7f08066d

    const v2, 0x7f08066c

    const v1, 0x7f08066b

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "activity":I
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 677
    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 678
    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v0, v0, 0x4

    .line 680
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 683
    :pswitch_0
    return v3

    .line 685
    :pswitch_1
    return v1

    .line 687
    :pswitch_2
    return v4

    .line 689
    :pswitch_3
    return v2

    .line 691
    :pswitch_4
    return v3

    .line 693
    :pswitch_5
    return v1

    .line 695
    :pswitch_6
    return v4

    .line 697
    :pswitch_7
    return v2

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getNoSimIcon()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 653
    const/4 v3, 0x0

    .line 655
    .local v3, "resId":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 657
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x7f050022

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    return v3

    .line 660
    :cond_0
    const v5, 0x7f030039

    :try_start_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 665
    .local v1, "noSimArray":[Ljava/lang/String;
    if-nez v1, :cond_1

    return v3

    .line 661
    .end local v1    # "noSimArray":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    return v3

    .line 667
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "noSimArray":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    aget-object v4, v1, v5

    .line 668
    .local v4, "resName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 669
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SignalClusterView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getNoSimIcon resId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " resName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_2
    return v3
.end method

.method private getSlotProvisionStatus(II)I
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "defaultProvision"    # I

    .prologue
    const/4 v4, 0x0

    .line 1486
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v3, :cond_0

    const-string/jumbo v3, "extphone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 1487
    :cond_0
    move v2, p2

    .line 1490
    .local v2, "status":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v3, p1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1502
    :goto_0
    const-string/jumbo v3, "SignalClusterView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSlotProvisionStatus slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    return v2

    .line 1496
    :catch_0
    move-exception v1

    .line 1497
    .local v1, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    .line 1499
    iput-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 1500
    const-string/jumbo v3, "SignalClusterView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get pref, slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1491
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1492
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, -0x1

    .line 1494
    iput-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 1495
    const-string/jumbo v3, "SignalClusterView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get pref, slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 631
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 632
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 633
    return-object v0

    .line 636
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    const-string/jumbo v2, "SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v2, 0x0

    return-object v2
.end method

.method private getStateBySlotId(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 642
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 643
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 644
    return-object v0

    .line 647
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    const-string/jumbo v2, "SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v2, 0x0

    return-object v2
.end method

.method private getWifiActivityId(ZZ)I
    .locals 2
    .param p1, "activityIn"    # Z
    .param p2, "activityOut"    # Z

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "activity":I
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 442
    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 443
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 446
    :pswitch_0
    const v1, 0x7f080661

    return v1

    .line 448
    :pswitch_1
    const v1, 0x7f08065f

    return v1

    .line 450
    :pswitch_2
    const v1, 0x7f080666

    return v1

    .line 452
    :pswitch_3
    const v1, 0x7f080660

    return v1

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v5, 0x0

    .line 604
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 605
    .local v0, "N":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 606
    return v5

    .line 611
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 612
    return v5

    .line 616
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 617
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-eq v3, v2, :cond_2

    .line 618
    return v5

    .line 621
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-eq v3, v2, :cond_3

    .line 622
    const-string/jumbo v3, "SignalClusterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasCorrectSubs SubId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " change from:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " to:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return v5

    .line 616
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 627
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private inflatePhoneState(II)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "slotIndex"    # I

    .prologue
    .line 719
    new-instance v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;IILandroid/content/Context;)V

    .line 721
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 724
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 727
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIconTag(Z)V

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    :cond_1
    return-object v1
.end method

.method private isDataDisable(I)Z
    .locals 3
    .param p1, "slot"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1476
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    array-length v2, v2

    if-lt p1, v2, :cond_0

    .line 1477
    return v1

    .line 1479
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    aget v2, v2, p1

    if-eq v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private maybeScaleVpnAndNoSimsIcons()V
    .locals 4

    .prologue
    .line 319
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 320
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    .line 326
    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    .line 328
    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    return-void
.end method

.method private setIconForView(Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "iconId"    # I

    .prologue
    .line 1060
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1062
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1063
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1067
    :goto_0
    return-void

    .line 1065
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setTint(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "tint"    # I

    .prologue
    .line 1147
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1148
    return-void
.end method

.method private updateActivityEnabled()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityEnabled:Z

    .line 436
    return-void
.end method

.method private updateCustIconVisible()V
    .locals 3

    .prologue
    .line 1535
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    if-eqz v1, :cond_1

    .line 1536
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1537
    .local v0, "visible":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustEthernetVisible:Z

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVoWifiVisible:Z

    if-eq v0, v1, :cond_3

    .line 1538
    :cond_0
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustEthernetVisible:Z

    .line 1539
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVoWifiVisible:Z

    .line 1540
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVoLteVisible:Z

    .line 1541
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 1544
    .end local v0    # "visible":Z
    :cond_1
    return-void

    .line 1536
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "visible":Z
    goto :goto_0

    .line 1537
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVoLteVisible:Z

    if-eq v0, v1, :cond_1

    goto :goto_1
.end method


# virtual methods
.method public adjustPadding()V
    .locals 0

    .prologue
    .line 1547
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 1548
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 752
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 753
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 754
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustWifiVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 756
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 758
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 760
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 333
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 337
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 339
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 340
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f11052f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 339
    if-eqz v4, :cond_0

    .line 341
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    .line 342
    const-class v4, Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/SystemIconController;

    iput-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    .line 343
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->addCallback(Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;)V

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateCustIconVisible()V

    .line 349
    .end local v1    # "parent":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 350
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->currentVpnIconId(Z)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    .line 352
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "state$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 353
    .local v2, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 354
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 358
    .end local v2    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroupEndPadding:I

    .line 359
    .local v0, "endPadding":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7, v7, v0, v7}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 361
    const-class v4, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "icon_blacklist"

    aput-object v6, v5, v7

    invoke-virtual {v4, p0, v5}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applySignalIconTag()V

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 368
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v4, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 369
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v4, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    .line 370
    return-void

    .line 358
    .end local v0    # "endPadding":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "endPadding":I
    goto :goto_1
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1525
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 1526
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mOrientation:I

    .line 1527
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    if-eqz v0, :cond_0

    .line 1528
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateCustIconVisible()V

    .line 1529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 1532
    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 3
    .param p1, "tintArea"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    const v2, -0x333334

    .line 1072
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    if-ne p3, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 1074
    :goto_0
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 1076
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1078
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1079
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 1083
    :cond_2
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    .line 1084
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1085
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1086
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 1088
    :cond_3
    return-void

    .line 1073
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .local v0, "changed":Z
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->removeCallback(Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 405
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 409
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 410
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 286
    const v0, 0x7f0a035d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 287
    const v0, 0x7f0a00de

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    .line 288
    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 289
    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    .line 290
    const v0, 0x7f0a0365

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 291
    const v0, 0x7f0a0369

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 292
    const v0, 0x7f0a036a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    .line 296
    const v0, 0x7f0a0367

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 298
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 299
    const v0, 0x7f0a01fb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    .line 300
    const v0, 0x7f0a01fd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    .line 301
    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    .line 302
    const v0, 0x7f0a0364

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    .line 303
    const v0, 0x7f0a036b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 304
    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 307
    const v0, 0x7f0a034e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoLteView:Landroid/widget/ImageView;

    .line 308
    const v0, 0x7f0a035c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVoWifiView:Landroid/widget/ImageView;

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->maybeScaleVpnAndNoSimsIcons()V

    .line 311
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 414
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 418
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 765
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 767
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 768
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 769
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 773
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 774
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 780
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 781
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    .line 786
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 787
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 788
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 789
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 792
    :cond_4
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 793
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 794
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 796
    :cond_5
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 797
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 798
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    goto :goto_0

    .line 803
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 804
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 805
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 808
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 809
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 431
    return-void
.end method

.method public onSystemIconVisibilityChanged(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1511
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    if-eqz v2, :cond_1

    .line 1512
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    const-string/jumbo v3, "vpn"

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/SystemIconController;->isCustVisible(Ljava/lang/String;)Z

    move-result v0

    .line 1513
    .local v0, "custVpnVisible":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSystemIconController:Lcom/android/systemui/statusbar/policy/SystemIconController;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/SystemIconController;->isCustVisible(Ljava/lang/String;)Z

    move-result v1

    .line 1514
    .local v1, "custWifiVisible":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVpnVisible:Z

    if-ne v2, v0, :cond_0

    .line 1515
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustWifiVisible:Z

    if-eq v2, v1, :cond_1

    .line 1516
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustVpnVisible:Z

    .line 1517
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mCustWifiVisible:Z

    .line 1518
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 1521
    .end local v0    # "custVpnVisible":Z
    .end local v1    # "custWifiVisible":Z
    :cond_1
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string/jumbo v8, "icon_blacklist"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    .line 250
    .local v2, "blockList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-class v8, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v7

    .line 252
    .local v7, "isHighlightHintShow":Z
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 253
    const/4 v7, 0x0

    .line 256
    .end local v7    # "isHighlightHintShow":Z
    :cond_1
    const-string/jumbo v8, "airplane"

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    move v0, v7

    .line 257
    :goto_0
    const-string/jumbo v8, "mobile"

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 258
    .local v3, "blockMobile":Z
    const-string/jumbo v8, "wifi"

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move v6, v7

    .line 259
    :goto_1
    const-string/jumbo v8, "ethernet"

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    move v1, v7

    .line 261
    :goto_2
    const-string/jumbo v8, "volte"

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    move v4, v7

    .line 262
    :goto_3
    const-string/jumbo v8, "vowifi"

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    move v5, v7

    .line 265
    :goto_4
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    if-ne v0, v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    if-eq v3, v8, :cond_9

    .line 268
    :cond_2
    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    .line 269
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    .line 270
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    .line 271
    if-nez v6, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mForceBlockWifi:Z

    :goto_6
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    .line 273
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoLte:Z

    .line 274
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoWifi:Z

    .line 277
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v8, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 278
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v8, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 280
    :cond_3
    return-void

    .line 256
    .end local v3    # "blockMobile":Z
    :cond_4
    const/4 v0, 0x1

    .local v0, "blockAirplane":Z
    goto :goto_0

    .line 258
    .end local v0    # "blockAirplane":Z
    .restart local v3    # "blockMobile":Z
    :cond_5
    const/4 v6, 0x1

    .local v6, "blockWifi":Z
    goto :goto_1

    .line 259
    .end local v6    # "blockWifi":Z
    :cond_6
    const/4 v1, 0x1

    .local v1, "blockEthernet":Z
    goto :goto_2

    .line 261
    .end local v1    # "blockEthernet":Z
    :cond_7
    const/4 v4, 0x1

    .local v4, "blockVoLte":Z
    goto :goto_3

    .line 262
    .end local v4    # "blockVoLte":Z
    :cond_8
    const/4 v5, 0x1

    .local v5, "blockVoWifi":Z
    goto :goto_4

    .line 266
    .end local v5    # "blockVoWifi":Z
    :cond_9
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-ne v1, v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    if-ne v6, v8, :cond_2

    .line 267
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoLte:Z

    if-ne v4, v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoWifi:Z

    if-eq v5, v8, :cond_3

    goto :goto_5

    .line 271
    :cond_a
    const/4 v8, 0x1

    goto :goto_6
.end method

.method public readRenovateMods()V
    .locals 1

    sget v0, Lcom/android/mwilky/Renovate;->mWifiIconColorOP:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIconColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mWifiActivityIconColorOP:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mSignalIconColorOP:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalIconColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mMobileDataIconColorOP:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarMiscColorOP:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusbarMiscColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 530
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 531
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    .line 532
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    .line 534
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 535
    return-void

    .line 530
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .prologue
    .line 1092
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 1094
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    const v0, -0x333334

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 1099
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 1100
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 736
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 737
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 738
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 741
    return-void

    .line 736
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLTEStatus([I)V
    .locals 3
    .param p1, "status"    # [I

    .prologue
    const/4 v1, 0x0

    .line 1445
    aget v0, p1, v1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoLte:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoLteEnable:Z

    .line 1446
    const/4 v0, 0x2

    aget v0, p1, v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockVoWifi:Z

    xor-int/lit8 v1, v0, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoWifiEnable:Z

    .line 1447
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLTEStatusResources:[I

    .line 1449
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v0, :cond_1

    .line 1450
    const-string/jumbo v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLTEStatus mIsVoLteEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoLteEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsVoWifiEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsVoWifiEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 1454
    return-void

    :cond_2
    move v0, v1

    .line 1445
    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 746
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZZ)V
    .locals 3
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataActivityId"    # I
    .param p8, "stackedDataId"    # I
    .param p9, "stackedVoiceId"    # I
    .param p10, "typeContentDescription"    # Ljava/lang/String;
    .param p11, "description"    # Ljava/lang/String;
    .param p12, "isWide"    # Z
    .param p13, "subId"    # I
    .param p14, "roaming"    # Z
    .param p15, "connected"    # Z

    .prologue
    .line 504
    move/from16 v0, p13

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v1

    .line 505
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    if-nez v1, :cond_0

    .line 506
    return-void

    .line 508
    :cond_0
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set10(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 509
    iget v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 510
    invoke-static {v1, p3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set9(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 511
    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    .line 512
    invoke-static {v1, p10}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    if-eqz p3, :cond_2

    .end local p12    # "isWide":Z
    :goto_1
    invoke-static {v1, p12}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 514
    move/from16 v0, p14

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Z

    .line 515
    if-eqz p5, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    :goto_2
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    .line 516
    if-eqz p6, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    :goto_3
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    .line 517
    invoke-static {v1, p7}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 518
    invoke-static {v1, p8}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set11(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 519
    invoke-static {v1, p9}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set12(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 521
    move/from16 v0, p15

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 523
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 524
    return-void

    .line 508
    .restart local p12    # "isWide":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 513
    :cond_2
    const/4 p12, 0x0

    goto :goto_1

    .line 515
    .end local p12    # "isWide":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 516
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public setNoSims(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "simDetected"    # Z

    .prologue
    .line 539
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 540
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimDetected:Z

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 542
    return-void

    .line 539
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProvision(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "provision"    # I

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 1462
    return-void

    .line 1464
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mProvisionState:[I

    aput p2, v1, p1

    .line 1465
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getStateBySlotId(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    .line 1467
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    sget-boolean v1, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SignalClusterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " setProvision slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " provision:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_1
    if-eqz v0, :cond_2

    .line 1470
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->isDataDisable(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 1472
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 1473
    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 547
    sget-boolean v7, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "SignalClusterView"

    const-string/jumbo v8, "setSubs:"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 550
    return-void

    .line 553
    :cond_1
    if-eqz p1, :cond_3

    .line 554
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "subInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 555
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    sget-boolean v7, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "SignalClusterView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SubInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 560
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_4

    .line 561
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 563
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 569
    .local v3, "n":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 570
    .local v1, "count":I
    const/4 v0, 0x0

    .line 571
    .local v0, "addNoSim":Z
    if-ne v1, v11, :cond_8

    .line 572
    if-nez v3, :cond_5

    .line 573
    invoke-direct {p0, v12, v10}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(II)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 586
    :cond_5
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_a

    .line 588
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    .line 589
    .local v4, "slotIndex":I
    if-eqz v0, :cond_6

    if-ne v4, v11, :cond_6

    .line 590
    invoke-direct {p0, v12, v10}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(II)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 592
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-direct {p0, v7, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(II)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 593
    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    .line 594
    invoke-direct {p0, v12, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(II)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 586
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 576
    .end local v2    # "i":I
    .end local v4    # "slotIndex":I
    :cond_8
    if-nez v3, :cond_9

    .line 577
    invoke-direct {p0, v12, v10}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(II)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 578
    const/4 v7, -0x2

    invoke-direct {p0, v7, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(II)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    goto :goto_1

    .line 579
    :cond_9
    if-ne v3, v11, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/util/Utils;->hasCtaFeature(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 580
    const/4 v0, 0x1

    goto :goto_1

    .line 598
    .restart local v2    # "i":I
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 599
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 601
    :cond_b
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z

    .prologue
    const/4 v1, 0x0

    .line 460
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 461
    iget v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 462
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 463
    if-eqz p4, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    .line 464
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    .line 466
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->getWifiActivityId(ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 469
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 470
    return-void

    :cond_1
    move v0, v1

    .line 460
    goto :goto_0

    :cond_2
    move v0, v1

    .line 463
    goto :goto_1
.end method

.method public updateViews(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->readRenovateMods()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    return-void
.end method
