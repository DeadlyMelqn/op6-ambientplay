.class public Lcom/android/systemui/recents/model/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/Task$TaskCallbacks;,
        Lcom/android/systemui/recents/model/Task$TaskKey;
    }
.end annotation


# instance fields
.field public affiliationColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public affiliationTaskId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public appInfoDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public bounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorBackground:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorPrimary:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public dismissDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public group:Lcom/android/systemui/recents/model/TaskGrouping;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "group_"
    .end annotation
.end field

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isDockable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLaunchTarget:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isStackTask:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isSystemApp:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isTaskLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public key:Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "key_"
    .end annotation
.end field

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public resizeMode:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public temporarySortIndexInStack:I

.field public thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

.field public title:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public titleDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public useLightOnPrimaryColor:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    .line 212
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Lcom/android/systemui/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZ)V
    .locals 5
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "affiliationTaskId"    # I
    .param p3, "affiliationColor"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "thumbnail"    # Lcom/android/systemui/recents/model/ThumbnailData;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "titleDescription"    # Ljava/lang/String;
    .param p8, "dismissDescription"    # Ljava/lang/String;
    .param p9, "appInfoDescription"    # Ljava/lang/String;
    .param p10, "colorPrimary"    # I
    .param p11, "colorBackground"    # I
    .param p12, "isLaunchTarget"    # Z
    .param p13, "isStackTask"    # Z
    .param p14, "isSystemApp"    # Z
    .param p15, "isDockable"    # Z
    .param p16, "bounds"    # Landroid/graphics/Rect;
    .param p17, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p18, "resizeMode"    # I
    .param p19, "topActivity"    # Landroid/content/ComponentName;
    .param p20, "isLocked"    # Z
    .param p21, "isTaskLocked"    # Z

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    .line 222
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq p2, v3, :cond_0

    const/4 v2, 0x1

    .line 223
    .local v2, "isInAffiliationGroup":Z
    :goto_0
    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 224
    .local v1, "hasAffiliationGroupColor":Z
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 225
    iput p2, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    .line 226
    iput p3, p0, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    .line 227
    iput-object p4, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 228
    iput-object p5, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    .line 229
    iput-object p6, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    .line 230
    iput-object p7, p0, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    .line 231
    iput-object p8, p0, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    .line 232
    iput-object p9, p0, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    .line 233
    if-eqz v1, :cond_2

    .end local p3    # "affiliationColor":I
    :goto_2
    iput p3, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 234
    move/from16 v0, p11

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    .line 235
    iget v3, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 236
    const/4 v4, -0x1

    .line 235
    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->computeContrastBetweenColors(II)F

    move-result v3

    .line 236
    const/high16 v4, 0x40400000    # 3.0f

    .line 235
    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 237
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    .line 238
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 239
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 240
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isStackTask:Z

    .line 241
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    .line 242
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    .line 243
    move/from16 v0, p18

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    .line 244
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    .line 245
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    .line 248
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    .line 250
    return-void

    .line 222
    .end local v1    # "hasAffiliationGroupColor":Z
    .end local v2    # "isInAffiliationGroup":Z
    .restart local p3    # "affiliationColor":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isInAffiliationGroup":Z
    goto :goto_0

    .line 223
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hasAffiliationGroupColor":Z
    goto :goto_1

    :cond_2
    move p3, p10

    .line 233
    goto :goto_2

    .line 235
    .end local p3    # "affiliationColor":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_0
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "o"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 256
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 257
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 258
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    .line 259
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    .line 260
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 261
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    .line 262
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    .line 263
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    .line 264
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    .line 265
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    .line 266
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 267
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    .line 268
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 269
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    .line 270
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 271
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 272
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isStackTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isStackTask:Z

    .line 273
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    .line 274
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    .line 275
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    .line 276
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    .line 277
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    .line 280
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    .line 282
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 372
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/Task;->isAffiliatedTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "affTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v0, :cond_1

    .line 377
    const-string/jumbo v0, " dockable=N"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_2

    .line 380
    const-string/jumbo v0, " launchTarget=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    const-string/jumbo v0, " freeform=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 385
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v0, :cond_4

    .line 386
    const-string/jumbo v0, " locked=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v0, :cond_5

    .line 391
    const-string/jumbo v0, " TaskLocked=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    :cond_5
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 397
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 362
    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 363
    .local v0, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getTopComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    .line 354
    :goto_0
    return-object v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public isAffiliatedTask()Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v1, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFreeformTask()Z
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 321
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "thumbnailData"    # Lcom/android/systemui/recents/model/ThumbnailData;
    .param p2, "applicationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 326
    iput-object p2, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 327
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    .line 328
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 329
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v2, p0, p1}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method public notifyTaskDataUnloaded(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "defaultApplicationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 337
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    .line 338
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataUnloaded()V

    .line 338
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 0
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 303
    return-void
.end method

.method public setStackId(I)V
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 309
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->setStackId(I)V

    .line 310
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 311
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskStackIdChanged()V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
