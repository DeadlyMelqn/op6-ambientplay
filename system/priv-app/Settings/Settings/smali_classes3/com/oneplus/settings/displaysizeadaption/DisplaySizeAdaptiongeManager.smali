.class public Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;
.super Ljava/lang/Object;
.source "DisplaySizeAdaptiongeManager.java"


# static fields
.field public static final APP_TYPE_COMPAT_MODE:I = 0x0

.field public static final APP_TYPE_DEFAULT_MODE:I = 0x1

.field public static final APP_TYPE_FULL_SCREEN_MODE:I = 0x3

.field private static final FULLSCREENAPP_TYPE:I = 0x46

.field private static final MODE_COMPAT_VALUE:I = 0x64

.field private static final MODE_FULL_VALUE:I = 0x66

.field private static final MODE_NONFULL_VALUE:I = 0x65

.field private static m17819FullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

.field private static mFullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mOriginalSizeAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmp17819FullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmpFullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmpOriginalSizeAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field multiAppInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 72
    iput-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAm:Landroid/app/ActivityManager;

    .line 76
    return-void
.end method

.method private getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 140
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 141
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1, v0, v0}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    .line 82
    :cond_0
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    return-object v0
.end method

.method private loadClassAppList(I)V
    .locals 22
    .param p1, "value"    # I

    .prologue
    .line 145
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v9, "classAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/16 v20, 0x46

    const/16 v21, 0x0

    aput v20, v5, v21

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v16

    .line 148
    .local v16, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v16, :cond_3

    .line 149
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$PackageOps;

    .line 151
    .local v14, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v8

    .line 152
    .local v8, "appUid":I
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "op$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 153
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_1

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v4

    move/from16 v0, p1

    if-ne v4, v0, :cond_1

    .line 154
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    .end local v8    # "appUid":I
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v13    # "op$iterator":Ljava/util/Iterator;
    .end local v14    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v15    # "packageOp$iterator":Ljava/util/Iterator;
    .end local v16    # "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_0
    move-exception v10

    .line 222
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 159
    .restart local v16    # "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_3
    :try_start_1
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v11, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .local v11, "mainIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v4

    if-nez v4, :cond_4

    .line 161
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v11, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :cond_4
    const/16 v19, 0x0

    .line 164
    .local v19, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 185
    .local v19, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 186
    return-void

    .line 188
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "reInfo$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 189
    .local v17, "reInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 190
    .local v7, "activityName":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 191
    .local v2, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 193
    .local v3, "appLabel":Ljava/lang/String;
    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 194
    .local v6, "isSelected":Z
    if-eqz v6, :cond_6

    .line 195
    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 198
    .local v1, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    if-eqz p1, :cond_7

    const/16 v4, 0x64

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    .line 199
    :cond_7
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_8
    const/4 v4, 0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_9

    const/16 v4, 0x65

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 203
    :cond_9
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 206
    :cond_a
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x2

    move/from16 v0, p1

    if-eq v0, v4, :cond_b

    const/16 v4, 0x66

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    .line 207
    :cond_b
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 211
    :cond_c
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private loadFullScreenApp()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 232
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 233
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 234
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 236
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 237
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 238
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    .line 241
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 242
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    return-void
.end method

.method private loadOriginalSizeApp()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 250
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 252
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 253
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    .line 254
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 256
    return-void
.end method

.method private removeTask(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 316
    const/4 v5, 0x0

    .line 317
    .local v5, "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/16 v2, 0x3f

    .line 324
    .local v2, "flags":I
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAm:Landroid/app/ActivityManager;

    const v7, 0x7fffffff

    const/4 v8, -0x2

    invoke-virtual {v6, v7, v2, v8}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 328
    .end local v5    # "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_0
    if-nez v5, :cond_0

    .line 329
    return-void

    .line 325
    .restart local v5    # "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 332
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "recentTaskInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 333
    .local v3, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v3, :cond_2

    iget-object v0, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 335
    :goto_2
    if-eqz v0, :cond_1

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 337
    iget-object v6, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAm:Landroid/app/ActivityManager;

    iget v7, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v6, v7}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_1

    .line 334
    :cond_2
    const/4 v0, 0x0

    .local v0, "baseActivity":Landroid/content/ComponentName;
    goto :goto_2

    .line 341
    .end local v0    # "baseActivity":Landroid/content/ComponentName;
    .end local v3    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    return-void
.end method


# virtual methods
.method public getAppTypeValue(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v1, 0x1

    .line 297
    .local v1, "mAppTypeValue":I
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    .line 298
    .local v3, "mOriginalOPAppModel":Lcom/oneplus/settings/better/OPAppModel;
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    .line 299
    .local v2, "mFullScreenOPAppModel":Lcom/oneplus/settings/better/OPAppModel;
    sget-object v4, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 300
    .local v0, "m17819FullScreenAppModel":Lcom/oneplus/settings/better/OPAppModel;
    if-eqz v3, :cond_1

    .line 301
    const/4 v1, 0x0

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 302
    :cond_1
    if-eqz v2, :cond_2

    .line 303
    const/4 v1, 0x1

    goto :goto_0

    .line 304
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    if-eqz v0, :cond_3

    .line 306
    const/4 v1, 0x3

    goto :goto_0

    .line 308
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadAppMap()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadFullScreenApp()V

    .line 87
    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadOriginalSizeApp()V

    .line 88
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v7, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;>;"
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 91
    .local v9, "mainIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_0
    const/4 v12, 0x0

    .line 95
    .local v12, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 116
    .local v12, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    return-object v5

    .line 119
    :cond_1
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "reInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 120
    .local v10, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 121
    .local v6, "activityName":Ljava/lang/String;
    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 122
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, "appLabel":Ljava/lang/String;
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 129
    .local v0, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appLabel":Ljava/lang/String;
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v9    # "mainIntent":Landroid/content/Intent;
    .end local v10    # "reInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "reInfo$iterator":Ljava/util/Iterator;
    .end local v12    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v8

    .line 133
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v7
.end method

.method public setClassApp(ILjava/lang/String;I)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    const/16 v5, 0x46

    const/4 v7, 0x1

    .line 259
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v5, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 262
    invoke-direct {p0, p2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->removeTask(Ljava/lang/String;)V

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    const/16 v4, 0x3e7

    invoke-virtual {v1, p2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoByUserId(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v5, v3, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 271
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "pkgLabel":Ljava/lang/String;
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 273
    .local v0, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    if-eq p3, v7, :cond_1

    const/16 v1, 0x65

    if-ne p3, v1, :cond_2

    .line 274
    :cond_1
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .end local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v2    # "pkgLabel":Ljava/lang/String;
    :goto_1
    return-void

    .line 277
    .restart local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .restart local v2    # "pkgLabel":Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_3

    const/16 v1, 0x64

    if-ne p3, v1, :cond_4

    .line 278
    :cond_3
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 290
    .end local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v2    # "pkgLabel":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 291
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "DisplaySizeAdaptiongeManager"

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 281
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .restart local v2    # "pkgLabel":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x66

    if-eq p3, v1, :cond_5

    const/4 v1, 0x2

    if-ne p3, v1, :cond_6

    .line 282
    :cond_5
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 286
    :cond_6
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 265
    .end local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v2    # "pkgLabel":Ljava/lang/String;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method
