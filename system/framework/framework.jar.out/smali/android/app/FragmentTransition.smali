.class Landroid/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I


# direct methods
.method static synthetic -wrap0(Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "views"    # Ljava/util/ArrayList;
    .param p1, "visibility"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/FragmentTransition;->INVERSE_OPS:[I

    .line 42
    return-void

    .line 47
    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 572
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 573
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 577
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1059
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_0

    .line 1060
    return-void

    .line 1062
    :cond_0
    instance-of v6, p0, Landroid/transition/TransitionSet;

    if-eqz v6, :cond_1

    move-object v4, p0

    .line 1063
    check-cast v4, Landroid/transition/TransitionSet;

    .line 1064
    .local v4, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 1065
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1066
    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    .line 1067
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1065
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1069
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v4    # "set":Landroid/transition/TransitionSet;
    :cond_1
    invoke-static {p0}, Landroid/app/FragmentTransition;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1070
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    .line 1071
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v5}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1073
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1074
    .local v3, "numViews":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1075
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1074
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1079
    .end local v1    # "i":I
    .end local v3    # "numViews":I
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_2
    return-void
.end method

.method private static addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 14
    .param p0, "transaction"    # Landroid/app/BackStackRecord;
    .param p1, "op"    # Landroid/app/BackStackRecord$Op;
    .param p3, "isPop"    # Z
    .param p4, "isReorderedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1244
    .local p2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v2, p1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1245
    .local v2, "fragment":Landroid/app/Fragment;
    if-nez v2, :cond_0

    .line 1246
    return-void

    .line 1248
    :cond_0
    iget v8, v2, Landroid/app/Fragment;->mContainerId:I

    .line 1249
    .local v8, "containerId":I
    if-nez v8, :cond_1

    .line 1250
    return-void

    .line 1252
    :cond_1
    if-eqz p3, :cond_8

    sget-object v3, Landroid/app/FragmentTransition;->INVERSE_OPS:[I

    iget v4, p1, Landroid/app/BackStackRecord$Op;->cmd:I

    aget v7, v3, v4

    .line 1253
    .local v7, "command":I
    :goto_0
    const/4 v11, 0x0

    .line 1254
    .local v11, "setLastIn":Z
    const/4 v13, 0x0

    .line 1255
    .local v13, "wasRemoved":Z
    const/4 v10, 0x0

    .line 1256
    .local v10, "setFirstOut":Z
    const/4 v12, 0x0

    .line 1257
    .local v12, "wasAdded":Z
    packed-switch v7, :pswitch_data_0

    .line 1297
    .end local v10    # "setFirstOut":Z
    .end local v11    # "setLastIn":Z
    :goto_1
    :pswitch_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/FragmentTransition$FragmentContainerTransition;

    .line 1298
    .local v9, "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v11, :cond_2

    .line 1300
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Landroid/app/FragmentTransition;->ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v9

    .line 1301
    iput-object v2, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 1302
    move/from16 v0, p3

    iput-boolean v0, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1303
    iput-object p0, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    .line 1305
    :cond_2
    if-nez p4, :cond_4

    if-eqz v12, :cond_4

    .line 1306
    if-eqz v9, :cond_3

    iget-object v3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    if-ne v3, v2, :cond_3

    .line 1307
    const/4 v3, 0x0

    iput-object v3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 1314
    :cond_3
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 1315
    .local v1, "manager":Landroid/app/FragmentManagerImpl;
    iget v3, v2, Landroid/app/Fragment;->mState:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    iget v3, v1, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4

    .line 1316
    iget-object v3, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1317
    const/16 v4, 0x18

    .line 1316
    if-lt v3, v4, :cond_4

    .line 1317
    iget-boolean v3, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    xor-int/lit8 v3, v3, 0x1

    .line 1315
    if-eqz v3, :cond_4

    .line 1318
    invoke-virtual {v1, v2}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1319
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1322
    .end local v1    # "manager":Landroid/app/FragmentManagerImpl;
    :cond_4
    if-eqz v10, :cond_6

    if-eqz v9, :cond_5

    iget-object v3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    if-nez v3, :cond_6

    .line 1324
    :cond_5
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Landroid/app/FragmentTransition;->ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v9

    .line 1325
    iput-object v2, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 1326
    move/from16 v0, p3

    iput-boolean v0, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1327
    iput-object p0, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    .line 1330
    :cond_6
    if-nez p4, :cond_7

    if-eqz v13, :cond_7

    .line 1331
    if-eqz v9, :cond_7

    iget-object v3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    if-ne v3, v2, :cond_7

    .line 1332
    const/4 v3, 0x0

    iput-object v3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 1334
    :cond_7
    return-void

    .line 1252
    .end local v7    # "command":I
    .end local v9    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .end local v12    # "wasAdded":Z
    .end local v13    # "wasRemoved":Z
    :cond_8
    iget v7, p1, Landroid/app/BackStackRecord$Op;->cmd:I

    .restart local v7    # "command":I
    goto :goto_0

    .line 1259
    .restart local v10    # "setFirstOut":Z
    .restart local v11    # "setLastIn":Z
    .restart local v12    # "wasAdded":Z
    .restart local v13    # "wasRemoved":Z
    :pswitch_1
    if-eqz p4, :cond_a

    .line 1260
    iget-boolean v3, v2, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_9

    iget-boolean v3, v2, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    .line 1261
    iget-boolean v11, v2, Landroid/app/Fragment;->mAdded:Z

    .line 1265
    .end local v11    # "setLastIn":Z
    :goto_2
    const/4 v12, 0x1

    .line 1266
    goto/16 :goto_1

    .line 1260
    .restart local v11    # "setLastIn":Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    .line 1263
    :cond_a
    iget-boolean v11, v2, Landroid/app/Fragment;->mHidden:Z

    .local v11, "setLastIn":Z
    goto :goto_2

    .line 1269
    .local v11, "setLastIn":Z
    :pswitch_2
    if-eqz p4, :cond_b

    .line 1270
    iget-boolean v11, v2, Landroid/app/Fragment;->mIsNewlyAdded:Z

    .line 1274
    .end local v11    # "setLastIn":Z
    :goto_3
    const/4 v12, 0x1

    .line 1275
    goto/16 :goto_1

    .line 1272
    .restart local v11    # "setLastIn":Z
    :cond_b
    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-nez v3, :cond_c

    iget-boolean v3, v2, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v11, v3, 0x1

    .local v11, "setLastIn":Z
    goto :goto_3

    .local v11, "setLastIn":Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_3

    .line 1277
    :pswitch_3
    if-eqz p4, :cond_e

    .line 1278
    iget-boolean v3, v2, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_d

    .line 1279
    iget-boolean v10, v2, Landroid/app/Fragment;->mHidden:Z

    .line 1283
    .end local v10    # "setFirstOut":Z
    :goto_4
    const/4 v13, 0x1

    .line 1284
    goto/16 :goto_1

    .line 1278
    .restart local v10    # "setFirstOut":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_4

    .line 1281
    :cond_e
    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_f

    iget-boolean v3, v2, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v10, v3, 0x1

    .local v10, "setFirstOut":Z
    goto :goto_4

    .local v10, "setFirstOut":Z
    :cond_f
    const/4 v10, 0x0

    goto :goto_4

    .line 1287
    :pswitch_4
    if-eqz p4, :cond_12

    .line 1288
    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-nez v3, :cond_11

    iget-object v3, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_11

    .line 1289
    iget-object v3, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_11

    .line 1290
    iget-object v3, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTransitionAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    const/4 v10, 0x1

    .line 1294
    .end local v10    # "setFirstOut":Z
    :goto_5
    const/4 v13, 0x1

    .line 1295
    goto/16 :goto_1

    .line 1290
    .restart local v10    # "setFirstOut":Z
    :cond_10
    const/4 v10, 0x0

    goto :goto_5

    .line 1288
    :cond_11
    const/4 v10, 0x0

    goto :goto_5

    .line 1292
    :cond_12
    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_13

    iget-boolean v3, v2, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v10, v3, 0x1

    .local v10, "setFirstOut":Z
    goto :goto_5

    .local v10, "setFirstOut":Z
    :cond_13
    const/4 v10, 0x0

    goto :goto_5

    .line 1257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .param p1, "startView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 962
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 963
    .local v4, "startIndex":I
    invoke-static {p0, p1, v4}, Landroid/app/FragmentTransition;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 964
    return-void

    .line 966
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    move v3, v4

    .local v3, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 968
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 969
    .local v5, "view":Landroid/view/View;
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 970
    check-cast v6, Landroid/view/ViewGroup;

    .line 971
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 972
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 973
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 974
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0, v4}, Landroid/app/FragmentTransition;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 975
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 967
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childIndex":I
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 980
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public static calculateFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Landroid/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1200
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1201
    .local v0, "numOps":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1202
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    .line 1203
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v3, p2}, Landroid/app/FragmentTransition;->addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1205
    .end local v1    # "op":Landroid/app/BackStackRecord$Op;
    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/ArrayMap;
    .locals 12
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 145
    .local v2, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v6, p4, -0x1

    .local v6, "recordNum":I
    :goto_0
    if-lt v6, p3, :cond_4

    .line 146
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord;

    .line 147
    .local v5, "record":Landroid/app/BackStackRecord;
    invoke-virtual {v5, p0}, Landroid/app/BackStackRecord;->interactsWith(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 145
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 151
    .local v1, "isPop":Z
    iget-object v11, v5, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    .line 152
    iget-object v11, v5, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 155
    .local v3, "numSharedElements":I
    if-eqz v1, :cond_2

    .line 156
    iget-object v10, v5, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 157
    .local v10, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v5, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 162
    .local v8, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 163
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 164
    .local v7, "sourceName":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 165
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 166
    .local v4, "previousTarget":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 167
    invoke-virtual {v2, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 159
    .end local v0    # "i":I
    .end local v4    # "previousTarget":Ljava/lang/String;
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v8, v5, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 160
    .restart local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, v5, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .restart local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 169
    .restart local v0    # "i":I
    .restart local v4    # "previousTarget":Ljava/lang/String;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v9    # "targetName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 174
    .end local v0    # "i":I
    .end local v1    # "isPop":Z
    .end local v3    # "numSharedElements":I
    .end local v4    # "previousTarget":Ljava/lang/String;
    .end local v5    # "record":Landroid/app/BackStackRecord;
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-object v2
.end method

.method public static calculatePopFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Landroid/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v3}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1218
    return-void

    .line 1220
    :cond_0
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1221
    .local v0, "numOps":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "opNum":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1222
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    .line 1223
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    const/4 v3, 0x1

    invoke-static {p0, v1, p1, v3, p2}, Landroid/app/FragmentTransition;->addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1221
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1225
    .end local v1    # "op":Landroid/app/BackStackRecord$Op;
    :cond_1
    return-void
.end method

.method private static callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V
    .locals 7
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Landroid/app/Fragment;",
            "Z",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 918
    if-eqz p2, :cond_0

    .line 919
    invoke-virtual {p1}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v3

    .line 921
    .local v3, "sharedElementCallback":Landroid/app/SharedElementCallback;
    :goto_0
    if-eqz v3, :cond_3

    .line 922
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    const/4 v0, 0x0

    .line 925
    .local v0, "count":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 926
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 920
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v3

    .restart local v3    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    goto :goto_0

    .line 924
    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_1

    .line 929
    .restart local v1    # "i":I
    :cond_2
    if-eqz p4, :cond_4

    .line 930
    invoke-virtual {v3, v2, v4, v6}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 935
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    :goto_3
    return-void

    .line 932
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    invoke-virtual {v3, v2, v4, v6}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method private static captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;
    .locals 12
    .param p1, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p2, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 764
    iget-object v2, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 765
    .local v2, "inFragment":Landroid/app/Fragment;
    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 766
    .local v0, "fragmentView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    if-nez p1, :cond_1

    .line 767
    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 768
    return-object v11

    .line 766
    :cond_1
    if-eqz v0, :cond_0

    .line 770
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 771
    .local v3, "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v0, v3}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 775
    iget-object v4, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    .line 776
    .local v4, "inTransaction":Landroid/app/BackStackRecord;
    iget-boolean v10, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v10, :cond_4

    .line 777
    invoke-virtual {v2}, Landroid/app/Fragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v8

    .line 778
    .local v8, "sharedElementCallback":Landroid/app/SharedElementCallback;
    iget-object v7, v4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 784
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz v7, :cond_2

    .line 785
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 787
    :cond_2
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 788
    invoke-virtual {v8, v7, v3}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 789
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_7

    .line 790
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 791
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 792
    .local v9, "view":Landroid/view/View;
    if-nez v9, :cond_5

    .line 793
    invoke-static {p0, v6}, Landroid/app/FragmentTransition;->findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 794
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 795
    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 780
    .end local v1    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    .end local v9    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v2}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v8

    .line 781
    .restart local v8    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    iget-object v7, v4, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 797
    .restart local v1    # "i":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 798
    invoke-static {p0, v6}, Landroid/app/FragmentTransition;->findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 799
    .restart local v5    # "key":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 800
    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 805
    .end local v1    # "i":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "view":Landroid/view/View;
    :cond_6
    invoke-static {p0, v3}, Landroid/app/FragmentTransition;->retainValues(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 807
    :cond_7
    return-object v3
.end method

.method private static captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;
    .locals 11
    .param p1, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p2, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 709
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p1, :cond_1

    .line 710
    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 711
    return-object v10

    .line 713
    :cond_1
    iget-object v3, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 714
    .local v3, "outFragment":Landroid/app/Fragment;
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 715
    .local v4, "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 719
    iget-object v5, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    .line 720
    .local v5, "outTransaction":Landroid/app/BackStackRecord;
    iget-boolean v9, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v9, :cond_3

    .line 721
    invoke-virtual {v3}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v6

    .line 722
    .local v6, "sharedElementCallback":Landroid/app/SharedElementCallback;
    iget-object v2, v5, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 728
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 729
    if-eqz v6, :cond_5

    .line 730
    invoke-virtual {v6, v2, v4}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 731
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_6

    .line 732
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 733
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 734
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_4

    .line 735
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 724
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v3}, Landroid/app/Fragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v6

    .line 725
    .restart local v6    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    iget-object v2, v5, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 736
    .restart local v0    # "i":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v8    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 737
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 738
    .local v7, "targetValue":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 742
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v7    # "targetValue":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 744
    :cond_6
    return-object v4
