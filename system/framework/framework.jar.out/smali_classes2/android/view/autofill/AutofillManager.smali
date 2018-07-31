.class public final Landroid/view/autofill/AutofillManager;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillManager$AutofillCallback;,
        Landroid/view/autofill/AutofillManager$AutofillClient;,
        Landroid/view/autofill/AutofillManager$AutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$TrackedViews;
    }
.end annotation


# static fields
.field public static final ACTION_START_SESSION:I = 0x1

.field public static final ACTION_VALUE_CHANGED:I = 0x4

.field public static final ACTION_VIEW_ENTERED:I = 0x2

.field public static final ACTION_VIEW_EXITED:I = 0x3

.field private static final AUTHENTICATION_ID_DATASET_ID_MASK:I = 0xffff

.field private static final AUTHENTICATION_ID_DATASET_ID_SHIFT:I = 0x10

.field public static final AUTHENTICATION_ID_DATASET_ID_UNDEFINED:I = 0xffff

.field public static final EXTRA_ASSIST_STRUCTURE:Ljava/lang/String; = "android.view.autofill.extra.ASSIST_STRUCTURE"

.field public static final EXTRA_AUTHENTICATION_RESULT:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT"

.field public static final EXTRA_CLIENT_STATE:Ljava/lang/String; = "android.view.autofill.extra.CLIENT_STATE"

.field public static final EXTRA_RESTORE_SESSION_TOKEN:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

.field public static final FLAG_ADD_CLIENT_DEBUG:I = 0x2

.field public static final FLAG_ADD_CLIENT_ENABLED:I = 0x1

.field public static final FLAG_ADD_CLIENT_VERBOSE:I = 0x4

.field private static final LAST_AUTOFILLED_DATA_TAG:Ljava/lang/String; = "android:lastAutoFilledData"

.field public static final NO_SESSION:I = -0x80000000

.field public static final PENDING_UI_OPERATION_CANCEL:I = 0x1

.field public static final PENDING_UI_OPERATION_RESTORE:I = 0x2

.field private static final SESSION_ID_TAG:Ljava/lang/String; = "android:sessionId"

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_FINISHED:I = 0x2

.field public static final STATE_SHOWING_SAVE_UI:I = 0x3

.field private static final STATE_TAG:Ljava/lang/String; = "android:state"

.field public static final STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutofillManager"


# instance fields
.field private mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFillableIds:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAutofilledData:Landroid/view/autofill/ParcelableMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mService:Landroid/view/autofill/IAutoFillManager;

