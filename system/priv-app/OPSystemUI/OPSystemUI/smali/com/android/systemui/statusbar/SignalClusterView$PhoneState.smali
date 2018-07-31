.class Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneState"
.end annotation


# instance fields
.field public mActivityIn:Z

.field public mActivityOut:Z

.field private mDataActivity:Landroid/widget/ImageView;

.field private mDataActivityId:I

.field private mDisabled:Z

.field private mIsMobileTypeIconWide:Z

.field private mLastMobileStrengthId:I

.field private mLastMobileTypeId:I

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileActivityIn:Landroid/widget/ImageView;

.field private mMobileActivityOut:Landroid/widget/ImageView;

.field private mMobileDark:Landroid/widget/ImageView;

.field private mMobileDataConnected:Z

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileInOut:Landroid/widget/ImageView;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileSingleGroup:Landroid/view/ViewGroup;

.field private mMobileStackedGroup:Landroid/view/ViewGroup;

.field private mMobileStrengthId:I

.field private mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field public mRoaming:Z

.field private mSlotIndex:I

.field private mStackedData:Landroid/widget/ImageView;

.field private mStackedDataId:I

.field private mStackedVoice:Landroid/widget/ImageView;

.field private mStackedVoiceId:I

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotIndex:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataConnected:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;IILandroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p2, "subId"    # I
    .param p3, "slotIndex"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1193
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotIndex:I

    .line 1160
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    .line 1162
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    .line 1167
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    .line 1168
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 1169
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 1181
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    .line 1182
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    .line 1197
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1198
    const v2, 0x7f0d009f

    const/4 v3, 0x0

    .line 1197
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1199
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    .line 1200
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    .line 1202
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotIndex:I

    .line 1205
    if-gez p2, :cond_0

    .line 1206
    const v1, 0x7f080450

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    .line 1207
    invoke-static {p1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    .line 1211
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotIndex:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    .line 1213
    return-void
.end method


# virtual methods
.method public apply(Z)Z
    .locals 9
    .param p1, "isSecondaryIcon"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1240
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 1242
    .local v1, "stacked":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9

    .line 1245
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    if-nez v2, :cond_6

    .line 1247
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    if-eq v2, v5, :cond_0

    .line 1249
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    if-eqz v2, :cond_0

    .line 1259
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2, v5, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap5(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1260
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2, v5, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap5(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1262
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 1265
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eq v2, v5, :cond_1

    .line 1267
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v2, :cond_1

    .line 1269
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1270
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 1274
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivity:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1277
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    if-eqz v2, :cond_5

    .line 1278
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1279
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1280
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1281
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1301
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1302
    const-string/jumbo v6, " "

    .line 1301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1302
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    .line 1301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1309
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz p1, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    :goto_3
    invoke-virtual {v5, v2, v3, v3, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1311
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    .line 1312
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get6(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    .line 1311
    :goto_4
    invoke-virtual {v5, v2, v3, v3, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 1314
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    .line 1315
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get6(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    .line 1314
    :goto_5
    invoke-virtual {v5, v2, v3, v3, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 1318
    sget-boolean v2, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v5, "SignalClusterView"

    const-string/jumbo v6, "mobile: %s sig=%d typ=%d"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Object;

    .line 1319
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "VISIBLE"

    :goto_6
    aput-object v2, v7, v3

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v7, v8

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v7, v8

    .line 1318
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    if-nez v1, :cond_e

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v2, :cond_e

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1331
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    if-eqz v2, :cond_f

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1334
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    invoke-static {v5, v6, v7, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;ZZZ)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1335
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataConnected:Z

    if-eqz v5, :cond_10

    :goto_9
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1338
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return v2

    .line 1240
    .end local v1    # "stacked":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "stacked":Z
    goto/16 :goto_0

    .line 1283
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1284
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1285
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1286
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 1290
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-set0(Lcom/android/systemui/statusbar/SignalClusterView;I)I

    .line 1292
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v0

    .line 1293
    .local v0, "noSImIcon":I
    :goto_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1294
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1295
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 1297
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1298
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 1292
    .end local v0    # "noSImIcon":I
    :cond_8
    const v0, 0x7f080450

    .restart local v0    # "noSImIcon":I
    goto :goto_a

    .line 1305
    .end local v0    # "noSImIcon":I
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    move v2, v3

    .line 1309
    goto/16 :goto_3

    .line 1312
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    goto/16 :goto_4

    .line 1315
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v2

    goto/16 :goto_5

    .line 1319
    :cond_d
    const-string/jumbo v2, "GONE"

    goto/16 :goto_6

    :cond_e
    move v2, v4

    .line 1324
    goto/16 :goto_7

    :cond_f
    move v2, v4

    .line 1331
    goto/16 :goto_8

    :cond_10
    move v3, v4

    .line 1335
    goto/16 :goto_9
.end method

.method public getMobileDataConnected()Z
    .locals 1

    .prologue
    .line 1437
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataConnected:Z

    return v0
.end method

.method public getVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1433
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1344
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    :cond_0
    return-void
.end method

.method public setIconTag(Z)V
    .locals 2
    .param p1, "isStatusBar"    # Z

    .prologue
    .line 1371
    if-nez p1, :cond_5

    .line 1372
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    const-string/jumbo v1, "qsIcon.MobileType"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    const-string/jumbo v1, "qsIcon.Mobile"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1374
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    const-string/jumbo v1, "qsIcon.MobileInOut"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1375
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    const-string/jumbo v1, "qsIcon.StackedData"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1376
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    const-string/jumbo v1, "qsIcon.StackedVoice"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1384
    :cond_4
    :goto_0
    return-void

    .line 1378
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    const-string/jumbo v1, "barIcon.MobileType"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1379
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    const-string/jumbo v1, "barIcon.Mobile"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1380
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    const-string/jumbo v1, "barIcon.MobileInOut"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1381
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    const-string/jumbo v1, "barIcon.StackedData"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1382
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    const-string/jumbo v1, "barIcon.StackedVoice"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 5
    .param p1, "tint"    # I
    .param p2, "darkIntensity"    # F
    .param p3, "tintArea"    # Landroid/graphics/Rect;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsStatusBar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1362
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1367
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v4

    float-to-int v3, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v3, :cond_2

    :cond_1
    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconColor:I

    :cond_2
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v3, :cond_4

    :cond_3
    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalIconColor:I

    :cond_4
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    if-nez v4, :cond_5

    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v3, :cond_6

    :cond_5
    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconColor:I

    :cond_6
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    if-nez v4, :cond_7

    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v3, :cond_8

    :cond_7
    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconColor:I

    :cond_8
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    if-nez v4, :cond_9

    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIconColor:I

    if-nez v3, :cond_a

    :cond_9
    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconColor:I

    :cond_a
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap6(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    :goto_0
    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    .line 1217
    const v1, 0x7f0a01c4

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    .line 1218
    const v1, 0x7f0a01c5

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    .line 1219
    const v1, 0x7f0a01cb

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    .line 1220
    const v1, 0x7f0a01c3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    .line 1221
    const v1, 0x7f0a01c0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    .line 1222
    const v1, 0x7f0a01c2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    .line 1224
    const v1, 0x7f0a01c1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    .line 1227
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1228
    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    .line 1229
    .local v0, "drawable":Lcom/android/systemui/statusbar/phone/SignalDrawable;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    .line 1230
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1231
    const v1, 0x7f0a00aa

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivity:Landroid/widget/ImageView;

    .line 1232
    const v1, 0x7f0a01c6

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    .line 1233
    const v1, 0x7f0a01ca

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    .line 1234
    const v1, 0x7f0a01c8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSingleGroup:Landroid/view/ViewGroup;

    .line 1235
    const v1, 0x7f0a01c9

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStackedGroup:Landroid/view/ViewGroup;

    .line 1236
    return-void
.end method