.end method

.method private static cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0
    .param p0, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 445
    if-eqz p0, :cond_0

    .line 446
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 448
    :cond_0
    return-object p0
.end method

.method private static configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1099
    .local p2, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1100
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_2

    .line 1101
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1103
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {v0, v1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 1106
    :cond_0
    if-eqz p2, :cond_1

    .line 1107
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1109
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1110
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    invoke-static {p0, v1}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1114
    .end local v0    # "root":Landroid/view/View;
    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    return-object v1
.end method

.method private static configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 21
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p3, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p6, "enterTransition"    # Landroid/transition/Transition;
    .param p7, "exitTransition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")",
            "Landroid/transition/TransitionSet;"
        }
    .end annotation

    .prologue
    .line 613
    .local p2, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p3

    iget-object v12, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 614
    .local v12, "inFragment":Landroid/app/Fragment;
    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 616
    .local v13, "outFragment":Landroid/app/Fragment;
    if-eqz v12, :cond_0

    if-nez v13, :cond_1

    .line 617
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .line 620
    :cond_1
    move-object/from16 v0, p3

    iget-boolean v6, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 621
    .local v6, "inIsPop":Z
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v20, 0x0

    .line 624
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/app/FragmentTransition;->captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v18

    .line 627
    .local v18, "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 628
    const/16 v20, 0x0

    .line 633
    :goto_1
    if-nez p6, :cond_4

    if-nez p7, :cond_4

    if-nez v20, :cond_4

    .line 635
    const/4 v5, 0x0

    return-object v5

    .line 622
    .end local v18    # "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_2
    invoke-static {v12, v13, v6}, Landroid/app/FragmentTransition;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    move-result-object v20

    .local v20, "sharedElementTransition":Landroid/transition/TransitionSet;
    goto :goto_0

    .line 630
    .end local v20    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .restart local v18    # "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 638
    :cond_4
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v12, v13, v6, v0, v5}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 641
    if-eqz v20, :cond_6

    .line 642
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 643
    .local v16, "inEpicenter":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/app/FragmentTransition;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 644
    move-object/from16 v0, p3

    iget-boolean v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v17, v0

    .line 645
    .local v17, "outIsPop":Z
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    move-object/from16 v19, v0

    .line 646
    .local v19, "outTransaction":Landroid/app/BackStackRecord;
    move-object/from16 v0, v20

    move-object/from16 v1, p7

    move-object/from16 v2, v18

    move/from16 v3, v17

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/FragmentTransition;->setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V

    .line 648
    if-eqz p6, :cond_5

    .line 649
    new-instance v5, Landroid/app/FragmentTransition$3;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/app/FragmentTransition$3;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 663
    .end local v16    # "inEpicenter":Landroid/graphics/Rect;
    .end local v17    # "outIsPop":Z
    .end local v19    # "outTransaction":Landroid/app/BackStackRecord;
    :cond_5
    :goto_2
    move-object/from16 v8, v20

    .line 665
    .local v8, "finalSharedElementTransition":Landroid/transition/TransitionSet;
    new-instance v5, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p6

    invoke-direct/range {v5 .. v16}, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 689
    return-object v20

    .line 660
    .end local v8    # "finalSharedElementTransition":Landroid/transition/TransitionSet;
    :cond_6
    const/16 v16, 0x0

    .local v16, "inEpicenter":Landroid/graphics/Rect;
    goto :goto_2