.field private mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mServiceClientCleaner:Lsun/misc/Cleaner;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSessionId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;

    .prologue
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 1
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;

    .prologue
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)[I
    .locals 1
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "autofillIds"    # [Landroid/view/autofill/AutofillId;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getViewIds([Landroid/view/autofill/AutofillId;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/view/autofill/AutofillManager;IZ)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "shown"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->setSaveUiState(IZ)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/view/autofill/AutofillManager;I)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->setSessionFinished(I)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/view/autofill/AutofillManager;ZZZ)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "enabled"    # Z
    .param p2, "resetSession"    # Z
    .param p3, "resetClient"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->setState(ZZZ)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "trackedIds"    # [Landroid/view/autofill/AutofillId;
    .param p3, "saveOnAllViewsInvisible"    # Z
    .param p4, "fillableIds"    # [Landroid/view/autofill/AutofillId;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/autofill/AutofillManager;Ljava/util/List;)[I
    .locals 1
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "autofillIds"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getViewIds(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "authenticationId"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "ids"    # Ljava/util/List;
    .param p3, "values"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->autofill(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/view/autofill/AutofillManager;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;

    .prologue
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->finishSessionLocked()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "sessionFinished"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/autofill/IAutoFillManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/autofill/IAutoFillManager;

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 286
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    .line 300
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 406
    const-string/jumbo v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    .line 407
    iput-object p2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    .line 408
    return-void
.end method

.method private authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "authenticationId"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 1209
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1210
    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne p1, v1, :cond_0

    .line 1211
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1212
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_0

    .line 1213
    invoke-interface {v0, p2, p3, p4}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_0
    monitor-exit v2

    .line 1217
    return-void

    .line 1209
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private autofill(ILjava/util/List;Ljava/util/List;)V
    .locals 21
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1257
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1258
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    monitor-exit v18

    .line 1259
    return-void

    .line 1262
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1263
    .local v4, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v4, :cond_1

    monitor-exit v18

    .line 1264
    return-void

    .line 1267
    :cond_1
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    .line 1268
    .local v7, "itemCount":I
    const/4 v9, 0x0

    .line 1269
    .local v9, "numApplied":I
    const/16 v16, 0x0

    .line 1270
    .local v16, "virtualValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillManager;->getViewIds(Ljava/util/List;)[I

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->findViewsByAutofillIdTraversal([I)[Landroid/view/View;

    move-result-object v15

    .line 1272
    .local v15, "views":[Landroid/view/View;
    const/4 v5, 0x0

    .end local v16    # "virtualValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;>;"
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_7

    .line 1273
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 1274
    .local v6, "id":Landroid/view/autofill/AutofillId;
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillValue;

    .line 1275
    .local v11, "value":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v14

    .line 1276
    .local v14, "viewId":I
    aget-object v13, v15, v5

    .line 1277
    .local v13, "view":Landroid/view/View;
    if-nez v13, :cond_2

    .line 1278
    const-string/jumbo v17, "AutofillManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "autofill(): no View with id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1281
    :cond_2
    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1282
    if-nez v16, :cond_3

    .line 1284
    new-instance v16, Landroid/util/ArrayMap;

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1286
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 1287
    .local v12, "valuesByParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    if-nez v12, :cond_4

    .line 1289
    new-instance v12, Landroid/util/SparseArray;

    .end local v12    # "valuesByParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1290
    .restart local v12    # "valuesByParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    :cond_4
    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1257
    .end local v4    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v5    # "i":I
    .end local v6    # "id":Landroid/view/autofill/AutofillId;
    .end local v7    # "itemCount":I
    .end local v9    # "numApplied":I
    .end local v11    # "value":Landroid/view/autofill/AutofillValue;
    .end local v12    # "valuesByParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    .end local v13    # "view":Landroid/view/View;
    .end local v14    # "viewId":I
    .end local v15    # "views":[Landroid/view/View;
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 1295
    .restart local v4    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v5    # "i":I
    .restart local v6    # "id":Landroid/view/autofill/AutofillId;
    .restart local v7    # "itemCount":I
    .restart local v9    # "numApplied":I
    .restart local v11    # "value":Landroid/view/autofill/AutofillValue;
    .restart local v13    # "view":Landroid/view/View;
    .restart local v14    # "viewId":I
    .restart local v15    # "views":[Landroid/view/View;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 1296
    new-instance v17, Landroid/view/autofill/ParcelableMap;

    sub-int v19, v7, v5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 1298
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v11}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    invoke-virtual {v13, v11}, Landroid/view/View;->autofill(Landroid/view/autofill/AutofillValue;)V

    .line 1306
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Landroid/view/autofill/AutofillManager;->setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;)V

    .line 1308
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1312
    .end local v6    # "id":Landroid/view/autofill/AutofillId;
    .end local v11    # "value":Landroid/view/autofill/AutofillValue;
    .end local v13    # "view":Landroid/view/View;
    .end local v14    # "viewId":I
    :cond_7
    if-eqz v16, :cond_8

    .line 1313
    const/4 v5, 0x0

    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_8

    .line 1314
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1315
    .local v10, "parent":Landroid/view/View;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1316
    .local v3, "childrenValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual {v10, v3}, Landroid/view/View;->autofill(Landroid/util/SparseArray;)V

    .line 1317
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int v9, v9, v17

    .line 1313
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1321
    .end local v3    # "childrenValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "parent":Landroid/view/View;
    :cond_8
    new-instance v17, Landroid/metrics/LogMaker;

    const/16 v19, 0x391

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 1321
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v17

    .line 1323
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x392

    .line 1321
    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v17

    .line 1324
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x393

    .line 1321
    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v8

    .line 1325
    .local v8, "log":Landroid/metrics/LogMaker;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v18

    .line 1327
    return-void
.end method

.method private cancelSessionLocked()V
    .locals 4

    .prologue
    .line 1045
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelSessionLocked(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1050
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->cancelSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked()V

    .line 1056
    return-void

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private ensureServiceClientAddedIfNeededLocked()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1103
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1104
    return-void

    .line 1107
    :cond_0
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-nez v7, :cond_1

    .line 1108
    new-instance v7, Landroid/view/autofill/AutofillManager$AutofillManagerClient;

    invoke-direct {v7, p0}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;)V

    iput-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 1110
    :try_start_0
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 1111
    .local v4, "userId":I
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v8, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v7, v8, v4}, Landroid/view/autofill/IAutoFillManager;->addClient(Landroid/view/autofill/IAutoFillManagerClient;I)I

    move-result v1

    .line 1112
    .local v1, "flags":I
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_2

    move v7, v5

    :goto_0
    iput-boolean v7, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    .line 1113
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_3

    move v7, v5

    :goto_1
    sput-boolean v7, Landroid/view/autofill/Helper;->sDebug:Z

    .line 1114
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_4

    :goto_2
    sput-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 1115
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    .line 1116
    .local v2, "service":Landroid/view/autofill/IAutoFillManager;
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 1117
    .local v3, "serviceClient":Landroid/view/autofill/IAutoFillManagerClient;
    new-instance v5, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$3;

    invoke-direct {v5, v4, v2, v3}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v5}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v5

    iput-object v5, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    .end local v1    # "flags":I
    .end local v2    # "service":Landroid/view/autofill/IAutoFillManager;
    .end local v3    # "serviceClient":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v4    # "userId":I
    :cond_1
    return-void

    .restart local v1    # "flags":I
    .restart local v4    # "userId":I
    :cond_2
    move v7, v6

    .line 1112
    goto :goto_0

    :cond_3
    move v7, v6

    .line 1113
    goto :goto_1

    :cond_4
    move v5, v6

    .line 1114
    goto :goto_2

    .line 1123
    .end local v1    # "flags":I
    .end local v4    # "userId":I
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method private findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .locals 2
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .prologue
    const/4 v1, 0x0

    .line 1500
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1502
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_0

    .line 1503
    return-object v1

    .line 1506
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private finishSessionLocked()V
    .locals 4

    .prologue
    .line 1031
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finishSessionLocked(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1036
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->finishSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked()V

    .line 1042
    return-void

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 989
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillId;-><init>(I)V

    return-object v0
.end method

.method private static getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "virtualId"    # I

    .prologue
    .line 993
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/view/autofill/AutofillId;-><init>(II)V

    return-object v0
.end method

.method private getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    return-object v0
.end method

.method private getComponentNameFromContext(Landroid/view/autofill/AutofillManager$AutofillClient;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "client"    # Landroid/view/autofill/AutofillManager$AutofillClient;

    .prologue
    const/4 v0, 0x0

    .line 957
    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->getComponentNameForAutofill()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDatasetIdFromAuthenticationId(I)I
    .locals 1
    .param p0, "authRequestId"    # I

    .prologue
    .line 273
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getRequestIdFromAuthenticationId(I)I
    .locals 1
    .param p0, "authRequestId"    # I

    .prologue
    .line 262
    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method private getStateAsStringLocked()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1550
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1552
    :pswitch_0
    const-string/jumbo v0, "STATE_UNKNOWN"

    return-object v0

    .line 1554
    :pswitch_1
    const-string/jumbo v0, "STATE_ACTIVE"

    return-object v0

    .line 1556
    :pswitch_2
    const-string/jumbo v0, "STATE_FINISHED"

    return-object v0

    .line 1558
    :pswitch_3
    const-string/jumbo v0, "STATE_SHOWING_SAVE_UI"

    return-object v0

    .line 1550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getViewIds(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1483
    .local p1, "autofillIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1484
    .local v1, "numIds":I
    new-array v2, v1, [I

    .line 1485
    .local v2, "viewIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1486
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v3

    aput v3, v2, v0

    .line 1485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1489
    :cond_0
    return-object v2
.end method

.method private getViewIds([Landroid/view/autofill/AutofillId;)[I
    .locals 4
    .param p1, "autofillIds"    # [Landroid/view/autofill/AutofillId;

    .prologue
    .line 1472
    array-length v1, p1

    .line 1473
    .local v1, "numIds":I
    new-array v2, v1, [I

    .line 1474
    .local v2, "viewIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1475
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v3

    aput v3, v2, v0

    .line 1474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1478
    :cond_0
    return-object v2
.end method

.method private isActiveLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1565
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFinishedLocked()Z
    .locals 2

    .prologue
    .line 1569
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager_41213(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V
    .locals 1
    .param p0, "service"    # Landroid/view/autofill/IAutoFillManager;
    .param p1, "serviceClient"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "userId"    # I

    .prologue
    .line 1119
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 1120
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static makeAuthenticationId(II)I
    .locals 2
    .param p0, "requestId"    # I
    .param p1, "datasetId"    # I

    .prologue
    .line 250
    shl-int/lit8 v0, p0, 0x10

    .line 251
    const v1, 0xffff

    and-int/2addr v1, p1

    .line 250
    or-int/2addr v0, v1

    return v0
.end method

.method private notifyNoFillUi(ILandroid/view/autofill/AutofillId;Z)V
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "sessionFinished"    # Z

    .prologue
    const/4 v5, 0x3

    .line 1432
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_0

    .line 1433
    const-string/jumbo v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyNoFillUi(): sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", autofillId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1434
    const-string/jumbo v4, ", finished="

    .line 1433
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_0
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 1437
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1438
    return-void

    .line 1441
    :cond_1
    const/4 v1, 0x0

    .line 1442
    .local v1, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1443
    :try_start_0
    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1444
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_2
    monitor-exit v3

    .line 1448
    if-eqz v1, :cond_3

    .line 1449
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1450
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v2

    invoke-virtual {v1, v0, v2, v5}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    .line 1457
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 1459
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->setSessionFinished(I)V

    .line 1461
    :cond_4
    return-void

    .line 1442
    .restart local v1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1453
    .end local v1    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_5
    invoke-virtual {v1, v0, v5}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private notifyViewEntered(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    return-void

    .line 586
    :cond_0
    const/4 v6, 0x0

    .line 587
    .local v6, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 588
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    .line 589
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    .line 590
    const-string/jumbo v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyViewEntered(flags="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", view="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 591
    const-string/jumbo v4, "): ignored on state "

    .line 590
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 591
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v4

    .line 590
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v7

    .line 593
    return-void

    .line 596
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    .line 598
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_5

    .line 599
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v0, :cond_3

    .line 600
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_3
    :goto_0
    monitor-exit v7

    .line 616
    if-eqz v6, :cond_4

    .line 617
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    .line 619
    :cond_4
    return-void

    .line 603
    .restart local v6    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_5
    :try_start_2
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 604
    .local v1, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    .line 606
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 608
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v3, p2}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 587
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v3    # "value":Landroid/view/autofill/AutofillValue;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 611
    .restart local v1    # "id":Landroid/view/autofill/AutofillId;
    .restart local v3    # "value":Landroid/view/autofill/AutofillValue;
    :cond_6
    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move v5, p2

    :try_start_3
    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "flags"    # I

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    return-void

    .line 717
    :cond_0
    const/4 v6, 0x0

    .line 718
    .local v6, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 719
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_2

    .line 720
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    .line 721
    const-string/jumbo v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyViewEntered(flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 722
    const-string/jumbo v3, ", virtualId="

    .line 721
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 723
    const-string/jumbo v3, "): ignored on state "

    .line 721
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 723
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    .line 721
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v7

    .line 725
    return-void

    .line 727
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    .line 729
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_5

    .line 730
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v0, :cond_3

    .line 731
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_3
    :goto_0
    monitor-exit v7

    .line 746
    if-eqz v6, :cond_4

    .line 748
    const/4 v0, 0x3

    .line 747
    invoke-virtual {v6, p1, p2, v0}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    .line 750
    :cond_4
    return-void

    .line 734
    .restart local v6    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_5
    :try_start_2
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 736
    .local v1, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 738
    const/4 v0, 0x0

    invoke-direct {p0, v1, p3, v0, p4}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 718
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 741
    .restart local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v2, p3

    move v5, p4

    :try_start_3
    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "isVisible"    # Z
    .param p4, "virtual"    # Z

    .prologue
    .line 673
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 674
    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    if-eqz p4, :cond_3

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    .line 677
    .local v0, "id":Landroid/view/autofill/AutofillId;
    :goto_0
    if-nez p3, :cond_1

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz v1, :cond_1

    .line 678
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Hidding UI when view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " became invisible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    .line 683
    :cond_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v1, :cond_2

    .line 684
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v1, v0, p3}, Landroid/view/autofill/AutofillManager$TrackedViews;->notifyViewVisibilityChanged(Landroid/view/autofill/AutofillId;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "id":Landroid/view/autofill/AutofillId;
    :cond_2
    monitor-exit v2

    .line 688
    return-void

    .line 676
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "id":Landroid/view/autofill/AutofillId;
    goto :goto_0

    .line 673
    .end local v0    # "id":Landroid/view/autofill/AutofillId;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1573
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1574
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_1

    .line 1575
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    const-string/jumbo v2, "ignoring post() because client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_0
    return-void

    .line 1578
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1579
    return-void
.end method

.method private requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .locals 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .prologue
    .line 1397
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    .line 1398
    .local v0, "anchor":Landroid/view/View;
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestHideFillUi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): anchor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_0
    if-nez v0, :cond_1

    .line 1400
    return-void

    .line 1402
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    .line 1403
    return-void
.end method

.method private requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V
    .locals 5
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    .line 1407
    const/4 v0, 0x0

    .line 1408
    .local v0, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1413
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 1414
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v1, :cond_0

    .line 1415
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackRequestHideFillUi()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_0

    .line 1416
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_0
    monitor-exit v3

    .line 1421
    if-eqz v0, :cond_1

    .line 1422
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1423
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v2

    invoke-virtual {v0, p2, v2, v4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    .line 1429
    :cond_1
    :goto_0
    return-void

    .line 1408
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v0    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1426
    .end local v0    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    .restart local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_2
    invoke-virtual {v0, p2, v4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .prologue
    const/4 v8, 0x1

    .line 1178
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v1

    .line 1179
    .local v1, "anchor":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1180
    return-void

    .line 1183
    :cond_0
    const/4 v6, 0x0

    .line 1184
    .local v6, "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1185
    :try_start_0
    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_1

    .line 1186
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 1188
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1189
    invoke-interface/range {v0 .. v5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1190
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_1

    .line 1191
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v6    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_1
    monitor-exit v7

    .line 1197
    if-eqz v6, :cond_2

    .line 1198
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1199
    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v2

    invoke-virtual {v6, v1, v2, v8}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    .line 1205
    :cond_2
    :goto_0
    return-void

    .line 1184
    .restart local v6    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :catchall_0
    move-exception v2

    monitor-exit v7

    throw v2

    .line 1202
    .end local v6    # "callback":Landroid/view/autofill/AutofillManager$AutofillCallback;
    :cond_3
    invoke-virtual {v6, v1, v8}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private resetSessionLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1059
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1060
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 1061
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    .line 1062
    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    .line 1063
    return-void
.end method

.method private setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "targetValue"    # Landroid/view/autofill/AutofillValue;

    .prologue
    const/4 v4, 0x1

    .line 1244
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 1245
    .local v0, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1247
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v1, :cond_0

    .line 1248
    new-instance v1, Landroid/view/autofill/ParcelableMap;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 1250
    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1252
    invoke-virtual {p1, v4}, Landroid/view/View;->setAutofilled(Z)V

    .line 1254
    :cond_1
    return-void

    .line 1246
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setSaveUiState(IZ)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "shown"    # Z

    .prologue
    const/high16 v3, -0x80000000

    .line 1362
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSaveUiState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1364
    :try_start_0
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v0, v3, :cond_1

    .line 1368
    const-string/jumbo v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSaveUiState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1369
    const-string/jumbo v3, ") called on existing session "

    .line 1368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1369
    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1369
    const-string/jumbo v3, "; cancelling it"

    .line 1368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    .line 1372
    :cond_1
    if-eqz p2, :cond_2

    .line 1373
    iput p1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1374
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 1380
    return-void

    .line 1376
    :cond_2
    const/high16 v0, -0x80000000

    :try_start_1
    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1363
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setSessionFinished(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    .line 1389
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1390
    :try_start_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSessionFinished(): from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked()V

    .line 1392
    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1394
    return-void

    .line 1389
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setState(ZZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "resetSession"    # Z
    .param p3, "resetClient"    # Z

    .prologue
    .line 1220
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1221
    :try_start_0
    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    .line 1222
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 1224
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked()V

    .line 1226
    :cond_1
    if-eqz p3, :cond_2

    .line 1228
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 1229
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    if-eqz v0, :cond_2

    .line 1230
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 1231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 1235
    return-void

    .line 1220
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "trackedIds"    # [Landroid/view/autofill/AutofillId;
    .param p3, "saveOnAllViewsInvisible"    # Z
    .param p4, "fillableIds"    # [Landroid/view/autofill/AutofillId;

    .prologue
    .line 1338
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1339
    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v1, p1, :cond_3

    .line 1340
    if-eqz p3, :cond_1

    .line 1341
    new-instance v1, Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-direct {v1, p0, p2}, Landroid/view/autofill/AutofillManager$TrackedViews;-><init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    .line 1345
    :goto_0
    if-eqz p4, :cond_3

    .line 1346
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-nez v1, :cond_0

    .line 1347
    new-instance v1, Landroid/util/ArraySet;

    array-length v3, p4

    invoke-direct {v1, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    .line 1349
    :cond_0
    const/4 v1, 0x0

    array-length v3, p4

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, p4, v1

    .line 1350
    .local v0, "id":Landroid/view/autofill/AutofillId;
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1343
    .end local v0    # "id":Landroid/view/autofill/AutofillId;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1338
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1352
    :cond_2
    :try_start_1
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_3

    .line 1353
    const-string/jumbo v1, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTrackedViews(): fillableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1354
    const-string/jumbo v4, ", mFillableIds"

    .line 1353
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1354
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    .line 1353
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    .line 1359
    return-void
.end method

.method private startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    .locals 13
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "flags"    # I

    .prologue
    .line 998
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 999
    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1000
    const-string/jumbo v3, ", flags="

    .line 999
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1000
    const-string/jumbo v3, ", state="

    .line 999
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1000
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    .line 999
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v1, :cond_2

    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_2

    .line 1003
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    .line 1004
    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not automatically starting session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1005
    const-string/jumbo v3, " on state "

    .line 1004
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1005
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    .line 1004
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_1
    return-void

    .line 1010
    :cond_2
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v11

    .line 1011
    .local v11, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    invoke-direct {p0, v11}, Landroid/view/autofill/AutofillManager;->getComponentNameFromContext(Landroid/view/autofill/AutofillManager$AutofillClient;)Landroid/content/ComponentName;

    move-result-object v10

    .line 1012
    .local v10, "componentName":Landroid/content/ComponentName;
    if-nez v10, :cond_3

    .line 1013
    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): context is not activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-void

    .line 1016
    :cond_3
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    .line 1017
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 1018
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v4, :cond_6

    const/4 v8, 0x1

    :goto_0
    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v9, p4

    .line 1016
    invoke-interface/range {v1 .. v10}, Landroid/view/autofill/IAutoFillManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1019
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    .line 1020
    const/4 v1, 0x1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 1022
    :cond_4
    if-eqz v11, :cond_5

    .line 1023
    invoke-interface {v11}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackResetableStateAvailable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :cond_5
    return-void

    .line 1018
    :cond_6
    const/4 v8, 0x0

    goto :goto_0

    .line 1025
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :catch_0
    move-exception v12

    .line 1026
    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .locals 17
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "action"    # I
    .param p5, "flags"    # I

    .prologue
    .line 1067
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    move/from16 v0, p4

    if-eq v0, v1, :cond_0

    .line 1068
    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSessionLocked(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1069
    const-string/jumbo v3, ", value="

    .line 1068
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1069
    const-string/jumbo v3, ", action="

    .line 1068
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1069
    const-string/jumbo v3, ", flags="

    .line 1068
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_1

    const/16 v16, 0x1

    .line 1074
    .local v16, "restartIfNecessary":Z
    :goto_0
    if-eqz v16, :cond_7

    .line 1075
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v13

    .line 1076
    .local v13, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/view/autofill/AutofillManager;->getComponentNameFromContext(Landroid/view/autofill/AutofillManager$AutofillClient;)Landroid/content/ComponentName;

    move-result-object v10

    .line 1077
    .local v10, "componentName":Landroid/content/ComponentName;
    if-nez v10, :cond_2

    .line 1078
    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): context is not activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return-void

    .line 1071
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v16    # "restartIfNecessary":Z
    :cond_1
    const/16 v16, 0x0

    .restart local v16    # "restartIfNecessary":Z
    goto :goto_0

    .line 1081
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v4, :cond_5

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v9, p5

    move/from16 v12, p4

    .line 1081
    invoke-interface/range {v1 .. v12}, Landroid/view/autofill/IAutoFillManager;->updateOrRestartSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;II)I

    move-result v15

    .line 1084
    .local v15, "newId":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v15, v1, :cond_4

    .line 1085
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Session restarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_3
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1087
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 1088
    if-eqz v13, :cond_4

    .line 1089
    invoke-interface {v13}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackResetableStateAvailable()V

    .line 1100
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v15    # "newId":I
    :cond_4
    :goto_3
    return-void

    .line 1083
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 1087
    .restart local v15    # "newId":I
    :cond_6
    const/4 v1, 0x1

    goto :goto_2

    .line 1093
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v15    # "newId":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 1093
    invoke-interface/range {v1 .. v8}, Landroid/view/autofill/IAutoFillManager;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1097
    :catch_0
    move-exception v14

    .line 1098
    .local v14, "e":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 886
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    return-void

    .line 889
    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 890
    :try_start_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 891
    return-void

    .line 894
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 896
    return-void

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 862
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    return-void

    .line 865
    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 866
    :try_start_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 867
    return-void

    .line 870
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->finishSessionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 872
    return-void

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disableAutofillServices()V
    .locals 3

    .prologue
    .line 908
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    return-void

    .line 912
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/autofill/IAutoFillManager;->disableOwnedAutofillServices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableOwnedAutofillServices()V
    .locals 0

    .prologue
    .line 900
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->disableAutofillServices()V

    .line 901
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "outerPrefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1529
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "AutofillManager:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1531
    .local v0, "pfx":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sessionId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1532
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "state: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "enabled: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1534
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "hasService: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1535
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "hasCallback: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1536
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "last autofilled data: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1537
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "tracked views: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1538
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-nez v2, :cond_2

    .line 1539
    const-string/jumbo v2, "null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "fillable ids: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1547
    return-void

    :cond_0
    move v2, v4

    .line 1534
    goto :goto_0

    :cond_1
    move v3, v4

    .line 1535
    goto :goto_1

    .line 1541
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1542
    .local v1, "pfx2":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1543
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "visible:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->-get1(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1544
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "invisible:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->-get0(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .locals 2

    .prologue
    .line 524
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1}, Landroid/view/autofill/IAutoFillManager;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 527
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasAutofillFeature()Z
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnabledAutofillServices()Z
    .locals 4

    .prologue
    .line 923
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 926
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->isServiceEnabled(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAutofillSupported()Z
    .locals 3

    .prologue
    .line 943
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 946
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/autofill/IAutoFillManager;->isServiceSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    return v0

    .line 511
    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    .line 513
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyValueChanged(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 780
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    return-void

    .line 783
    :cond_0
    const/4 v1, 0x0

    .line 784
    .local v1, "id":Landroid/view/autofill/AutofillId;
    const/4 v6, 0x0

    .line 785
    .local v6, "valueWasRead":Z
    const/4 v3, 0x0

    .line 787
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 790
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v0, :cond_3

    .line 791
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V

    .line 809
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v3    # "value":Landroid/view/autofill/AutofillValue;
    :goto_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 810
    :cond_1
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 811
    const-string/jumbo v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyValueChanged("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "): ignoring on state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 812
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v4

    .line 811
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v7

    .line 814
    return-void

    .line 793
    .restart local v1    # "id":Landroid/view/autofill/AutofillId;
    .restart local v3    # "value":Landroid/view/autofill/AutofillValue;
    :cond_3
    :try_start_1
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 794
    .local v1, "id":Landroid/view/autofill/AutofillId;
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    .line 796
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    const/4 v6, 0x1

    .line 798
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 799
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 787
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v3    # "value":Landroid/view/autofill/AutofillValue;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 801
    .restart local v1    # "id":Landroid/view/autofill/AutofillId;
    .restart local v3    # "value":Landroid/view/autofill/AutofillValue;
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V

    .line 802
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 805
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V

    goto :goto_0

    .line 817
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v3    # "value":Landroid/view/autofill/AutofillValue;
    :cond_6
    if-nez v1, :cond_7

    .line 818
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 821
    :cond_7
    if-nez v6, :cond_8

    .line 822
    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    .line 825
    :cond_8
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 827
    return-void
.end method

.method public notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    return-void

    .line 840
    :cond_0
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 841
    :try_start_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit v6

    .line 842
    return-void

    .line 845
    :cond_2
    :try_start_1
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 846
    .local v1, "id":Landroid/view/autofill/AutofillId;
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 848
    return-void

    .line 840
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public notifyViewEntered(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    .line 580
    return-void
.end method

.method public notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "absBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 710
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 711
    return-void
.end method

.method public notifyViewExited(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 627
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    return-void

    .line 630
    :cond_0
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 631
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    .line 633
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 637
    .local v1, "id":Landroid/view/autofill/AutofillId;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_1
    monitor-exit v6

    .line 640
    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public notifyViewExited(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .prologue
    .line 759
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    return-void

    .line 762
    :cond_0
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 763
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    .line 765
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 769
    .local v1, "id":Landroid/view/autofill/AutofillId;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_1
    monitor-exit v6

    .line 772
    return-void

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public notifyViewVisibilityChanged(Landroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "isVisible"    # Z

    .prologue
    .line 660
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    .line 661
    return-void
.end method

.method public notifyViewVisibilityChanged(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 649
    invoke-direct {p0, p1, v0, p2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    .line 650
    return-void
.end method

.method public onAuthenticationResult(ILandroid/content/Intent;)V
    .locals 7
    .param p1, "authenticationId"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 962
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v3

    if-nez v3, :cond_0

    .line 963
    return-void

    .line 970
    :cond_0
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAuthenticationResult(): d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_1
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 973
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    if-nez p2, :cond_3

    :cond_2
    monitor-exit v4

    .line 974
    return-void

    .line 976
    :cond_3
    :try_start_1
    const-string/jumbo v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 977
    .local v2, "result":Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 978
    .local v1, "responseData":Landroid/os/Bundle;
    const-string/jumbo v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    :try_start_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 981
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 980
    invoke-interface {v3, v1, v5, p1, v6}, Landroid/view/autofill/IAutoFillManager;->setAuthenticationResult(Landroid/os/Bundle;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v4

    .line 986
    return-void

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "AutofillManager"

    const-string/jumbo v5, "Error delivering authentication result"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 972
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "responseData":Landroid/os/Bundle;
    .end local v2    # "result":Landroid/os/Parcelable;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v6, -0x80000000

    .line 418
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    return-void

    .line 421
    :cond_0
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 422
    :try_start_0
    const-string/jumbo v3, "android:lastAutoFilledData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/ParcelableMap;

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    .line 424
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    const-string/jumbo v3, "AutofillManager"

    const-string/jumbo v5, "New session was started before onCreate()"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 426
    return-void

    .line 429
    :cond_1
    :try_start_1
    const-string/jumbo v3, "android:sessionId"

    const/high16 v5, -0x80000000

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 430
    const-string/jumbo v3, "android:state"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mState:I

    .line 432
    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v3, v6, :cond_2

    .line 433
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    .line 435
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 436
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_2

    .line 438
    :try_start_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 439
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v7}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 438
    invoke-interface {v3, v5, v6, v7}, Landroid/view/autofill/IAutoFillManager;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v2

    .line 441
    .local v2, "sessionWasRestored":Z
    if-nez v2, :cond_3

    .line 442
    const-string/jumbo v3, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " could not be restored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/high16 v3, -0x80000000

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    .line 444
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mState:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v2    # "sessionWasRestored":Z
    :cond_2
    :goto_0
    monitor-exit v4

    .line 458
    return-void

    .line 446
    .restart local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .restart local v2    # "sessionWasRestored":Z
    :cond_3
    :try_start_3
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_4

    .line 447
    const-string/jumbo v3, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " was restored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_4
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackResetableStateAvailable()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 452
    .end local v2    # "sessionWasRestored":Z
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v3, "AutofillManager"

    const-string/jumbo v5, "Could not figure out if there was an autofill session"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 421
    .end local v0    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1516
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPendingSaveUi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1520
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 1525
    return-void

    .line 1521
    :catch_0
    move-exception v0

    .line 1522
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1518
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    return-void

    .line 486
    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    .line 488
    const-string/jumbo v0, "android:sessionId"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    :cond_1
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v0, :cond_2

    .line 491
    const-string/jumbo v0, "android:state"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    :cond_2
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-eqz v0, :cond_3

    .line 494
    const-string/jumbo v0, "android:lastAutoFilledData"

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    .line 497
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onVisibleForAutofill()V
    .locals 2

    .prologue
    .line 468
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 473
    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .locals 7
    .param p1, "callback"    # Landroid/view/autofill/AutofillManager$AutofillCallback;

    .prologue
    .line 1135
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1136
    return-void

    .line 1138
    :cond_0
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1139
    if-nez p1, :cond_1

    monitor-exit v3

    return-void

    .line 1141
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 1142
    .local v1, "hadCallback":Z
    :goto_0
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    if-nez v1, :cond_2

    .line 1146
    :try_start_1
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v2, v4, v5, v6}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    .line 1152
    return-void

    .line 1141
    .end local v1    # "hadCallback":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "hadCallback":Z
    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1138
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "hadCallback":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public requestAutofill(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 542
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    .line 543
    return-void
.end method

.method public requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "absBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    .line 571
    return-void
.end method

.method public unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .locals 6
    .param p1, "callback"    # Landroid/view/autofill/AutofillManager$AutofillCallback;

    .prologue
    .line 1160
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1161
    return-void

    .line 1163
    :cond_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1164
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :cond_1
    monitor-exit v2

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-ne p1, v1, :cond_1

    .line 1166
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    :try_start_2
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 1174
    return-void

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1163
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
