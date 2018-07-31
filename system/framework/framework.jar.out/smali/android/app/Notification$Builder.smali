.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final LIGHTNESS_TEXT_DIFFERENCE_DARK:I = -0xa

.field private static final LIGHTNESS_TEXT_DIFFERENCE_LIGHT:I = 0x14

.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z


# instance fields
.field private mActionBarColor:I

.field private mActionIntentOnStatusBar:Landroid/content/Intent;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundColor:I

.field private mBackgroundColorHint:I

.field private mBackgroundColorOnStatusBar:I

.field private mCachedAmbientColor:I

.field private mCachedAmbientColorIsFor:I

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mChronometerBase:J

.field private mChronometerState:I

.field private mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mContext:Landroid/content/Context;

.field private mForegroundColor:I

.field private mInNightMode:Z

.field private mIsLegacy:Z

.field private mIsLegacyInitialized:Z

.field private mN:Landroid/app/Notification;

.field private mOriginalActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field mParams:Landroid/app/Notification$StandardTemplateParams;

.field private mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryTextColor:I

.field private mPriorityOnStatusBar:I

.field private mRebuildStyledRemoteViews:Z

.field private mSecondaryTextColor:I

.field private mShowChronometerOnStatusBar:Z

.field private mShowOnStatusBar:Z

.field private mStatusBarIcon:I

.field private mStyle:Landroid/app/Notification$Style;

.field private mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

.field private mTextColorsAreForBackground:I

.field private mTextOnStatusBar:I

.field private mTintActionButtons:Z