.end method

.method private static configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 14
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p3, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p6, "enterTransition"    # Landroid/transition/Transition;
    .param p7, "exitTransition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")",
            "Landroid/transition/TransitionSet;"
        }
    .end annotation

    .prologue
    .line 484
    .local p2, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    .line 485
    .local v4, "inFragment":Landroid/app/Fragment;
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    .line 486
    .local v5, "outFragment":Landroid/app/Fragment;
    if-eqz v4, :cond_0

    .line 487
    invoke-virtual {v4}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :cond_0
    if-eqz v4, :cond_1

    if-nez v5, :cond_2

    .line 490
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 493
    :cond_2
    move-object/from16 v0, p3

    iget-boolean v3, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 494
    .local v3, "inIsPop":Z
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v12, 0x0

    .line 497
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Landroid/app/FragmentTransition;->captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v10

    .line 500
    .local v10, "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Landroid/app/FragmentTransition;->captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v6

    .line 503
    .local v6, "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 504
    const/4 v12, 0x0

    .line 505
    .local v12, "sharedElementTransition":Landroid/transition/TransitionSet;
    if-eqz v10, :cond_3

    .line 506
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    .line 508
    :cond_3
    if-eqz v6, :cond_4

    .line 509
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 518
    .end local v12    # "sharedElementTransition":Landroid/transition/TransitionSet;
    :cond_4
    :goto_1
    if-nez p6, :cond_7

    if-nez p7, :cond_7

    if-nez v12, :cond_7

    .line 520
    const/4 v2, 0x0

    return-object v2

    .line 495
    .end local v6    # "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v10    # "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_5
    invoke-static {v4, v5, v3}, Landroid/app/FragmentTransition;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    move-result-object v12

    .local v12, "sharedElementTransition":Landroid/transition/TransitionSet;
    goto :goto_0

    .line 513
    .end local v12    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .restart local v6    # "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v10    # "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 512
    move-object/from16 v0, p4

    invoke-static {v0, v10, v2}, Landroid/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 514
    move-object/from16 v0, p5

    invoke-static {v0, v6, v2}, Landroid/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V

    goto :goto_1

    .line 523
    :cond_7
    const/4 v2, 0x1

    invoke-static {v4, v5, v3, v10, v2}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 527
    if-eqz v12, :cond_9

    .line 528
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    move-object/from16 v0, p4

    invoke-static {v12, p1, v0}, Landroid/app/FragmentTransition;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 530
    move-object/from16 v0, p3

    iget-boolean v9, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 531
    .local v9, "outIsPop":Z
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    .line 532
    .local v11, "outTransaction":Landroid/app/BackStackRecord;
    move-object/from16 v0, p7

    invoke-static {v12, v0, v10, v9, v11}, Landroid/app/FragmentTransition;->setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V

    .line 534
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 535
    .local v8, "epicenter":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-static {v6, v0, v1, v3}, Landroid/app/FragmentTransition;->getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v7

    .line 537
    .local v7, "epicenterView":Landroid/view/View;
    if-eqz v7, :cond_8

    .line 538
    new-instance v2, Landroid/app/FragmentTransition$2;

    invoke-direct {v2, v8}, Landroid/app/FragmentTransition$2;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 550
    .end local v7    # "epicenterView":Landroid/view/View;
    .end local v8    # "epicenter":Landroid/graphics/Rect;
    .end local v9    # "outIsPop":Z
    .end local v11    # "outTransaction":Landroid/app/BackStackRecord;
    :cond_8
    :goto_2
    new-instance v2, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$1;

    invoke-direct/range {v2 .. v8}, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$1;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 557
    return-object v12

    .line 546
    :cond_9
    const/4 v8, 0x0

    .line 547
    .local v8, "epicenter":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, "epicenterView":Landroid/view/View;
    goto :goto_2
