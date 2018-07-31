.class public Lcom/oneplus/aod/SingleNotificationView;
.super Landroid/widget/LinearLayout;
.source "SingleNotificationView.java"


# static fields
.field private static final IME_PICKER_ID:I = 0x104059a


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHeader:Landroid/widget/TextView;

.field private mHeaderContainer:Landroid/widget/LinearLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsTheFirstNotification:Z

.field private mIsUpdate:Z

.field private mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

.field mNotificationData:Lcom/oneplus/aod/NotificationData;

.field private mNotificationViewCustom:Landroid/widget/LinearLayout;

.field private mNotificationViewDefault:Landroid/widget/LinearLayout;

.field private mShowLockscreenNotifications:Z

.field private mShowingPublic:Z

.field private mSmallText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const-string/jumbo v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string/jumbo v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/aod/SingleNotificationView;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string/jumbo v0, "SingleNotificationView"

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->TAG:Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Lcom/oneplus/aod/SingleNotificationView;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private isTheOnlyNotification(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v4, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    if-nez v4, :cond_0

    .line 352
    const/4 v4, 0x0

    return v4

    .line 355
    :cond_0
    const/4 v3, 0x1

    .line 356
    .local v3, "theOne":Z
    iget-object v4, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v4}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 357
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/aod/NotificationData$Entry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 358
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/NotificationData$Entry;

    .line 359
    .local v1, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    iget-object v4, v1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    const-string/jumbo v4, "SingleNotificationView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v3, 0x0

    .line 365
    .end local v1    # "entry":Lcom/oneplus/aod/NotificationData$Entry;
    :cond_1
    return v3

    .line 357
    .restart local v1    # "entry":Lcom/oneplus/aod/NotificationData$Entry;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private resolveAppName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "appName":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 317
    .local v4, "n":Landroid/app/Notification;
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 318
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    :goto_0
    return-object v1

    .line 319
    .restart local v1    # "appName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 320
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "SingleNotificationView"

    const-string/jumbo v6, "Unable to recover builder"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 323
    const-string/jumbo v6, "android.appInfo"

    .line 322
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 324
    .local v0, "appInfo":Landroid/os/Parcelable;
    instance-of v5, v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 325
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 326
    .end local v0    # "appInfo":Landroid/os/Parcelable;
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 325
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "appName":Ljava/lang/String;
    goto :goto_0
.end method

