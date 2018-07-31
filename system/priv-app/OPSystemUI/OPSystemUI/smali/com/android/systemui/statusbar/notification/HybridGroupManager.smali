.class public Lcom/android/systemui/statusbar/notification/HybridGroupManager;
.super Ljava/lang/Object;
.source "HybridGroupManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDarkAmount:F

.field private final mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

.field private mOverflowNumberColor:I

.field private mOverflowNumberColorDark:I

.field private final mOverflowNumberPadding:I

.field private final mOverflowNumberPaddingDark:I

.field private final mOverflowNumberSize:F

.field private final mOverflowNumberSizeDark:F

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    .line 52
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070126

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSize:F

    .line 58
    const v1, 0x7f070127

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSizeDark:F

    .line 60
    const v1, 0x7f070125

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    .line 61
    iget v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    .line 62
    const v2, 0x7f070124

    .line 61
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPaddingDark:I

    .line 63
    return-void
.end method

.method private bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 2
    .param p1, "reusableView"    # Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "style"    # I

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object p1

    .line 113
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 114
    .local v1, "titleText":Ljava/lang/CharSequence;
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 115
    .local v0, "contentText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 116
    return-object p1
.end method

.method private inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 5
    .param p1, "style"    # I

    .prologue
    .line 66
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 67
    const-class v3, Landroid/view/LayoutInflater;

    .line 66
    invoke-virtual {v2, v3}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 69
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v3, 0x7f0d0041

    const/4 v4, 0x0

    .line 68
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 70
    .local v0, "hybrid":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    return-object v0
.end method

.method private inflateOverflowNumber()Landroid/widget/TextView;
    .locals 5

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 77
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v3, 0x7f0d0042

    const/4 v4, 0x0

    .line 76
    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, "numberView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    .line 80
    return-object v1
.end method

.method private resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 120
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 121
    .local v0, "contentText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 122
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.bigText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 124
    :cond_0
    return-object v0
.end method

.method private resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 128
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 129
    .local v0, "titleText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 130
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    :cond_0
    return-object v0
.end method

.method private updateOverFlowNumberColor(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "numberView"    # Landroid/widget/TextView;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColorDark:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    .line 84
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public bindAmbientFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1
    .param p1, "reusableView"    # Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 105
    const v0, 0x7f1200cb

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1
    .param p1, "reusableView"    # Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 99
    const v0, 0x7f1200ca

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;
    .locals 7
    .param p1, "reusableView"    # Landroid/widget/TextView;
    .param p2, "number"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    if-nez p1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->inflateOverflowNumber()Landroid/widget/TextView;

    move-result-object p1

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f1103a3

    .line 139
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 145
    const v3, 0x7f0f0008

    .line 144
    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 144
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "contentDescription":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    return-object p1
.end method

.method synthetic lambda$-com_android_systemui_statusbar_notification_HybridGroupManager_6071(Landroid/widget/TextView;Ljava/lang/Float;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "f"    # Ljava/lang/Float;

    .prologue
    .line 153
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    .line 154
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    return-void
.end method

.method public setOverflowNumberColor(Landroid/widget/TextView;II)V
    .locals 0
    .param p1, "numberView"    # Landroid/widget/TextView;
    .param p2, "colorRegular"    # I
    .param p3, "colorDark"    # I

    .prologue
    .line 89
    iput p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColor:I

    .line 90
    iput p3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColorDark:I

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setOverflowNumberDark(Landroid/widget/TextView;ZZJ)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "dark"    # Z
    .param p3, "fade"    # Z
    .param p4, "delay"    # J

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$Lambda$taUDKRZB-LDsIHlbK58foapdOOc;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$taUDKRZB-LDsIHlbK58foapdOOc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->setIntensityDark(Ljava/util/function/Consumer;ZZJ)V

    .line 157
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSizeDark:F

    .line 156
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 158
    if-eqz p2, :cond_1

    iget v6, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPaddingDark:I

    .line 159
    .local v6, "paddingEnd":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 160
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 159
    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 161
    return-void

    .line 157
    .end local v6    # "paddingEnd":I
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSize:F

    goto :goto_0

    .line 158
    :cond_1
    iget v6, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    .restart local v6    # "paddingEnd":I
    goto :goto_1
.end method