.end method

.method private static configureTransitionsOrdered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V
    .locals 27
    .param p0, "fragmentManager"    # Landroid/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "I",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p4, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 268
    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v3}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "sceneRoot":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 271
    :cond_0
    if-nez v2, :cond_1

    .line 272
    return-void

    .line 274
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    move-object/from16 v17, v0

    .line 275
    .local v17, "inFragment":Landroid/app/Fragment;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    move-object/from16 v25, v0

    .line 276
    .local v25, "outFragment":Landroid/app/Fragment;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v24, v0

    .line 277
    .local v24, "inIsPop":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v26, v0

    .line 279
    .local v26, "outIsPop":Z
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/app/FragmentTransition;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v8

    .line 280
    .local v8, "enterTransition":Landroid/transition/Transition;
    invoke-static/range {v25 .. v26}, Landroid/app/FragmentTransition;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v9

    .line 282
    .local v9, "exitTransition":Landroid/transition/Transition;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 285
    invoke-static/range {v2 .. v9}, Landroid/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v15

    .line 289
    .local v15, "sharedElementTransition":Landroid/transition/TransitionSet;
    if-nez v8, :cond_2

    if-nez v15, :cond_2

    .line 290
    if-nez v9, :cond_2

    .line 291
    return-void

    .line 294
    :cond_2
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    .line 297
    .local v14, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 298
    :cond_3
    const/4 v9, 0x0

    .line 301
    .end local v9    # "exitTransition":Landroid/transition/Transition;
    :cond_4
    if-eqz v8, :cond_5

    .line 304
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 308
    :cond_5
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 307
    move-object/from16 v0, v17

    invoke-static {v8, v9, v15, v0, v3}, Landroid/app/FragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v10

    .line 310
    .local v10, "transition":Landroid/transition/Transition;
    if-eqz v10, :cond_6

    .line 311
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    .line 312
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    .line 313
    invoke-static/range {v10 .. v16}, Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    move-object/from16 v16, v2

    move-object/from16 v18, p3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v12

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    .line 316
    invoke-static/range {v16 .. v23}, Landroid/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroid/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 319
    invoke-static {v2, v10}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 321
    .end local v12    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6
    return-void