.method private showCustomNotification(ZLandroid/view/View;)V
    .locals 3
    .param p1, "isCustom"    # Z
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 302
    if-nez p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateViewInternal(Lcom/oneplus/aod/NotificationData$Entry;)V
    .locals 21
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;

    .prologue
    .line 198
    const-string/jumbo v16, "SingleNotificationView"

    const-string/jumbo v17, "updateViewInternal"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 200
    .local v9, "extras":Landroid/os/Bundle;
    const-string/jumbo v14, ""

    .line 201
    .local v14, "title":Ljava/lang/CharSequence;
    const-string/jumbo v13, ""

    .line 202
    .local v13, "smallText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    .line 204
    .local v11, "icon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v16, "android.title"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 205
    const-string/jumbo v16, "android.text"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 207
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oneplus/aod/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 209
    .local v5, "contentView":Landroid/widget/RemoteViews;
    const/4 v6, 0x0

    .line 210
    .local v6, "contentViewLocal":Landroid/view/View;
    const/4 v12, 0x0

    .line 212
    .local v12, "isCustom":Z
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V

    .line 216
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v16

    .line 217
    const/16 v17, 0x0

    .line 218
    const/16 v18, 0x0

    .line 215
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v6

    .line 220
    .local v6, "contentViewLocal":Landroid/view/View;
    const v16, 0x1020404

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-nez v16, :cond_0

    const/4 v12, 0x1

    .line 222
    :goto_0
    if-eqz v12, :cond_1

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/oneplus/aod/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/oneplus/aod/NotificationViewWrapper;

    move-result-object v15

    .line 224
    .local v15, "wrapper":Lcom/oneplus/aod/NotificationViewWrapper;
    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/oneplus/aod/NotificationViewWrapper;->setDark(ZZJ)V

    .line 225
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V

    .line 226
    return-void

    .line 220
    .end local v15    # "wrapper":Lcom/oneplus/aod/NotificationViewWrapper;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 228
    :cond_1
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/oneplus/aod/SingleNotificationView;->showCustomNotification(ZLandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v6    # "contentViewLocal":Landroid/view/View;
    :goto_1
    const-string/jumbo v16, "SingleNotificationView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateViewInternal: custom="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", show public="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mShowingPublic:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iget v10, v0, Landroid/app/Notification;->color:I

    .line 237
    .local v10, "headerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/SingleNotificationView;->resolveAppName()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "appName":Ljava/lang/String;
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x106000b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 241
    :goto_2
    if-eqz v4, :cond_2

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    .end local v4    # "appName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    if-eqz v11, :cond_6

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 250
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_4

    .line 251
    const-string/jumbo v16, "SingleNotificationView"

    const-string/jumbo v17, "drawable = null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 230
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v10    # "headerColor":I
    :catch_0
    move-exception v8

    .line 231
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v16, "SingleNotificationView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception e = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 240
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appName":Ljava/lang/String;
    .restart local v10    # "headerColor":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->color:I

    move/from16 v16, v0

    const/16 v17, 0x19

    invoke-static/range {v16 .. v17}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v10

    goto :goto_2

    .line 255
    .end local v4    # "appName":Ljava/lang/String;
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->color:I

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 262
    :cond_5
    if-eqz v11, :cond_8

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mShowingPublic:Z

    move/from16 v16, v0

    if-nez v16, :cond_7

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/oneplus/aod/NotificationData;->isLock(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/aod/AodUpdateMonitor;->isSecure()Z

    move-result v16

    .line 269
    if-eqz v16, :cond_9

    .line 271
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 272
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const/high16 v19, 0x50c0000

    const/16 v20, 0x1

    .line 271
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    return-void

    .line 265
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    const-string/jumbo v16, "SingleNotificationView"

    const-string/jumbo v17, "private layout icon null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 278
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-nez v16, :cond_b

    .line 279
    :cond_a
    return-void

    .line 281
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    if-eqz v14, :cond_c

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_4
    if-eqz v13, :cond_d

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_5
    return-void

    .line 288
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 295
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    const-string/jumbo v16, "SingleNotificationView"

    const-string/jumbo v17, "small text is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 77
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v0

    .line 79
    .local v0, "isRTL":Z
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 80
    const v2, 0x7f0e004f

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 84
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0110

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 85
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0111

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 89
    const v2, 0x7f0e004e

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 93
    const v2, 0x7f0e0050

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    .line 96
    :cond_2
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeaderContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setTextDirection(I)V

    .line 97
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mHeader:Landroid/widget/TextView;

    const v5, 0x7f0801d9

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 99
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    if-nez v2, :cond_3

    .line 100
    const v2, 0x7f0e0051

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    .line 102
    :cond_3
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 103
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f0801da

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 105
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-nez v2, :cond_4

    .line 106
    const v2, 0x7f0e0052

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    .line 108
    :cond_4
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 109
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mSmallText:Landroid/widget/TextView;

    const v3, 0x7f0801db

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 111
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    if-nez v2, :cond_5

    .line 112
    const v2, 0x7f0e004d

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewDefault:Landroid/widget/LinearLayout;

    .line 115
    :cond_5
    iget-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    if-nez v2, :cond_6

    .line 116
    const v2, 0x7f0e0053

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationViewCustom:Landroid/widget/LinearLayout;

    .line 118
    :cond_6
    return-void

    .line 96
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    move v2, v4

    .line 102
    goto :goto_1

    :cond_9
    move v3, v4

    .line 108
    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    .line 125
    return-void
.end method

.method public setNewPosted(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isUpdate"    # Z

    .prologue
    .line 128
    const-string/jumbo v0, "SingleNotificationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNewPosted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-object p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    .line 130
    iput-boolean p2, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsUpdate:Z

    .line 131
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/SingleNotificationView;->isTheOnlyNotification(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsTheFirstNotification:Z

    .line 132
    return-void
.end method

.method public setShowLockscreenNotifications(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 333
    const-string/jumbo v0, "SingleNotificationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShowLockscreenNotifications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iput-boolean p1, p0, Lcom/oneplus/aod/SingleNotificationView;->mShowLockscreenNotifications:Z

    .line 335
    return-void
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    const v2, 0x104059a

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 345
    .local v0, "isImePicker":Z
    :goto_0
    const-string/jumbo v1, "SingleNotificationView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldShowOnKeyguard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oneplus/aod/SingleNotificationView;->mShowLockscreenNotifications:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isAmbient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/aod/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isImePicker="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-boolean v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mShowLockscreenNotifications:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    xor-int/lit8 v1, v0, 0x1

    :goto_1
    return v1

    .line 343
    .end local v0    # "isImePicker":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isImePicker":Z
    goto :goto_0

    .line 346
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateView()V
    .locals 7

    .prologue
    .line 136
    const-string/jumbo v5, "SingleNotificationView"

    const-string/jumbo v6, "updateView"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v5, :cond_0

    .line 138
    const-string/jumbo v5, "SingleNotificationView"

    const-string/jumbo v6, "mNewPostedNotification = null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_0
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getNotificationManager()Lcom/oneplus/aod/NotificationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/NotificationManager;->getNotificationData()Lcom/oneplus/aod/NotificationData;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    .line 144
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    invoke-virtual {v5}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/aod/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 146
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_8

    .line 147
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/NotificationData$Entry;

    .line 149
    .local v2, "ent":Lcom/oneplus/aod/NotificationData$Entry;
    iget-object v5, v2, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 150
    const-string/jumbo v5, "SingleNotificationView"

    const-string/jumbo v6, "found new notification in activeNotifications"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.android.incallui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    const-string/jumbo v5, "SingleNotificationView"

    const-string/jumbo v6, "updateView: don\'t update due to inCallUi"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 159
    :cond_1
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .line 161
    .local v4, "onGoing":Z
    :goto_1
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsTheFirstNotification:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 162
    const-string/jumbo v5, "SingleNotificationView"

    const-string/jumbo v6, "updateView: don\'t update due to isGroupSummary"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 159
    .end local v4    # "onGoing":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "onGoing":Z
    goto :goto_1

    .line 166
    :cond_3
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v5}, Lcom/oneplus/aod/SingleNotificationView;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 167
    const-string/jumbo v5, "SingleNotificationView"

    const-string/jumbo v6, "updateView: don\'t update due to not show on keyguard"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 173
    :cond_4
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mNotificationData:Lcom/oneplus/aod/NotificationData;

    iget-object v6, p0, Lcom/oneplus/aod/SingleNotificationView;->mNewPostedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/aod/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v5

    .line 174
    const/4 v6, -0x1

    .line 173
    if-ne v5, v6, :cond_5

    .line 175
    const-string/jumbo v5, "SingleNotificationView"

    const-string/jumbo v6, "updateView: don\'t update due to it\'s a secret"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 180
    :cond_5
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getNotificationManager()Lcom/oneplus/aod/NotificationManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/oneplus/aod/NotificationManager;->showingPublic(Lcom/oneplus/aod/NotificationData$Entry;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mShowingPublic:Z

    .line 181
    invoke-direct {p0, v2}, Lcom/oneplus/aod/SingleNotificationView;->updateViewInternal(Lcom/oneplus/aod/NotificationData$Entry;)V

    .line 185
    if-eqz v4, :cond_6

    iget-boolean v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mIsUpdate:Z

    if-eqz v5, :cond_6

    .line 186
    const-string/jumbo v5, "SingleNotificationView"

    const-string/jumbo v6, "updateView: don\'t pulse due to is onGoing and isUpdate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 191
    :cond_6
    iget-object v5, p0, Lcom/oneplus/aod/SingleNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->fireNewNotifications()V

    .line 192
    return-void

    .line 146
    .end local v4    # "onGoing":Z
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 195
    .end local v2    # "ent":Lcom/oneplus/aod/NotificationData$Entry;
    :cond_8
    return-void
.end method