.field private mUserExtras:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    iget-object v0, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "-value"    # Ljava/util/ArrayList;

    .prologue
    iput-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "-value"    # Ljava/util/ArrayList;

    .prologue
    iput-object p1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "layoutId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getPrimaryHighlightColor()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "ambient"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap16(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap17(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap18(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "layoutId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "resId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;
    .param p1, "resId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Landroid/app/Notification$Builder;)Z
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/app/Notification$Builder;)Z
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    invoke-direct {p0}, Landroid/app/Notification$Builder;->shouldTintActionButtons()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/Notification$Builder;

    .prologue
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2893
    const-string/jumbo v0, "notifications.only_title"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2892
    sput-boolean v0, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    .line 2873
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2990
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 2991
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toAdopt"    # Landroid/app/Notification;

    .prologue
    .line 2996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2910
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 2912
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 2913
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 2920
    const/4 v7, -0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    .line 2921
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    .line 2922
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    .line 2923
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    .line 2924
    const/4 v7, 0x0

    iput v7, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    .line 2925
    const/4 v7, -0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    .line 2927
    const/4 v7, 0x0

    iput v7, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    .line 2928
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    .line 2930
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/app/Notification$Builder;->mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

    .line 2937
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    .line 2938
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 2942
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    .line 2943
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    .line 2949
    new-instance v7, Landroid/app/Notification$StandardTemplateParams;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/app/Notification$StandardTemplateParams;-><init>(Landroid/app/Notification$StandardTemplateParams;)V

    iput-object v7, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 2950
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 2951
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 2952
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 2953
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    .line 2954
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    .line 2955
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 2956
    const/4 v7, 0x1

    iput v7, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    .line 2997
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 2998
    iget-object v7, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2999
    .local v2, "res":Landroid/content/res/Resources;
    const v7, 0x11200ba

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    .line 3001
    const v7, 0x1120065

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3002
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3003
    .local v1, "currentConfig":Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    .line 3004
    const/16 v8, 0x20

    .line 3003
    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 3007
    .end local v1    # "currentConfig":Landroid/content/res/Configuration;
    :cond_0
    if-nez p2, :cond_4

    .line 3008
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 3009
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x18

    if-ge v7, v8, :cond_1

    .line 3010
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "android.showWhen"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3012
    :cond_1
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v8, 0x0

    iput v8, v7, Landroid/app/Notification;->priority:I

    .line 3013
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v8, 0x0

    iput v8, v7, Landroid/app/Notification;->visibility:I

    .line 3056
    :cond_2
    :goto_1
    return-void

    .line 3003
    .restart local v1    # "currentConfig":Landroid/content/res/Configuration;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 3015
    .end local v1    # "currentConfig":Landroid/content/res/Configuration;
    :cond_4
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 3016
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v7, :cond_5

    .line 3017
    iget-object v7, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3020
    :cond_5
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "android.people"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3021
    iget-object v7, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "android.people"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3024
    :cond_6
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-nez v7, :cond_7

    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    if-eqz v7, :cond_7

    .line 3025
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3028
    :cond_7
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v7}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-nez v7, :cond_8

    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    .line 3029
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 3032
    :cond_8
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "android.template"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3033
    .local v6, "templateClass":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3035
    invoke-static {v6}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3036
    .local v4, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-nez v4, :cond_9

    .line 3037
    const-string/jumbo v7, "Notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown style class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3041
    :cond_9
    const/4 v7, 0x0

    :try_start_0
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 3042
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 3043
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Style;

    .line 3044
    .local v3, "style":Landroid/app/Notification$Style;
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v7}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 3046
    if-eqz v3, :cond_2

    .line 3047
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3049
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    .end local v3    # "style":Landroid/app/Notification$Style;
    :catch_0
    move-exception v5

    .line 3050
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "Notification"

    const-string/jumbo v8, "Could not create Style"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 2980
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 2981
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p2}, Landroid/app/Notification;->-set4(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 2982
    return-void
.end method

.method private applyStandardTemplate(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 4061
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "resId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .prologue
    const/4 v6, 0x0

    const v5, 0x1020016

    .line 4073
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 4075
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 4077
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4078
    .local v1, "ex":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->updateBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 4079
    iget-boolean v4, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-direct {p0, v0, v4}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Z)V

    .line 4080
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;)V

    .line 4081
    iget-boolean v4, p2, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    invoke-direct {p0, v4, v0, v1}, Landroid/app/Notification$Builder;->handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z

    move-result v2

    .line 4082
    .local v2, "showProgress":Z
    iget-object v4, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 4083
    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4084
    iget-object v4, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4085
    iget-boolean v4, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v4, :cond_0

    .line 4086
    invoke-direct {p0, v0, v5}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    .line 4088
    :cond_0
    if-eqz v2, :cond_4

    .line 4089
    const/4 v4, -0x2

    .line 4088
    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewLayoutWidth(II)V

    .line 4092
    :cond_1
    iget-object v4, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 4093
    if-eqz v2, :cond_5

    const v3, 0x1020431

    .line 4095
    .local v3, "textId":I
    :goto_1
    iget-object v4, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4096
    iget-boolean v4, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v4, :cond_2

    .line 4097
    invoke-direct {p0, v0, v3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4099
    :cond_2
    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4102
    .end local v3    # "textId":I
    :cond_3
    if-nez v2, :cond_6

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v4

    :goto_2
    invoke-virtual {p0, v0, v4}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    .line 4104
    return-object v0

    .line 4090
    :cond_4
    const/4 v4, -0x1

    goto :goto_0

    .line 4094
    :cond_5
    const v3, 0x1020416

    .restart local v3    # "textId":I
    goto :goto_1

    .line 4102
    .end local v3    # "textId":I
    :cond_6
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    .line 4068
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I

    .prologue
    .line 4518
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 11
    .param p1, "layoutId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .prologue
    .line 4523
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 4525
    .local v2, "big":Landroid/widget/RemoteViews;
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 4527
    const/4 v7, 0x0

    .line 4529
    .local v7, "validRemoteInput":Z
    iget-object v8, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4530
    .local v0, "N":I
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_1

    iget-boolean v8, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    xor-int/lit8 v4, v8, 0x1

    .line 4531
    :goto_0
    const-string/jumbo v8, "setEmphasizedMode"

    const v9, 0x1020189

    invoke-virtual {v2, v9, v8, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4532
    if-lez v0, :cond_5

    .line 4533
    const v8, 0x102018a

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4534
    const v8, 0x1020189

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4535
    iget-boolean v8, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-eqz v8, :cond_2

    .line 4536
    const-string/jumbo v8, "setBackgroundColor"

    const v9, 0x1020189

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v8, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4543
    :goto_1
    const v8, 0x1020323

    .line 4544
    const v9, 0x10500fc

    .line 4543
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 4545
    const/4 v8, 0x3

    if-le v0, v8, :cond_0

    const/4 v0, 0x3

    .line 4546
    :cond_0
    const/4 v5, 0x0

    .end local v7    # "validRemoteInput":Z
    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_6

    .line 4547
    iget-object v8, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 4548
    .local v1, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 4551
    .local v7, "validRemoteInput":Z
    rem-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_3
    iget-boolean v9, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    .line 4550
    invoke-direct {p0, v1, v4, v8, v9}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZZZ)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 4552
    .local v3, "button":Landroid/widget/RemoteViews;
    const v8, 0x1020189

    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 4546
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4530
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v3    # "button":Landroid/widget/RemoteViews;
    .end local v5    # "i":I
    .local v7, "validRemoteInput":Z
    :cond_1
    const/4 v4, 0x0

    .local v4, "emphazisedMode":Z
    goto :goto_0

    .line 4537
    .end local v4    # "emphazisedMode":Z
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4538
    const-string/jumbo v8, "setBackgroundColor"

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionBarColor()I

    move-result v9

    const v10, 0x1020189

    invoke-virtual {v2, v10, v8, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 4540
    :cond_3
    const-string/jumbo v8, "setBackgroundColor"

    iget-object v9, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4541
    const v10, 0x10600e7

    .line 4540
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    const v10, 0x1020189

    invoke-virtual {v2, v10, v8, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 4551
    .restart local v1    # "action":Landroid/app/Notification$Action;
    .restart local v5    # "i":I
    .local v7, "validRemoteInput":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 4555
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v5    # "i":I
    .local v7, "validRemoteInput":Z
    :cond_5
    const v8, 0x102018a

    const/16 v9, 0x8

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4558
    .end local v7    # "validRemoteInput":Z
    :cond_6
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "android.remoteInputHistory"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 4559
    .local v6, "replyText":[Ljava/lang/CharSequence;
    iget-boolean v8, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v8, :cond_7

    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    .line 4560
    array-length v8, v6

    if-lez v8, :cond_7

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 4559
    if-eqz v8, :cond_7

    .line 4561
    const v8, 0x1020327

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4563
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4562
    const v9, 0x1020328

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4564
    const v8, 0x1020328

    invoke-direct {p0, v2, v8}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4566
    array-length v8, v6

    const/4 v9, 0x1

    if-le v8, v9, :cond_7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    .line 4567
    const v8, 0x1020329

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4569
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4568
    const v9, 0x1020329

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4570
    const v8, 0x1020329

    invoke-direct {p0, v2, v8}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4572
    array-length v8, v6

    const/4 v9, 0x2

    if-le v8, v9, :cond_7

    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    .line 4574
    const v8, 0x102032a

    const/4 v9, 0x0

    .line 4573
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4576
    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4575
    const v9, 0x102032a

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4577
    const v8, 0x102032a

    invoke-direct {p0, v2, v8}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4582
    :cond_7
    return-object v2
.end method

.method private bindExpandButton(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 4364
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getPrimaryHighlightColor()I

    move-result v4

    .line 4366
    .local v4, "color":I
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4365
    const v1, 0x1020232

    const/4 v2, 0x0

    move-object v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 4367
    const-string/jumbo v0, "setOriginalNotificationColor"

    const v1, 0x1020325

    invoke-virtual {p1, v1, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4369
    return-void
.end method

.method private bindHeaderAppName(Landroid/widget/RemoteViews;Z)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z

    .prologue
    const v1, 0x10201ab

    .line 4465
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4466
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 4467
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    .line 4472
    :goto_0
    return-void

    .line 4470
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v0

    .line 4469
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0

    .line 4470
    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v0

    goto :goto_1
.end method

.method private bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x1020437

    const/4 v3, 0x0

    const v6, 0x1020433

    const v8, 0x10201f1

    .line 4380
    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4381
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4382
    invoke-direct {p0, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4383
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.showChronometer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4384
    invoke-virtual {p1, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4385
    const-string/jumbo v1, "setBase"

    .line 4386
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 4385
    invoke-virtual {p1, v8, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 4387
    const-string/jumbo v1, "setStarted"

    const/4 v2, 0x1

    invoke-virtual {p1, v8, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4388
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.chronometerCountDown"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4389
    .local v0, "countsDown":Z
    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 4390
    invoke-direct {p0, p1, v8}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4401
    .end local v0    # "countsDown":Z
    :goto_0
    return-void

    .line 4392
    :cond_0
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4393
    const-string/jumbo v1, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 4394
    invoke-direct {p0, p1, v6}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    goto :goto_0

    .line 4399
    :cond_1
    const-string/jumbo v1, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    :goto_1
    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-get0(Landroid/app/Notification;)J

    move-result-wide v2

    goto :goto_1
.end method

.method private bindHeaderText(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v5, 0x102027d

    const/4 v4, 0x0

    const v3, 0x102027c

    .line 4404
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.subText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4405
    .local v0, "headerText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-boolean v1, v1, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v1, :cond_0

    .line 4406
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v1

    .line 4405
    if-eqz v1, :cond_0

    .line 4407
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v1, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 4409
    :cond_0
    if-nez v0, :cond_1

    .line 4410
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 4411
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4412
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4414
    :cond_1
    if-eqz v0, :cond_2

    .line 4417
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4416
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4418
    invoke-direct {p0, p1, v3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4419
    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4420
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4421
    invoke-direct {p0, p1, v5}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4423
    :cond_2
    return-void
.end method

.method private bindLargeIcon(Landroid/widget/RemoteViews;)V
    .locals 14
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 4291
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 4292
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-set9(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4294
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4295
    const v0, 0x1020397

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4296
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, 0x1020397

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 4297
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 4298
    const v13, 0x1050107

    .line 4299
    .local v13, "endMargin":I
    const v0, 0x10202d2

    invoke-virtual {p1, v0, v13}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 4300
    const v0, 0x1020416

    invoke-virtual {p1, v0, v13}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 4301
    const v0, 0x102000d

    invoke-virtual {p1, v0, v13}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 4303
    invoke-direct {p0}, Landroid/app/Notification$Builder;->findReplyAction()Landroid/app/Notification$Action;

    move-result-object v12

    .line 4304
    .local v12, "action":Landroid/app/Notification$Action;
    if-eqz v12, :cond_2

    .line 4305
    const/4 v0, 0x0

    .line 4304
    :goto_0
    const v1, 0x102038d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4308
    if-eqz v12, :cond_1

    .line 4309
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    .line 4314
    .local v4, "contrastColor":I
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4310
    const v1, 0x102038d

    .line 4311
    const/4 v2, 0x1

    .line 4312
    const/4 v3, -0x1

    .line 4314
    const/4 v6, -0x1

    move-object v0, p1

    .line 4310
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 4315
    invoke-static {v4}, Lcom/android/internal/util/NotificationColorUtil;->isColorLight(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4316
    const/high16 v9, -0x1000000

    .line 4321
    .local v9, "iconColor":I
    :goto_1
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4317
    const v6, 0x102038d

    .line 4318
    const/4 v7, 0x0

    .line 4319
    const/4 v8, -0x1

    .line 4321
    const/4 v11, -0x1

    move-object v5, p1

    .line 4317
    invoke-virtual/range {v5 .. v11}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 4323
    iget-object v0, v12, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 4322
    const v1, 0x1020397

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4325
    iget-object v0, v12, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 4324
    const v1, 0x102038d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4326
    invoke-static {v12}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v0

    const v1, 0x1020397

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 4327
    invoke-static {v12}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v0

    const v1, 0x102038d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 4331
    .end local v4    # "contrastColor":I
    .end local v9    # "iconColor":I
    .end local v12    # "action":Landroid/app/Notification$Action;
    .end local v13    # "endMargin":I
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4332
    const/4 v0, 0x0

    .line 4331
    :goto_2
    const v1, 0x1020398

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4334
    return-void

    .line 4306
    .restart local v12    # "action":Landroid/app/Notification$Action;
    .restart local v13    # "endMargin":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 4316
    .restart local v4    # "contrastColor":I
    :cond_3
    const/4 v9, -0x1

    .restart local v9    # "iconColor":I
    goto :goto_1

    .line 4333
    .end local v4    # "contrastColor":I
    .end local v9    # "iconColor":I
    .end local v12    # "action":Landroid/app/Notification$Action;
    .end local v13    # "endMargin":I
    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method

.method private bindNotificationHeader(Landroid/widget/RemoteViews;Z)V
    .locals 0
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z

    .prologue
    .line 4352
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;Z)V

    .line 4353
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Z)V

    .line 4354
    if-nez p2, :cond_0

    .line 4356
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;)V

    .line 4357
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V

    .line 4358
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;)V

    .line 4360
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;)V

    .line 4361
    return-void
.end method

.method private bindProfileBadge(Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    const v1, 0x1020377

    .line 4013
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4015
    .local v7, "profileBadge":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 4016
    invoke-virtual {p1, v1, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4017
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4018
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4020
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p1

    move v6, v3

    .line 4019
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 4023
    :cond_0
    return-void
.end method

.method private bindSmallIcon(Landroid/widget/RemoteViews;Z)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z

    .prologue
    const v1, 0x1020006

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 4475
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    .line 4476
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-static {v4, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/app/Notification;->-set15(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4480
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v2, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 4481
    const-string/jumbo v0, "com.oppo.market"

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4480
    if-eqz v0, :cond_1

    .line 4482
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const-string/jumbo v4, "android"

    const v6, 0x1080499

    invoke-static {v4, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/app/Notification;->-set15(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4486
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 4488
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v6, v0, Landroid/app/Notification;->iconLevel:I

    move-object v0, p1

    move v4, v3

    .line 4487
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 4489
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V

    .line 4490
    return-void
.end method

.method private createSummaryText()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 4836
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4837
    .local v3, "titleText":Ljava/lang/CharSequence;
    sget-boolean v4, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    if-eqz v4, :cond_0

    .line 4838
    return-object v3

    .line 4840
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4841
    .local v2, "summary":Landroid/text/SpannableStringBuilder;
    if-nez v3, :cond_1

    .line 4842
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.title.big"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4844
    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 4845
    .local v0, "bidi":Landroid/text/BidiFormatter;
    if-eqz v3, :cond_2

    .line 4846
    invoke-virtual {v0, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4848
    :cond_2
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.text"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4849
    .local v1, "contentText":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 4850
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4851
    const v5, 0x10403e0

    .line 4850
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4853
    :cond_3
    if-eqz v1, :cond_4

    .line 4854
    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4856
    :cond_4
    return-object v2
.end method

.method private ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;
    .locals 24
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "background"    # I
    .param p3, "outResultColor"    # [Landroid/content/res/ColorStateList;

    .prologue
    .line 4927
    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_7

    move-object/from16 v20, p1

    .line 4928
    check-cast v20, Landroid/text/Spanned;

    .line 4929
    .local v20, "ss":Landroid/text/Spanned;
    invoke-interface/range {v20 .. v20}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    .line 4930
    .local v19, "spans":[Ljava/lang/Object;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-interface/range {v20 .. v20}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4931
    .local v8, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v22, v3

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    aget-object v16, v19, v22

    .line 4932
    .local v16, "span":Ljava/lang/Object;
    move-object/from16 v2, v16

    .line 4933
    .local v2, "resultSpan":Ljava/lang/Object;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 4934
    .local v18, "spanStart":I
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    .line 4935
    .local v17, "spanEnd":I
    sub-int v3, v17, v18

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v11, 0x1

    .line 4936
    .local v11, "fullLength":Z
    :goto_1
    move-object/from16 v0, v16

    instance-of v3, v0, Landroid/text/style/CharacterStyle;

    if-eqz v3, :cond_0

    move-object/from16 v3, v16

    .line 4937
    check-cast v3, Landroid/text/style/CharacterStyle;

    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v2

    .line 4939
    :cond_0
    instance-of v3, v2, Landroid/text/style/TextAppearanceSpan;

    if-eqz v3, :cond_4

    move-object v15, v2

    .line 4940
    check-cast v15, Landroid/text/style/TextAppearanceSpan;

    .line 4941
    .local v15, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v21

    .line 4942
    .local v21, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v21, :cond_3

    .line 4943
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v9

    .line 4944
    .local v9, "colors":[I
    array-length v3, v9

    new-array v13, v3, [I

    .line 4945
    .local v13, "newColors":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    array-length v3, v13

    if-ge v12, v3, :cond_2

    .line 4947
    aget v3, v9, v12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 4946
    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v3

    aput v3, v13, v12

    .line 4945
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 4935
    .end local v9    # "colors":[I
    .end local v11    # "fullLength":Z
    .end local v12    # "i":I
    .end local v13    # "newColors":[I
    .end local v15    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v21    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "fullLength":Z
    goto :goto_1

    .line 4949
    .restart local v9    # "colors":[I
    .restart local v12    # "i":I
    .restart local v13    # "newColors":[I
    .restart local v15    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .restart local v21    # "textColor":Landroid/content/res/ColorStateList;
    :cond_2
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    invoke-direct {v6, v3, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 4951
    .end local v21    # "textColor":Landroid/content/res/ColorStateList;
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    .line 4952
    .end local v2    # "resultSpan":Ljava/lang/Object;
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v3

    .line 4953
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v4

    .line 4954
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v5

    .line 4956
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 4951
    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 4957
    .restart local v2    # "resultSpan":Ljava/lang/Object;
    if-eqz v11, :cond_3

    .line 4958
    new-instance v4, Landroid/content/res/ColorStateList;

    .line 4959
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 4958
    invoke-direct {v4, v3, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    aput-object v4, p3, v3

    .line 4975
    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    .end local v9    # "colors":[I
    .end local v12    # "i":I
    .end local v13    # "newColors":[I
    .end local v15    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_3
    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v8, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4931
    add-int/lit8 v3, v22, 0x1

    move/from16 v22, v3

    goto/16 :goto_0

    .line 4962
    :cond_4
    instance-of v3, v2, Landroid/text/style/ForegroundColorSpan;

    if-eqz v3, :cond_5

    move-object v14, v2

    .line 4963
    check-cast v14, Landroid/text/style/ForegroundColorSpan;

    .line 4964
    .local v14, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v14}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v10

    .line 4966
    .local v10, "foregroundColor":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 4965
    move/from16 v0, p2

    invoke-static {v10, v0, v3}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v10

    .line 4967
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .end local v2    # "resultSpan":Ljava/lang/Object;
    invoke-direct {v2, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 4968
    .restart local v2    # "resultSpan":Ljava/lang/Object;
    if-eqz v11, :cond_3

    .line 4969
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p3, v4

    goto :goto_3

    .line 4972
    .end local v10    # "foregroundColor":I
    .end local v14    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_5
    move-object/from16 v2, v16

    goto :goto_3

    .line 4977
    .end local v2    # "resultSpan":Ljava/lang/Object;
    .end local v11    # "fullLength":Z
    .end local v16    # "span":Ljava/lang/Object;
    .end local v17    # "spanEnd":I
    .end local v18    # "spanStart":I
    :cond_6
    return-object v8

    .line 4979
    .end local v8    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v19    # "spans":[Ljava/lang/Object;
    .end local v20    # "ss":Landroid/text/Spanned;
    :cond_7
    return-object p1
.end method

.method private ensureColors()V
    .locals 12

    .prologue
    .line 4159
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v2

    .line 4160
    .local v2, "backgroundColor":I
    iget v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 4161
    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 4164
    :cond_0
    :goto_0
    iput v2, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 4165
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    .line 4166
    :cond_1
    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolvePrimaryColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4168
    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveSecondaryColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4170
    if-eqz v2, :cond_3

    .line 4171
    iget v8, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v8

    .line 4170
    if-eqz v8, :cond_3

    .line 4173
    :cond_2
    iget v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 4172
    invoke-static {v8, v2, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4175
    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 4174
    invoke-static {v8, v2, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4236
    :cond_3
    :goto_1
    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveActionBarColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    .line 4239
    :cond_4
    return-void

    .line 4162
    :cond_5
    iget v8, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 4163
    iget v8, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    if-eq v8, v2, :cond_4

    goto :goto_0

    .line 4178
    :cond_6
    invoke-static {v2}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    .line 4179
    .local v0, "backLum":D
    iget v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v8}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v6

    .line 4180
    .local v6, "textLum":D
    iget v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v8, v2}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v4

    .line 4184
    .local v4, "contrast":D
    cmpl-double v8, v0, v6

    if-lez v8, :cond_7

    .line 4185
    const/high16 v8, -0x1000000

    invoke-static {v2, v8}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v8

    .line 4184
    if-nez v8, :cond_8

    .line 4186
    :cond_7
    cmpg-double v8, v0, v6

    if-gtz v8, :cond_9

    .line 4187
    const/4 v8, -0x1

    invoke-static {v2, v8}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v8

    xor-int/lit8 v3, v8, 0x1

    .line 4188
    :goto_2
    const-wide/high16 v8, 0x4012000000000000L    # 4.5

    cmpg-double v8, v4, v8

    if-gez v8, :cond_b

    .line 4189
    if-eqz v3, :cond_a

    .line 4191
    iget v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 4194
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 4193
    const/4 v9, 0x1

    .line 4190
    invoke-static {v8, v2, v9, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4196
    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    const/16 v9, -0x14

    .line 4195
    invoke-static {v8, v9}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto :goto_1

    .line 4184
    :cond_8
    const/4 v3, 0x1

    .local v3, "backgroundLight":Z
    goto :goto_2

    .line 4186
    .end local v3    # "backgroundLight":Z
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "backgroundLight":Z
    goto :goto_2

    .line 4200
    .end local v3    # "backgroundLight":Z
    :cond_a
    iget v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 4203
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 4202
    const/4 v9, 0x1

    .line 4199
    invoke-static {v8, v2, v9, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v8

    .line 4198
    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4205
    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    const/16 v9, 0xa

    .line 4204
    invoke-static {v8, v9}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto :goto_1

    .line 4208
    :cond_b
    iget v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4210
    iget v9, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    if-eqz v3, :cond_c

    const/16 v8, 0x14

    .line 4209
    :goto_3
    invoke-static {v9, v8}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4212
    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v8, v2}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v8

    .line 4213
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 4212
    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 4215
    if-eqz v3, :cond_d

    .line 4217
    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4220
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 4219
    const/4 v9, 0x1

    .line 4216
    invoke-static {v8, v2, v9, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4230
    :goto_4
    iget v9, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    if-eqz v3, :cond_e

    .line 4231
    const/16 v8, -0x14

    .line 4229
    :goto_5
    invoke-static {v9, v8}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto/16 :goto_1

    .line 4211
    :cond_c
    const/16 v8, -0xa

    goto :goto_3

    .line 4224
    :cond_d
    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4227
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 4226
    const/4 v9, 0x1

    .line 4223
    invoke-static {v8, v2, v9, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v8

    .line 4222
    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    goto :goto_4

    .line 4232
    :cond_e
    const/16 v8, 0xa

    goto :goto_5
.end method

.method private findReplyAction()Landroid/app/Notification$Action;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4337
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 4338
    .local v1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    iget-object v4, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 4339
    iget-object v1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    .line 4341
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4342
    .local v3, "numActions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 4343
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    .line 4344
    .local v0, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4345
    return-object v0

    .line 4342
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4348
    .end local v0    # "action":Landroid/app/Notification$Action;
    :cond_2
    return-object v5
.end method

.method private generateActionButton(Landroid/app/Notification$Action;ZZZ)Landroid/widget/RemoteViews;
    .locals 10
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "emphazisedMode"    # Z
    .param p3, "oddAction"    # Z
    .param p4, "ambient"    # Z

    .prologue
    .line 4861
    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    const/4 v9, 0x1

    .line 4862
    .local v9, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4863
    if-eqz p2, :cond_4

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    move-result v1

    .line 4862
    :goto_1
    invoke-direct {v0, v2, v1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 4866
    .local v0, "button":Landroid/widget/RemoteViews;
    if-nez v9, :cond_0

    .line 4867
    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const v2, 0x1020172

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4869
    :cond_0
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    const v2, 0x1020172

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 4870
    invoke-static {p1}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4871
    invoke-static {p1}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v1

    const v2, 0x1020172

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 4874
    :cond_1
    if-eqz p2, :cond_b

    .line 4877
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4878
    if-eqz p3, :cond_6

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionBarColor()I

    move-result v4

    .line 4884
    .local v4, "bgColor":I
    :goto_2
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4883
    const v1, 0x10201d8

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 4884
    const/4 v6, -0x1

    .line 4883
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 4885
    iget-object v8, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 4886
    .local v8, "title":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 4887
    .local v7, "outResultColor":[Landroid/content/res/ColorStateList;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4888
    invoke-static {v8}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4893
    .end local v7    # "outResultColor":[Landroid/content/res/ColorStateList;
    :goto_3
    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x1020172

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4894
    const v1, 0x1020172

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    .line 4895
    if-eqz v7, :cond_a

    const/4 v1, 0x0

    aget-object v1, v7, v1

    if-eqz v1, :cond_a

    .line 4898
    const/4 v1, 0x0

    aget-object v1, v7, v1

    const v2, 0x1020172

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(ILandroid/content/res/ColorStateList;)V

    .line 4912
    .end local v4    # "bgColor":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_2
    :goto_4
    return-object v0

    .line 4861
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v9    # "tombstone":Z
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "tombstone":Z
    goto :goto_0

    .line 4864
    :cond_4
    if-eqz v9, :cond_5

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v1

    goto :goto_1

    .line 4865
    :cond_5
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v1

    goto :goto_1

    .line 4878
    .restart local v0    # "button":Landroid/widget/RemoteViews;
    :cond_6
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionBarColorDeEmphasized()I

    move-result v4

    .restart local v4    # "bgColor":I
    goto :goto_2

    .line 4880
    .end local v4    # "bgColor":I
    :cond_7
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_8

    const v1, 0x10600e7

    :goto_5
    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .restart local v4    # "bgColor":I
    goto :goto_2

    .line 4881
    .end local v4    # "bgColor":I
    :cond_8
    const v1, 0x10600e8

    goto :goto_5

    .line 4890
    .restart local v4    # "bgColor":I
    .restart local v7    # "outResultColor":[Landroid/content/res/ColorStateList;
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_9
    const/4 v1, 0x1

    new-array v7, v1, [Landroid/content/res/ColorStateList;

    .line 4891
    .local v7, "outResultColor":[Landroid/content/res/ColorStateList;
    invoke-direct {p0, v8, v4, v7}, Landroid/app/Notification$Builder;->ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_3

    .line 4899
    .end local v7    # "outResultColor":[Landroid/content/res/ColorStateList;
    :cond_a
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-eqz v1, :cond_2

    .line 4900
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    const v2, 0x1020172

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_4

    .line 4904
    .end local v4    # "bgColor":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_b
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4903
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x1020172

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4905
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v1

    if-eqz v1, :cond_c

    xor-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_c

    .line 4906
    const v1, 0x1020172

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    goto :goto_4

    .line 4907
    :cond_c
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-eqz v1, :cond_2

    .line 4909
    if-eqz p4, :cond_d

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v1

    .line 4908
    :goto_6
    const v2, 0x1020172

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_4

    .line 4909
    :cond_d
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    goto :goto_6
.end method

.method private getActionBarColor()I
    .locals 1

    .prologue
    .line 4144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4145
    iget v0, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    return v0
.end method

.method private getActionBarColorDeEmphasized()I
    .locals 2

    .prologue
    .line 4149
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v0

    .line 4150
    .local v0, "backgroundColor":I
    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->getShiftedColor(II)I

    move-result v1

    return v1
.end method

.method private getActionLayoutResource()I
    .locals 1

    .prologue
    .line 5298
    const v0, 0x1090085

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    .prologue
    .line 5306
    const v0, 0x1090088

    return v0
.end method

.method private getAllExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 3835
    iget-object v1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 3836
    .local v0, "saveExtras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3837
    return-object v0
.end method

.method private getBackgroundColor()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5310
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5311
    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    goto :goto_0

    .line 5313
    :cond_1
    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    :goto_1
    return v0

    .line 5314
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getBaseLayoutResource()I
    .locals 1

    .prologue
    .line 5274
    const v0, 0x109008e

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    .prologue
    .line 5278
    const v0, 0x109008f

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    .prologue
    .line 5282
    const v0, 0x1090091

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    .prologue
    .line 5286
    const v0, 0x1090092

    return v0
.end method

.method private getColorUtil()Lcom/android/internal/util/NotificationColorUtil;
    .locals 1

    .prologue
    .line 3059
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    if-nez v0, :cond_0

    .line 3060
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 3062
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    return-object v0
.end method

.method private getEmphasizedActionLayoutResource()I
    .locals 1

    .prologue
    .line 5302
    const v0, 0x1090086

    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    .prologue
    .line 5290
    const v0, 0x1090093

    return v0
.end method

.method private getMessagingLayoutResource()I
    .locals 1

    .prologue
    .line 5294
    const v0, 0x1090095

    return v0
.end method

.method private getPrimaryHighlightColor()I
    .locals 1

    .prologue
    .line 4376
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v0

    goto :goto_0
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3999
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4000
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 4001
    return-object v4

    .line 4003
    :cond_0
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 4004
    const v5, 0x10500fd

    .line 4003
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4005
    .local v3, "size":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4006
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4007
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4008
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4009
    return-object v1
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3983
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3985
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_1

    .line 3990
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 3994
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3995
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 3994
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "hasProgress"    # Z
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "ex"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x102000d

    const/4 v5, 0x0

    .line 4268
    const-string/jumbo v4, "android.progressMax"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4269
    .local v2, "max":I
    const-string/jumbo v4, "android.progress"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4270
    .local v3, "progress":I
    const-string/jumbo v4, "android.progressIndeterminate"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 4271
    .local v1, "ind":Z
    if-eqz p1, :cond_2

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    .line 4272
    :cond_0
    invoke-virtual {p2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4273
    invoke-virtual {p2, v6, v2, v3, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 4276
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4277
    const v5, 0x10600ee

    .line 4276
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 4275
    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 4278
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->color:I

    if-eqz v4, :cond_1

    .line 4279
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 4280
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 4281
    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 4283
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 4285
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4286
    return v5
.end method

.method private hasForegroundColor()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4120
    iget v1, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const/4 v4, 0x0

    .line 4586
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_1

    .line 4588
    :cond_0
    return v4

    .line 4591
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v2

    .line 4592
    .local v2, "remoteInputs":[Landroid/app/RemoteInput;
    if-nez v2, :cond_2

    .line 4593
    return v4

    .line 4596
    :cond_2
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v1, v2, v3

    .line 4597
    .local v1, "r":Landroid/app/RemoteInput;
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 4598
    .local v0, "choices":[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_4

    array-length v6, v0

    if-eqz v6, :cond_4

    .line 4599
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 4596
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4602
    .end local v0    # "choices":[Ljava/lang/CharSequence;
    .end local v1    # "r":Landroid/app/RemoteInput;
    :cond_5
    return v4
.end method

.method private hideLine1Text(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "result"    # Landroid/widget/RemoteViews;

    .prologue
    .line 4695
    if-eqz p1, :cond_0

    .line 4696
    const v0, 0x1020431

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4698
    :cond_0
    return-void
.end method

.method private isColorized()Z
    .locals 1

    .prologue
    .line 5319
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    return v0
.end method

.method private isLegacy()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4987
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    if-nez v0, :cond_0

    .line 4988
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4989
    const/16 v2, 0x15

    .line 4988
    if-ge v0, v2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    .line 4990
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    .line 4992
    :cond_0
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    return v0

    .line 4988
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p0, "result"    # Landroid/widget/RemoteViews;

    .prologue
    .line 4706
    if-eqz p0, :cond_0

    .line 4707
    const-string/jumbo v0, "setExpanded"

    const v1, 0x1020325

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4709
    :cond_0
    return-void
.end method

.method private makePublicView(Z)Landroid/widget/RemoteViews;
    .locals 14
    .param p1, "ambient"    # Z

    .prologue
    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 4762
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v8, :cond_1

    .line 4763
    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v8, v9}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 4764
    .local v1, "builder":Landroid/app/Notification$Builder;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    goto :goto_0

    .line 4766
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    :cond_1
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4767
    .local v5, "savedBundle":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 4768
    .local v6, "style":Landroid/app/Notification$Style;
    iput-object v9, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 4769
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v8}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 4770
    .local v2, "largeIcon":Landroid/graphics/drawable/Icon;
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v8, v9}, Landroid/app/Notification;->-set9(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4771
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v8, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 4772
    .local v3, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v9, v8, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 4773
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 4774
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 4775
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4776
    .local v4, "publicExtras":Landroid/os/Bundle;
    const-string/jumbo v8, "android.showWhen"

    .line 4777
    const-string/jumbo v9, "android.showWhen"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 4776
    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4778
    const-string/jumbo v8, "android.showChronometer"

    .line 4779
    const-string/jumbo v9, "android.showChronometer"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 4778
    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4780
    const-string/jumbo v8, "android.chronometerCountDown"

    .line 4781
    const-string/jumbo v9, "android.chronometerCountDown"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 4780
    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4782
    const-string/jumbo v8, "android.title"

    .line 4785
    iget-object v9, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    const/high16 v11, 0x50c0000

    invoke-virtual {v9, v11, v12, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 4782
    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4787
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v4, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4789
    if-eqz p1, :cond_2

    .line 4790
    const-string/jumbo v8, "android.title"

    .line 4791
    iget-object v9, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v10, 0x10403e1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4790
    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4792
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v7

    .line 4797
    .local v7, "view":Landroid/widget/RemoteViews;
    :goto_1
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v5, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4798
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v8, v2}, Landroid/app/Notification;->-set9(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4799
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v3, v8, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 4800
    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 4801
    iput-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 4802
    return-object v7

    .line 4794
    .end local v7    # "view":Landroid/widget/RemoteViews;
    :cond_2
    invoke-virtual {p0, v13}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 4795
    .restart local v7    # "view":Landroid/widget/RemoteViews;
    const-string/jumbo v8, "setExpandOnlyOnButton"

    const v9, 0x1020325

    invoke-virtual {v7, v9, v8, v12}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_1
.end method

.method public static maybeCloneStrippedForDelivery(Landroid/app/Notification;Z)Landroid/app/Notification;
    .locals 9
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "isLowRam"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 5225
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.template"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5229
    .local v4, "templateClass":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 5230
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 5229
    if-eqz v5, :cond_0

    .line 5231
    invoke-static {v4}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_0

    .line 5232
    return-object p0

    .line 5236
    :cond_0
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_2

    .line 5237
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.contentViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 5238
    iget-object v6, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    .line 5237
    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    .line 5239
    .local v2, "stripContentView":Z
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_4

    .line 5240
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.bigViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 5241
    iget-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    .line 5240
    if-ne v5, v6, :cond_3

    const/4 v1, 0x1

    .line 5242
    .local v1, "stripBigContentView":Z
    :goto_1
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_6

    .line 5243
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 5244
    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    .line 5243
    if-ne v5, v6, :cond_5

    const/4 v3, 0x1

    .line 5247
    .local v3, "stripHeadsUpContentView":Z
    :goto_2
    if-nez p1, :cond_7

    .line 5248
    xor-int/lit8 v5, v2, 0x1

    .line 5247
    if-eqz v5, :cond_7

    .line 5248
    xor-int/lit8 v5, v1, 0x1

    .line 5247
    if-eqz v5, :cond_7

    .line 5248
    xor-int/lit8 v5, v3, 0x1

    .line 5247
    if-eqz v5, :cond_7

    .line 5249
    return-object p0

    .line 5237
    .end local v1    # "stripBigContentView":Z
    .end local v2    # "stripContentView":Z
    .end local v3    # "stripHeadsUpContentView":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "stripContentView":Z
    goto :goto_0

    .line 5236
    .end local v2    # "stripContentView":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "stripContentView":Z
    goto :goto_0

    .line 5240
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "stripBigContentView":Z
    goto :goto_1

    .line 5239
    .end local v1    # "stripBigContentView":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "stripBigContentView":Z
    goto :goto_1

    .line 5243
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "stripHeadsUpContentView":Z
    goto :goto_2

    .line 5242
    .end local v3    # "stripHeadsUpContentView":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "stripHeadsUpContentView":Z
    goto :goto_2

    .line 5252
    :cond_7
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    .line 5253
    .local v0, "clone":Landroid/app/Notification;
    if-eqz v2, :cond_8

    .line 5254
    iput-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5255
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.contentViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5257
    :cond_8
    if-eqz v1, :cond_9

    .line 5258
    iput-object v7, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5259
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.bigViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5261
    :cond_9
    if-eqz v3, :cond_a

    .line 5262
    iput-object v7, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5263
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5265
    :cond_a
    if-eqz p1, :cond_b

    .line 5266
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.tv.EXTENSIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5267
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.wearable.EXTENSIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5268
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.car.EXTENSIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5270
    :cond_b
    return-object v0
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 5031
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5032
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    .line 5031
    if-eqz v0, :cond_0

    .line 5034
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    .line 5035
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 5034
    const v1, 0x1020006

    const/4 v2, 0x0

    move-object v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 5037
    :cond_0
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 4996
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "ambient"    # Z

    .prologue
    .line 5000
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->textColorsNeedInversion()Z

    move-result v0

    .line 5001
    :goto_0
    move v1, p2

    .line 5002
    .local v1, "wantLightText":Z
    if-eq v0, p2, :cond_1

    .line 5003
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 5000
    .end local v1    # "wantLightText":Z
    :cond_0
    const/4 v0, 0x1

    .local v0, "isAlreadyLightText":Z
    goto :goto_0

    .line 5005
    .end local v0    # "isAlreadyLightText":Z
    .restart local v1    # "wantLightText":Z
    :cond_1
    return-object p1
.end method

.method private processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V
    .locals 8
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "ambient"    # Z

    .prologue
    const/4 v3, -0x1

    .line 5014
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v7

    .line 5015
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v4

    .line 5016
    .local v4, "color":I
    :goto_1
    if-eqz v7, :cond_0

    .line 5018
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 5017
    const v1, 0x1020006

    const/4 v2, 0x0

    move-object v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 5021
    :cond_0
    const-string/jumbo v0, "setOriginalIconColor"

    .line 5022
    if-eqz v7, :cond_3

    .line 5021
    .end local v4    # "color":I
    :goto_2
    const v1, 0x1020325

    invoke-virtual {p2, v1, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5023
    return-void

    .line 5014
    :cond_1
    const/4 v7, 0x1

    .local v7, "colorable":Z
    goto :goto_0

    .line 5015
    .end local v7    # "colorable":Z
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getPrimaryHighlightColor()I

    move-result v4

    .restart local v4    # "color":I
    goto :goto_1

    .line 5022
    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4108
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4109
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 4111
    :cond_0
    return-object p1
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 5125
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5126
    const-string/jumbo v4, "android.appInfo"

    .line 5125
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 5128
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 5131
    const/4 v3, 0x4

    .line 5130
    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5140
    .local v1, "builderContext":Landroid/content/Context;
    :goto_0
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-object v3

    .line 5132
    .end local v1    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 5133
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApplicationInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    move-object v1, p0

    .restart local v1    # "builderContext":Landroid/content/Context;
    goto :goto_0

    .line 5137
    .end local v1    # "builderContext":Landroid/content/Context;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v1, p0

    .restart local v1    # "builderContext":Landroid/content/Context;
    goto :goto_0
.end method

.method private resetContentMargins(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v1, 0x0

    .line 4056
    const v0, 0x10202d2

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 4057
    const v0, 0x1020416

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 4058
    return-void
.end method

.method private resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v6, 0x1020377

    const v5, 0x102027c

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 4043
    const-string/jumbo v0, "setExpanded"

    const v1, 0x1020325

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4044
    const v0, 0x10201ab

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4045
    const v0, 0x10201f1

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4046
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4047
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4048
    const v0, 0x102027d

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4049
    const v0, 0x1020437

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4050
    const v0, 0x1020433

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4051
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 4052
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4053
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v5, 0x1020431

    const v4, 0x1020416

    const v3, 0x1020016

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 4026
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 4027
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetContentMargins(Landroid/widget/RemoteViews;)V

    .line 4028
    const v0, 0x1020397

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4029
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4030
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4031
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4032
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4033
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4034
    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4035
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "big"    # Landroid/widget/RemoteViews;

    .prologue
    const v4, 0x102032a

    const v3, 0x1020329

    const v0, 0x1020189

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 4503
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4504
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 4506
    const v0, 0x1020327

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4507
    const v0, 0x1020328

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4509
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4510
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4511
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4512
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4514
    const v0, 0x1020323

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 4515
    return-void
.end method

.method private sanitizeColor()V
    .locals 3

    .prologue
    .line 5040
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_0

    .line 5041
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 5043
    :cond_0
    return-void
.end method

.method private setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .prologue
    .line 4115
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4116
    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4117
    return-void
.end method

.method private setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .prologue
    .line 4154
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4155
    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4156
    return-void
.end method

.method private shouldTintActionButtons()Z
    .locals 1

    .prologue
    .line 5323
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    return v0
.end method

.method private showsTimeOrChronometer()Z
    .locals 1

    .prologue
    .line 4497
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private textColorsNeedInversion()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5327
    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v2, :cond_0

    const-class v2, Landroid/app/Notification$MediaStyle;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v3}, Landroid/app/Notification$Style;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 5328
    :cond_0
    return v1

    .line 5330
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 5331
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x17

    if-le v0, v2, :cond_2

    .line 5332
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_2

    const/4 v1, 0x1

    .line 5331
    :cond_2
    return v1
.end method

.method private updateBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x1020404

    .line 4242
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4243
    const-string/jumbo v0, "setBackgroundColor"

    .line 4244
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v1

    .line 4243
    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4250
    :goto_0
    return-void

    .line 4247
    :cond_0
    const-string/jumbo v0, "setBackgroundResource"

    .line 4248
    const/4 v1, 0x0

    .line 4247
    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private useExistingRemoteView()Z
    .locals 1

    .prologue
    .line 4638
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4639
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    xor-int/lit8 v0, v0, 0x1

    .line 4638
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3861
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3862
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    .line 3881
    if-eqz p1, :cond_0

    .line 3882
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3884
    :cond_0
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3795
    if-eqz p1, :cond_0

    .line 3796
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3798
    :cond_0
    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 3737
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3738
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 5157
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 5158
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5161
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/app/Notification;->-set0(Landroid/app/Notification;J)J

    .line 5164
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 5166
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 5168
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 5169
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 5170
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 5171
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 5173
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    .line 5175
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    .line 5176
    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    .line 5175
    if-eqz v0, :cond_4

    .line 5177
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 5178
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5179
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.contentViewActionCount"

    .line 5180
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 5179
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5182
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    .line 5183
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5184
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 5185
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.bigViewActionCount"

    .line 5186
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 5185
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5189
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_4

    .line 5190
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5191
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 5192
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.hudViewActionCount"

    .line 5193
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 5192
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5198
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 5199
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 5202
    :cond_5
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 5211
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 5212
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 5086
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5087
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 5088
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5090
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5091
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.people"

    .line 5092
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 5091
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5094
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 5096
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.contains.customView"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5101
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    invoke-static {v0, v1}, Landroid/app/Notification;->-set17(Landroid/app/Notification;I)I

    .line 5102
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    invoke-static {v0, v1}, Landroid/app/Notification;->-set14(Landroid/app/Notification;Z)Z

    .line 5103
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    invoke-static {v0, v1}, Landroid/app/Notification;->-set13(Landroid/app/Notification;Z)Z

    .line 5104
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    invoke-static {v0, v2, v3}, Landroid/app/Notification;->-set5(Landroid/app/Notification;J)J

    .line 5105
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    invoke-static {v0, v1}, Landroid/app/Notification;->-set6(Landroid/app/Notification;I)I

    .line 5106
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->-set19(Landroid/app/Notification;I)I

    .line 5107
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mBackgroundColorOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;I)I

    .line 5108
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->-set10(Landroid/app/Notification;I)I

    .line 5109
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set1(Landroid/app/Notification;Landroid/content/Intent;)Landroid/content/Intent;

    .line 5111
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set18(Landroid/app/Notification;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 5115
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0

    .line 5095
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 4646
    const/4 v0, 0x0

    .line 4647
    .local v0, "result":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4648
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 4649
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 4650
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4651
    .local v0, "result":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hideLine1Text(Landroid/widget/RemoteViews;)V

    .line 4655
    .end local v0    # "result":Landroid/widget/RemoteViews;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 4656
    return-object v0

    .line 4652
    .local v0, "result":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4653
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .local v0, "result":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 4612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createContentView(Z)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "increasedHeight"    # Z

    .prologue
    .line 4626
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4627
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 4628
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1

    .line 4629
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4630
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_1

    .line 4631
    return-object v0

    .line 4634
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 4740
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "increasedHeight"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4722
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4723
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 4724
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1

    .line 4725
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4726
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_2

    .line 4727
    return-object v0

    .line 4729
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 4730
    return-object v2

    .line 4733
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    .prologue
    .line 3953
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 3954
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 3831
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5148
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextColor()I
    .locals 1

    .prologue
    .line 4129
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4130
    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .prologue
    .line 4139
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4140
    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    return v0
.end method

.method public loadHeaderAppName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4429
    const/4 v0, 0x0

    .line 4430
    .local v0, "name":Ljava/lang/CharSequence;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4431
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.substName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4436
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4437
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.substName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4439
    .local v3, "subName":Ljava/lang/String;
    const-string/jumbo v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    .line 4438
    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 4440
    move-object v0, v3

    .line 4448
    .end local v0    # "name":Ljava/lang/CharSequence;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4449
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4451
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4453
    return-object v8

    .line 4442
    .restart local v0    # "name":Ljava/lang/CharSequence;
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v3    # "subName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "warning: pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4443
    const-string/jumbo v6, " attempting to substitute app name \'"

    .line 4442
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4444
    const-string/jumbo v6, "\' without holding perm "

    .line 4442
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4445
    const-string/jumbo v6, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    .line 4442
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4457
    .end local v0    # "name":Ljava/lang/CharSequence;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_4

    if-eqz v0, :cond_4

    .line 4458
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    const v6, 0x50b0042

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4462
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public makeAmbientNotification()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 4690
    iget-object v1, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->ambient(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 4689
    const v2, 0x109008d

    .line 4688
    invoke-direct {p0, v2, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4691
    .local v0, "ambient":Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "useRegularSubtext"    # Z

    .prologue
    const/4 v6, 0x0

    .line 4814
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v4, Landroid/app/Notification;->color:I

    .line 4815
    .local v0, "color":I
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v6, v4, Landroid/app/Notification;->color:I

    .line 4816
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.subText"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4817
    .local v3, "summary":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4818
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createSummaryText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4819
    .local v2, "newSummary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4820
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.subText"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4824
    .end local v2    # "newSummary":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 4825
    .local v1, "header":Landroid/widget/RemoteViews;
    const-string/jumbo v4, "setAcceptAllTouches"

    const v5, 0x1020325

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v4, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4826
    if-eqz v3, :cond_2

    .line 4827
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.subText"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4831
    :goto_0
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v0, v4, Landroid/app/Notification;->color:I

    .line 4832
    return-object v1

    .line 4829
    :cond_2
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.subText"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public makeNotificationHeader(Z)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "ambient"    # Z

    .prologue
    .line 4667
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.colorized"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4668
    .local v0, "colorized":Ljava/lang/Boolean;
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.colorized"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4669
    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 4670
    if-eqz p1, :cond_0

    const v2, 0x109008b

    .line 4669
    :goto_0
    invoke-direct {v1, v3, v2}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 4672
    .local v1, "header":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 4673
    invoke-direct {p0, v1, p1}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Z)V

    .line 4674
    if-eqz v0, :cond_1

    .line 4675
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.colorized"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4679
    :goto_1
    return-object v1

    .line 4671
    .end local v1    # "header":Landroid/widget/RemoteViews;
    :cond_0
    const v2, 0x109008c

    goto :goto_0

    .line 4677
    .restart local v1    # "header":Landroid/widget/RemoteViews;
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.colorized"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public makePublicAmbientNotification()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 4758
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makePublicContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 4749
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method resolveAmbientColor()I
    .locals 3

    .prologue
    .line 5072
    iget v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 5073
    iget v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    return v1

    .line 5075
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveAmbientColor(Landroid/content/Context;I)I

    move-result v0

    .line 5077
    .local v0, "contrasted":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    iput v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    .line 5078
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    return v0
.end method

.method resolveContrastColor()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5046
    iget v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->color:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    if-eq v2, v4, :cond_0

    .line 5047
    iget v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v2

    .line 5051
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    .line 5052
    .local v0, "background":I
    iget v2, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    if-ne v2, v4, :cond_1

    .line 5053
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5054
    const v3, 0x10600eb

    .line 5053
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 5056
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    if-nez v2, :cond_3

    .line 5057
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 5058
    iget v1, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 5063
    .local v1, "color":I
    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_2

    .line 5065
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->compositeColors(II)I

    move-result v1

    .line 5067
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    iput v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 5068
    iput v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v1

    .line 5060
    .end local v1    # "color":I
    :cond_3
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->color:I

    .line 5061
    iget-boolean v4, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 5060
    invoke-static {v2, v3, v0, v4}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_0
.end method

.method public varargs setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "actions"    # [Landroid/app/Notification$Action;

    .prologue
    .line 3895
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3897
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 3898
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3896
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3901
    :cond_1
    return-object p0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 3656
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3657
    return-object p0
.end method

.method public setBackgroundColorHint(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 5358
    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    .line 5359
    return-void
.end method

.method public setBackgroundColorOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 5438
    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColorOnStatusBar:I

    .line 5439
    return-object p0
.end method

.method public setBadgeIconType(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 3090
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set3(Landroid/app/Notification;I)I

    .line 3091
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 3708
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 3709
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3112
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set4(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3113
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 3120
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set4(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3121
    return-object p0
.end method

.method public setChronometerBase(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "base"    # J

    .prologue
    .line 5396
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    .line 5397
    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "countDown"    # Z

    .prologue
    .line 3194
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3195
    return-object p0
.end method

.method public setChronometerState(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 5404
    packed-switch p1, :pswitch_data_0

    .line 5412
    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    .line 5415
    :goto_0
    return-object p0

    .line 5406
    :pswitch_0
    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    goto :goto_0

    .line 5409
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    goto :goto_0

    .line 5404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 3977
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    .line 3978
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    .line 3979
    return-object p0
.end method

.method public setColorPalette(II)V
    .locals 1
    .param p1, "backgroundColor"    # I
    .param p2, "foregroundColor"    # I

    .prologue
    .line 5344
    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    .line 5345
    iput p2, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 5346
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 5347
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 5348
    return-void
.end method

.method public setColorized(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "colorize"    # Z

    .prologue
    .line 3635
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.colorized"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3636
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3379
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "info"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3356
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.infoText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3357
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3427
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3428
    return-object p0
.end method

.method setContentMinHeight(Landroid/widget/RemoteViews;Z)V
    .locals 3
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;
    .param p2, "hasMinHeight"    # Z

    .prologue
    .line 4258
    const/4 v0, 0x0

    .line 4259
    .local v0, "minHeight":I
    if-eqz p2, :cond_0

    .line 4261
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4262
    const v2, 0x1050122

    .line 4261
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4264
    :cond_0
    const-string/jumbo v1, "setMinimumHeight"

    const v2, 0x1020326

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4265
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3262
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.text"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3263
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 3254
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.title"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3255
    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3400
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3401
    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3389
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3390
    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3411
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3412
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "defaults"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3686
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 3687
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3437
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 3438
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3814
    if-eqz p1, :cond_0

    .line 3815
    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 3817
    :cond_0
    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 3961
    if-eqz p2, :cond_0

    .line 3962
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3966
    :goto_0
    return-object p0

    .line 3964
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 3462
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 3463
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3464
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 3753
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set8(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3754
    return-object p0
.end method

.method public setGroupAlertBehavior(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupAlertBehavior"    # I

    .prologue
    .line 3105
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set7(Landroid/app/Notification;I)I

    .line 3106
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    .prologue
    .line 3766
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3767
    return-object p0
.end method

.method public setIconOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 5422
    iput p1, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    .line 5423
    return-object p0
.end method

.method public setIntentOnStatusBar(Landroid/content/Intent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5454
    iput-object p1, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    .line 5455
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 3496
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 3507
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set9(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3508
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3509
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3589
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 3590
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 3591
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 3592
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 3593
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3595
    :cond_1
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    .prologue
    .line 3667
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3668
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 3340
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    .line 3341
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 3615
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3616
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 3646
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3647
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pri"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3698
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    .line 3699
    return-object p0
.end method

.method public setPriorityOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 5446
    iput p1, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    .line 5447
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 3366
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3367
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progressMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3368
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3369
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v1, 0x0

    .line 3939
    if-eqz p1, :cond_0

    .line 3940
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3941
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3945
    :goto_0
    return-object p0

    .line 3943
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    goto :goto_0
.end method

.method public setRebuildStyledRemoteViews(Z)V
    .locals 0
    .param p1, "rebuild"    # Z

    .prologue
    .line 5371
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    .line 5372
    return-void
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 6
    .param p1, "text"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 3322
    if-nez p1, :cond_0

    .line 3323
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.remoteInputHistory"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 3332
    :goto_0
    return-object p0

    .line 3325
    :cond_0
    array-length v3, p1

    const/4 v4, 0x5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3326
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 3327
    .local v2, "safe":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 3328
    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3330
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.remoteInputHistory"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3303
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-set11(Landroid/app/Notification;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3304
    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "shortcutId"    # Ljava/lang/String;

    .prologue
    .line 3077
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set12(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3078
    return-object p0
.end method

.method public setShowOnStatusBar(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "showOnStatusBar"    # Z

    .prologue
    .line 5380
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    .line 5381
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 3161
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3162
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 3213
    if-eqz p1, :cond_0

    .line 3214
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 3213
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0

    .line 3215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 3230
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 3231
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 3243
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 3244
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3245
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3247
    :cond_0
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 3783
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set16(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3784
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3522
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3523
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 3524
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3536
    const-string/jumbo v0, "Notification"

    const-string/jumbo v1, "setSound()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 3537
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3538
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 3539
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3551
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3552
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 3553
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "style"    # Landroid/app/Notification$Style;

    .prologue
    .line 3910
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_0

    .line 3911
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 3912
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 3913
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 3914
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.template"

    invoke-virtual {p1}, Landroid/app/Notification$Style;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3919
    :cond_0
    :goto_0
    return-object p0

    .line 3916
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3285
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.subText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3286
    return-object p0
.end method

.method public setSwipeUpHeadsUpIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 5463
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

    .line 5464
    return-object p0
.end method

.method public setTextOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "textId"    # I

    .prologue
    .line 5430
    iput p1, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    .line 5431
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 3473
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3474
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3483
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3485
    return-object p0
.end method

.method public setTimeout(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "durationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3127
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->-set20(Landroid/app/Notification;J)J

    .line 3128
    return-object p0
.end method

.method public setTimeoutAfter(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "durationMs"    # J

    .prologue
    .line 3136
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->-set20(Landroid/app/Notification;J)J

    .line 3137
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 3181
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3182
    return-object p0
.end method

.method public setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "useChronometer"    # Z

    .prologue
    .line 5388
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    .line 5389
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pattern"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3571
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 3572
    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 3928
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    .line 3929
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 3150
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 3151
    return-object p0
.end method