.end method

.method private static configureTransitionsReordered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V
    .locals 21
    .param p0, "fragmentManager"    # Landroid/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "I",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p4, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 196
    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v3}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "sceneRoot":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 199
    :cond_0
    if-nez v2, :cond_1

    .line 200
    return-void

    .line 202
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    move-object/from16 v17, v0

    .line 203
    .local v17, "inFragment":Landroid/app/Fragment;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    move-object/from16 v19, v0

    .line 204
    .local v19, "outFragment":Landroid/app/Fragment;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v18, v0

    .line 205
    .local v18, "inIsPop":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v20, v0

    .line 207
    .local v20, "outIsPop":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static/range {v17 .. v18}, Landroid/app/FragmentTransition;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v8

    .line 210
    .local v8, "enterTransition":Landroid/transition/Transition;
    invoke-static/range {v19 .. v20}, Landroid/app/FragmentTransition;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v9

    .local v9, "exitTransition":Landroid/transition/Transition;
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 212
    invoke-static/range {v2 .. v9}, Landroid/app/FragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v15

    .line 216
    .local v15, "sharedElementTransition":Landroid/transition/TransitionSet;
    if-nez v8, :cond_2

    if-nez v15, :cond_2

    .line 217
    if-nez v9, :cond_2

    .line 218
    return-void

    .line 221
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    .line 224
    .local v14, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v8, v0, v7, v1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v12

    .line 227
    .local v12, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x4

    invoke-static {v12, v3}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 229
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v9, v15, v0, v1}, Landroid/app/FragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v10

    .line 232
    .local v10, "transition":Landroid/transition/Transition;
    if-eqz v10, :cond_3

    .line 233
    move-object/from16 v0, v19

    invoke-static {v9, v0, v14}, Landroid/app/FragmentTransition;->replaceHide(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V

    .line 234
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    .line 235
    invoke-static/range {v10 .. v16}, Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    .line 238
    invoke-static {v2, v10}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 239
    const/4 v3, 0x0

    invoke-static {v12, v3}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 241
    if-eqz v15, :cond_3

    .line 242
    invoke-virtual {v15}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 243
    invoke-virtual {v15}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-static {v15, v6, v7}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 247
    :cond_3
    return-void
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 987
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 988
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 989
    const/4 v1, 0x1

    return v1

    .line 987
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 992
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;
    .locals 0
    .param p0, "containerTransition"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .prologue
    .line 1344
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/FragmentTransition$FragmentContainerTransition;>;"
    if-nez p0, :cond_0

    .line 1345
    new-instance p0, Landroid/app/FragmentTransition$FragmentContainerTransition;

    .end local p0    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    invoke-direct {p0}, Landroid/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    .line 1346
    .restart local p0    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1348
    :cond_0
    return-object p0
.end method

.method private static findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 815
    .local v1, "numElements":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 816
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 815
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "isPop"    # Z

    .prologue
    const/4 v0, 0x0

    .line 423
    if-nez p0, :cond_0

    .line 424
    return-object v0

    .line 426
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 427
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "outFragment"    # Landroid/app/Fragment;
    .param p1, "isPop"    # Z

    .prologue
    const/4 v0, 0x0

    .line 434
    if-nez p0, :cond_0

    .line 435
    return-object v0

    .line 437
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 438
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method private static getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;
    .locals 5
    .param p1, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "enterTransition"    # Landroid/transition/Transition;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/transition/Transition;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p0, "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 835
    iget-object v0, p1, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    .line 836
    .local v0, "inTransaction":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 837
    iget-object v2, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 838
    iget-object v2, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 836
    if-eqz v2, :cond_1

    .line 839
    if-eqz p3, :cond_0

    .line 840
    iget-object v2, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 842
    .local v1, "targetName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    .line 841
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_0
    iget-object v2, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "targetName":Ljava/lang/String;
    goto :goto_0

    .line 844
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private static getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;
    .locals 4
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p2, "isPop"    # Z

    .prologue
    const/4 v3, 0x0

    .line 405
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 406
    :cond_0
    return-object v3

    .line 408
    :cond_1
    if-eqz p2, :cond_2

    .line 409
    invoke-virtual {p1}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v2

    .line 408
    :goto_0
    invoke-static {v2}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    .line 411
    .local v0, "transition":Landroid/transition/Transition;
    if-nez v0, :cond_3

    .line 412
    return-object v3

    .line 410
    .end local v0    # "transition":Landroid/transition/Transition;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    goto :goto_0

    .line 414
    .restart local v0    # "transition":Landroid/transition/Transition;
    :cond_3
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 415
    .local v1, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 416
    return-object v1
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 1
    .param p0, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1085
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1085
    if-nez v0, :cond_0

    .line 1087
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1085
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 1094
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic lambda$-android_app_FragmentTransition_16724(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 335
    .local p0, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic lambda$-android_app_FragmentTransition_18686(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 2
    .param p0, "enterTransition"    # Landroid/transition/Transition;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p2, "inFragment"    # Landroid/app/Fragment;
    .param p6, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 372
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p4, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    .line 373
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 374
    invoke-static {p0, p2, p3, p1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    .line 376
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    if-eqz p5, :cond_2

    .line 380
    if-eqz p6, :cond_1

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v0, "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-static {p6, p5, v0}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 385
    .end local v0    # "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    invoke-virtual {p5}, Ljava/util/ArrayList;->clear()V

    .line 386
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic lambda$-android_app_FragmentTransition_26843(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p2, "inIsPop"    # Z
    .param p4, "epicenterView"    # Landroid/view/View;
    .param p5, "epicenter"    # Landroid/graphics/Rect;

    .prologue
    .line 552
    .local p3, "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 551
    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 553
    if-eqz p4, :cond_0

    .line 554
    invoke-virtual {p4, p5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$-android_app_FragmentTransition_32404(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "finalSharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p2, "fragments"    # Landroid/app/FragmentTransition$FragmentContainerTransition;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .param p5, "inFragment"    # Landroid/app/Fragment;
    .param p6, "outFragment"    # Landroid/app/Fragment;
    .param p7, "inIsPop"    # Z
    .param p9, "enterTransition"    # Landroid/transition/Transition;
    .param p10, "inEpicenter"    # Landroid/graphics/Rect;

    .prologue
    .line 666
    .local p0, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {p0, p1, p2}, Landroid/app/FragmentTransition;->captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 669
    .local v1, "inSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 671
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_0
    const/4 v2, 0x0

    .line 674
    invoke-static {p5, p6, p7, v1, v2}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    .line 676
    if-eqz p1, :cond_1

    .line 677
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 678
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 679
    invoke-static {p1, p8, p3}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 682
    invoke-static {v1, p2, p9, p7}, Landroid/app/FragmentTransition;->getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v0

    .line 684
    .local v0, "inEpicenterView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 685
    invoke-virtual {v0, p10}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .end local v0    # "inEpicenterView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 7
    .param p0, "enterTransition"    # Landroid/transition/Transition;
    .param p1, "exitTransition"    # Landroid/transition/Transition;
    .param p2, "sharedElementTransition"    # Landroid/transition/Transition;
    .param p3, "inFragment"    # Landroid/app/Fragment;
    .param p4, "isPop"    # Z

    .prologue
    .line 1137
    const/4 v0, 0x1

    .line 1138
    .local v0, "overlap":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 1139
    if-eqz p4, :cond_4

    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    .line 1148
    .end local v0    # "overlap":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 1150
    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    .line 1151
    .local v4, "transitionSet":Landroid/transition/TransitionSet;
    if-eqz p0, :cond_1

    .line 1152
    invoke-virtual {v4, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1154
    :cond_1
    if-eqz p1, :cond_2

    .line 1155
    invoke-virtual {v4, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1157
    :cond_2
    if-eqz p2, :cond_3

    .line 1158
    invoke-virtual {v4, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1160
    :cond_3
    move-object v3, v4

    .line 1186
    .end local v4    # "transitionSet":Landroid/transition/TransitionSet;
    .local v3, "transition":Landroid/transition/Transition;
    :goto_1
    return-object v3

    .line 1140
    .end local v3    # "transition":Landroid/transition/Transition;
    .restart local v0    # "overlap":Z
    :cond_4
    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    .local v0, "overlap":Z
    goto :goto_0

    .line 1164
    .end local v0    # "overlap":Z
    :cond_5
    const/4 v1, 0x0

    .line 1165
    .local v1, "staggered":Landroid/transition/Transition;
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    .line 1166
    new-instance v5, Landroid/transition/TransitionSet;

    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v5, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    .line 1169
    const/4 v6, 0x1

    .line 1166
    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 1175
    .end local v1    # "staggered":Landroid/transition/Transition;
    :cond_6
    :goto_2
    if-eqz p2, :cond_a

    .line 1176
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 1177
    .local v2, "together":Landroid/transition/TransitionSet;
    if-eqz v1, :cond_7

    .line 1178
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1180
    :cond_7
    invoke-virtual {v2, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1181
    move-object v3, v2

    .restart local v3    # "transition":Landroid/transition/Transition;
    goto :goto_1

    .line 1170
    .end local v2    # "together":Landroid/transition/TransitionSet;
    .end local v3    # "transition":Landroid/transition/Transition;
    .restart local v1    # "staggered":Landroid/transition/Transition;
    :cond_8
    if-eqz p1, :cond_9

    .line 1171
    move-object v1, p1

    .local v1, "staggered":Landroid/transition/Transition;
    goto :goto_2

    .line 1172
    .local v1, "staggered":Landroid/transition/Transition;
    :cond_9
    if-eqz p0, :cond_6

    .line 1173
    move-object v1, p0

    .local v1, "staggered":Landroid/transition/Transition;
    goto :goto_2

    .line 1183
    .end local v1    # "staggered":Landroid/transition/Transition;
    :cond_a
    move-object v3, v1

    .restart local v3    # "transition":Landroid/transition/Transition;
    goto :goto_1
.end method

.method private static replaceHide(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "exitTransition"    # Landroid/transition/Transition;
    .param p1, "exitingFragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    .line 331
    iget-boolean v1, p1, Landroid/app/Fragment;->mHidden:Z

    .line 330
    if-eqz v1, :cond_0

    .line 331
    iget-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 330
    if-eqz v1, :cond_0

    .line 332
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->setHideReplaced(Z)V

    .line 333
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, "fragmentView":Landroid/view/View;
    iget-object v1, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p2}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;-><init>(BLjava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 337
    new-instance v1, Landroid/app/FragmentTransition$1;

    invoke-direct {v1, v0, p2}, Landroid/app/FragmentTransition$1;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 346
    .end local v0    # "fragmentView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1027
    .local p1, "oldTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, "newTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v6, p0, Landroid/transition/TransitionSet;

    if-eqz v6, :cond_0

    move-object v3, p0

    .line 1028
    check-cast v3, Landroid/transition/TransitionSet;

    .line 1029
    .local v3, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 1030
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1031
    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    .line 1032
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1, p2}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1034
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v3    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {p0}, Landroid/app/FragmentTransition;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1035
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    .line 1036
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 1037
    invoke-interface {v5, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    .line 1036
    if-eqz v6, :cond_3

    .line 1039
    if-nez p2, :cond_1

    const/4 v4, 0x0

    .line 1040
    .local v4, "targetCount":I
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v4, :cond_2

    .line 1041
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1040
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1039
    .end local v1    # "i":I
    .end local v4    # "targetCount":I
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .restart local v4    # "targetCount":I
    goto :goto_1

    .line 1043
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_3
    if-ltz v1, :cond_3

    .line 1044
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1043
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1048
    .end local v1    # "i":I
    .end local v4    # "targetCount":I
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_3
    return-void
.end method

.method private static retainValues(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 897
    .local p0, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 898
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 899
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 900
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 897
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 903
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "overalTransition"    # Landroid/transition/Transition;
    .param p1, "enterTransition"    # Landroid/transition/Transition;
    .param p3, "exitTransition"    # Landroid/transition/Transition;
    .param p5, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p2, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p4, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Landroid/app/FragmentTransition$5;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/FragmentTransition$5;-><init>(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1017
    return-void
.end method

.method private static scheduleTargetChange(Landroid/view/ViewGroup;Landroid/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "inFragment"    # Landroid/app/Fragment;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "enterTransition"    # Landroid/transition/Transition;
    .param p6, "exitTransition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 389
    return-void
.end method

.method private static setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 877
    if-eqz p1, :cond_0

    .line 878
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 879
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 881
    new-instance v1, Landroid/app/FragmentTransition$4;

    invoke-direct {v1, v0}, Landroid/app/FragmentTransition$4;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 888
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private static setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V
    .locals 4
    .param p0, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p1, "exitTransition"    # Landroid/transition/Transition;
    .param p3, "outIsPop"    # Z
    .param p4, "outTransaction"    # Landroid/app/BackStackRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/TransitionSet;",
            "Landroid/transition/Transition;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "outSharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v3, 0x0

    .line 859
    iget-object v2, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 860
    iget-object v2, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 859
    if-eqz v2, :cond_0

    .line 861
    if-eqz p3, :cond_1

    .line 862
    iget-object v2, p4, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 864
    .local v1, "sourceName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 865
    .local v0, "outEpicenterView":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/app/FragmentTransition;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 867
    if-eqz p1, :cond_0

    .line 868
    invoke-static {p1, v0}, Landroid/app/FragmentTransition;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 871
    .end local v0    # "outEpicenterView":Landroid/view/View;
    .end local v1    # "sourceName":Ljava/lang/String;
    :cond_0
    return-void

    .line 863
    :cond_1
    iget-object v2, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "sourceName":Ljava/lang/String;
    goto :goto_0
.end method

.method private static setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "transition"    # Landroid/transition/TransitionSet;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/TransitionSet;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 945
    .local p2, "sharedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v3

    .line 946
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 947
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 948
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 949
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 950
    .local v2, "view":Landroid/view/View;
    invoke-static {v3, v2}, Landroid/app/FragmentTransition;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 948
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 952
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-static {p0, p2}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 955
    return-void
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_0

    .line 1122
    return-void

    .line 1124
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1125
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1126
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1128
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 12
    .param p0, "fragmentManager"    # Landroid/app/FragmentManagerImpl;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget v10, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v11, 0x1

    if-ge v10, v11, :cond_0

    .line 91
    return-void

    .line 94
    :cond_0
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 95
    .local v9, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/FragmentTransition$FragmentContainerTransition;>;"
    move v3, p3

    .local v3, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v3, v0, :cond_2

    .line 96
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/BackStackRecord;

    .line 97
    .local v8, "record":Landroid/app/BackStackRecord;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 98
    .local v4, "isPop":Z
    if-eqz v4, :cond_1

    .line 99
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Landroid/app/FragmentTransition;->calculatePopFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 95
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_1
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Landroid/app/FragmentTransition;->calculateFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 105
    .end local v4    # "isPop":Z
    .end local v8    # "record":Landroid/app/BackStackRecord;
    :cond_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-eqz v10, :cond_4

    .line 106
    new-instance v6, Landroid/view/View;

    iget-object v10, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    .local v6, "nonExistentView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 108
    .local v7, "numContainers":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_4

    .line 109
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 110
    .local v1, "containerId":I
    move/from16 v0, p4

    invoke-static {v1, p1, p2, p3, v0}, Landroid/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/ArrayMap;

    move-result-object v5

    .line 113
    .local v5, "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/FragmentTransition$FragmentContainerTransition;

    .line 115
    .local v2, "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    if-eqz p5, :cond_3

    .line 116
    invoke-static {p0, v1, v2, v6, v5}, Landroid/app/FragmentTransition;->configureTransitionsReordered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V

    .line 108
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 119
    :cond_3
    invoke-static {p0, v1, v2, v6, v5}, Landroid/app/FragmentTransition;->configureTransitionsOrdered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V

    goto :goto_3

    .line 124
    .end local v1    # "containerId":I
    .end local v2    # "containerTransition":Landroid/app/FragmentTransition$FragmentContainerTransition;
    .end local v5    # "nameOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "nonExistentView":Landroid/view/View;
    .end local v7    # "numContainers":I
    :cond_4
    return-void
.end method
