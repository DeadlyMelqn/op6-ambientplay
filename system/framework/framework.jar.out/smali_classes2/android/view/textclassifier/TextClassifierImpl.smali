.class final Landroid/view/textclassifier/TextClassifierImpl;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;,
        Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassifierImpl"

.field private static final MODEL_DIR:Ljava/lang/String; = "/etc/textclassifier/"

.field private static final MODEL_FILE_REGEX:Ljava/lang/String; = "textclassifier\\.smartselection\\.(.*)\\.model"

.field private static final UPDATED_MODEL_FILE_PATH:Ljava/lang/String; = "/data/misc/textclassifier/textclassifier.smartselection.model"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLocale:Ljava/util/Locale;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mModelFilePaths:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Landroid/view/textclassifier/TextClassifierConstants;

.field private mSmartSelection:Landroid/view/textclassifier/SmartSelection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation
.end field

.field private final mSmartSelectionLock:Ljava/lang/Object;

.field private mVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/view/textclassifier/TextClassifierImpl;->getHintFlags(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;
    .locals 1
    .param p0, "types"    # [Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    .prologue
    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getHighestScoringType([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelectionLock:Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method private static closeAndLogError(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 443
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "TextClassifierImpl"

    const-string/jumbo v2, "Error closing file."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createClassificationResult([Landroid/view/textclassifier/SmartSelection$ClassificationResult;Ljava/lang/CharSequence;)Landroid/view/textclassifier/TextClassification;
    .locals 13
    .param p1, "classifications"    # [Landroid/view/textclassifier/SmartSelection$ClassificationResult;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x0

    .line 360
    new-instance v11, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v11}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    .line 361
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 360
    invoke-virtual {v11, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    .line 363
    .local v0, "builder":Landroid/view/textclassifier/TextClassification$Builder;
    array-length v8, p1

    .line 364
    .local v8, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 365
    aget-object v11, p1, v1

    iget-object v11, v11, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    aget-object v12, p1, v1

    iget v12, v12, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    invoke-virtual {v0, v11, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierImpl;->getHighestScoringType([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;

    move-result-object v9

    .line 369
    .local v9, "type":Ljava/lang/String;
    invoke-static {v9}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->getLogType(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/textclassifier/TextClassification$Builder;->setLogType(I)Landroid/view/textclassifier/TextClassification$Builder;

    .line 371
    iget-object v11, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v9, v12}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 374
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 375
    iget-object v11, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 376
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v6, v3, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 381
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    if-eqz v7, :cond_1

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_1

    .line 382
    invoke-virtual {v0, v3}, Landroid/view/textclassifier/TextClassification$Builder;->setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v11

    .line 384
    iget-object v12, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 383
    invoke-static {v12, v3}, Landroid/view/textclassifier/TextClassification;->createStartActivityOnClickListener(Landroid/content/Context;Landroid/content/Intent;)Landroid/view/View$OnClickListener;

    move-result-object v12

    .line 382
    invoke-virtual {v11, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 386
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 387
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v11, "android"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 389
    iget-object v10, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-static {v10, v9}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->getLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 405
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getVersionInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/textclassifier/TextClassification$Builder;->setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v10

    return-object v10

    .line 378
    :cond_2
    const/4 v6, 0x0

    .line 379
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 392
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v5, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 393
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 394
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_4

    .line 395
    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 397
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassification$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 398
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 399
    .local v4, "label":Ljava/lang/CharSequence;
    if-nez v4, :cond_5

    .line 400
    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 402
    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_6
    invoke-virtual {v0, v10}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    goto :goto_2
.end method

.method private destroySmartSelectionIfExistsLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    invoke-virtual {v0}, Landroid/view/textclassifier/SmartSelection;->close()V

    .line 298
    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    .line 300
    :cond_0
    return-void
.end method

.method private findBestSupportedLocaleLocked(Landroid/os/LocaleList;)Ljava/util/Locale;
    .locals 6
    .param p1, "localeList"    # Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "languages":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, "languageRangeList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getFactoryModelFilePathsLocked()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 313
    .local v2, "supportedLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getUpdatedModelLocale()Ljava/util/Locale;

    move-result-object v3

    .line 314
    .local v3, "updatedModelLocale":Ljava/util/Locale;
    if-eqz v3, :cond_0

    .line 315
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Locale;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object v4

    return-object v4

    .line 308
    .end local v0    # "languageRangeList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .end local v1    # "languages":Ljava/lang/String;
    .end local v2    # "supportedLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v3    # "updatedModelLocale":Ljava/util/Locale;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "languages":Ljava/lang/String;
    goto :goto_0
.end method

.method private getFactoryModelFilePathsLocked()Ljava/util/Map;
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v10, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModelFilePaths:Ljava/util/Map;

    if-nez v10, :cond_2

    .line 323
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v5, "modelFilePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    new-instance v8, Ljava/io/File;

    const-string/jumbo v10, "/etc/textclassifier/"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v8, "modelsDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 326
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 327
    .local v7, "models":[Ljava/io/File;
    const-string/jumbo v10, "textclassifier\\.smartselection\\.(.*)\\.model"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 328
    .local v6, "modelFilenamePattern":Ljava/util/regex/Pattern;
    array-length v9, v7

    .line 329
    .local v9, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_1

    .line 330
    aget-object v4, v7, v0

    .line 331
    .local v4, "modelFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 332
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 333
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "language":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 335
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "i":I
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "modelFile":Ljava/io/File;
    .end local v6    # "modelFilenamePattern":Ljava/util/regex/Pattern;
    .end local v7    # "models":[Ljava/io/File;
    .end local v9    # "size":I
    :cond_1
    iput-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModelFilePaths:Ljava/util/Map;

    .line 341
    .end local v5    # "modelFilePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    .end local v8    # "modelsDir":Ljava/io/File;
    :cond_2
    iget-object v10, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModelFilePaths:Ljava/util/Map;

    return-object v10
.end method

.method private getFdLocked(Ljava/util/Locale;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 236
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/misc/textclassifier/textclassifier.smartselection.model"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x10000000

    .line 235
    invoke-static {v8, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 242
    :goto_0
    :try_start_1
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getFactoryModelFilePathsLocked()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    .local v2, "factoryModelFilePath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 245
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x10000000

    .line 244
    invoke-static {v8, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 253
    .end local v2    # "factoryModelFilePath":Ljava/lang/String;
    :goto_1
    if-nez v5, :cond_2

    .line 254
    if-eqz v1, :cond_1

    .line 255
    return-object v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    .local v5, "updateFd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 247
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "updateFd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "factoryModelFilePath":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "factoryFd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 249
    .end local v1    # "factoryFd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "factoryModelFilePath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 250
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "factoryFd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 257
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "factoryFd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    new-instance v8, Ljava/io/FileNotFoundException;

    .line 258
    const-string/jumbo v9, "No model file found for %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 257
    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 262
    :cond_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v6

    .line 264
    .local v6, "updateFdInt":I
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 265
    invoke-static {v6}, Landroid/view/textclassifier/SmartSelection;->getLanguage(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 263
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 266
    .local v4, "localeMatches":Z
    if-nez v1, :cond_4

    .line 267
    if-eqz v4, :cond_3

    .line 268
    return-object v5

    .line 270
    :cond_3
    invoke-static {v5}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 271
    new-instance v8, Ljava/io/FileNotFoundException;

    .line 272
    const-string/jumbo v9, "No model file found for %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 271
    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 276
    :cond_4
    if-nez v4, :cond_5

    .line 277
    invoke-static {v5}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 278
    return-object v1

    .line 281
    :cond_5
    invoke-static {v6}, Landroid/view/textclassifier/SmartSelection;->getVersion(I)I

    move-result v7

    .line 282
    .local v7, "updateVersion":I
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    invoke-static {v8}, Landroid/view/textclassifier/SmartSelection;->getVersion(I)I

    move-result v3

    .line 283
    .local v3, "factoryVersion":I
    if-le v7, v3, :cond_6

    .line 284
    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 285
    iput v7, p0, Landroid/view/textclassifier/TextClassifierImpl;->mVersion:I

    .line 286
    return-object v5

    .line 288
    :cond_6
    invoke-static {v5}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 289
    iput v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mVersion:I

    .line 290
    return-object v1
.end method

.method private static getHighestScoringType([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;
    .locals 7
    .param p0, "types"    # [Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    .prologue
    const/4 v6, 0x0

    .line 422
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 423
    const-string/jumbo v4, ""

    return-object v4

    .line 426
    :cond_0
    aget-object v4, p0, v6

    iget-object v3, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    .line 427
    .local v3, "type":Ljava/lang/String;
    aget-object v4, p0, v6

    iget v0, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    .line 428
    .local v0, "highestScore":F
    array-length v2, p0

    .line 429
    .local v2, "size":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 430
    aget-object v4, p0, v1

    iget v4, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_1

    .line 431
    aget-object v4, p0, v1

    iget-object v3, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    .line 432
    aget-object v4, p0, v1

    iget v0, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    .line 429
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_2
    return-object v3
.end method

.method private static getHintFlags(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "flag":I
    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 411
    .local v1, "subText":Ljava/lang/CharSequence;
    sget-object v2, Landroid/util/Patterns;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    const/4 v0, 0x2

    .line 414
    :cond_0
    sget-object v2, Landroid/util/Patterns;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    sget-object v2, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    invoke-interface {v2, p0, p1, p2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v2

    .line 414
    if-eqz v2, :cond_1

    .line 416
    or-int/lit8 v0, v0, 0x1

    .line 418
    :cond_1
    return v0
.end method

.method private getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;
    .locals 5
    .param p1, "localeList"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 205
    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p1

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierImpl;->findBestSupportedLocaleLocked(Landroid/os/LocaleList;)Ljava/util/Locale;

    move-result-object v1

    .line 207
    .local v1, "locale":Ljava/util/Locale;
    if-nez v1, :cond_1

    .line 208
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string/jumbo v4, "No file for null locale"

    invoke-direct {v2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v1    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 210
    .restart local v1    # "locale":Ljava/util/Locale;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 211
    :cond_2
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->destroySmartSelectionIfExistsLocked()V

    .line 212
    invoke-direct {p0, v1}, Landroid/view/textclassifier/TextClassifierImpl;->getFdLocked(Ljava/util/Locale;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 213
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/view/textclassifier/SmartSelection;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/view/textclassifier/SmartSelection;-><init>(I)V

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    .line 214
    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 215
    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    .line 217
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method private getUpdatedModelLocale()Ljava/util/Locale;
    .locals 5

    .prologue
    .line 348
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/misc/textclassifier/textclassifier.smartselection.model"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    .line 347
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 350
    .local v2, "updateFd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3}, Landroid/view/textclassifier/SmartSelection;->getLanguage(I)Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 351
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    return-object v1

    .line 353
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v2    # "updateFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    return-object v3
.end method

.method private getVersionInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 223
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 225
    const-string/jumbo v0, "%s_v%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 227
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static validateInput(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 454
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 455
    if-ltz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 456
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 457
    if-le p2, p1, :cond_3

    :goto_3
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 458
    return-void

    :cond_0
    move v0, v2

    .line 454
    goto :goto_0

    :cond_1
    move v0, v2

    .line 455
    goto :goto_1

    :cond_2
    move v0, v2

    .line 456
    goto :goto_2

    :cond_3
    move v1, v2

    .line 457
    goto :goto_3
.end method


# virtual methods
.method public classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "defaultLocales"    # Landroid/os/LocaleList;

    .prologue
    .line 149
    invoke-static {p1, p2, p3}, Landroid/view/textclassifier/TextClassifierImpl;->validateInput(Ljava/lang/CharSequence;II)V

    .line 151
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 152
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "string":Ljava/lang/String;
    invoke-direct {p0, p4}, Landroid/view/textclassifier/TextClassifierImpl;->getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;

    move-result-object v4

    .line 155
    invoke-static {v2, p2, p3}, Landroid/view/textclassifier/TextClassifierImpl;->getHintFlags(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 153
    invoke-virtual {v4, v2, p2, p3, v5}, Landroid/view/textclassifier/SmartSelection;->classifyText(Ljava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    move-result-object v1

    .line 156
    .local v1, "results":[Landroid/view/textclassifier/SmartSelection$ClassificationResult;
    array-length v4, v1

    if-lez v4, :cond_0

    .line 159
    invoke-virtual {v2, p2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 158
    invoke-direct {p0, v1, v4}, Landroid/view/textclassifier/TextClassifierImpl;->createClassificationResult([Landroid/view/textclassifier/SmartSelection$ClassificationResult;Ljava/lang/CharSequence;)Landroid/view/textclassifier/TextClassification;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    .local v0, "classificationResult":Landroid/view/textclassifier/TextClassification;
    return-object v0

    .line 163
    .end local v0    # "classificationResult":Landroid/view/textclassifier/TextClassification;
    .end local v1    # "results":[Landroid/view/textclassifier/SmartSelection$ClassificationResult;
    .end local v2    # "string":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 165
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "TextClassifierImpl"

    const-string/jumbo v5, "Error getting assist info."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    sget-object v4, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v4, p1, p2, p3, p4}, Landroid/view/textclassifier/TextClassifier;->classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;

    move-result-object v4

    return-object v4
.end method

.method public getLinks(Ljava/lang/CharSequence;ILandroid/os/LocaleList;)Landroid/view/textclassifier/LinksInfo;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "linkMask"    # I
    .param p3, "defaultLocales"    # Landroid/os/LocaleList;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 178
    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl;->getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v1, v2, v3, p2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->create(Landroid/content/Context;Landroid/view/textclassifier/SmartSelection;Ljava/lang/String;I)Landroid/view/textclassifier/LinksInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 175
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "TextClassifierImpl"

    const-string/jumbo v2, "Error getting links info."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/textclassifier/TextClassifier;->getLinks(Ljava/lang/CharSequence;ILandroid/os/LocaleList;)Landroid/view/textclassifier/LinksInfo;

    move-result-object v1

    return-object v1
.end method

.method public getSettings()Landroid/view/textclassifier/TextClassifierConstants;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassifierConstants;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "text_classifier_constants"

    .line 197
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierConstants;->loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierConstants;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassifierConstants;

    .line 200
    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassifierConstants;

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string/jumbo v0, "TextClassifierImpl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 192
    :cond_0
    return-void
.end method

.method public suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
    .locals 16
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStartIndex"    # I
    .param p3, "selectionEndIndex"    # I
    .param p4, "defaultLocales"    # Landroid/os/LocaleList;

    .prologue
    .line 104
    invoke-static/range {p1 .. p3}, Landroid/view/textclassifier/TextClassifierImpl;->validateInput(Ljava/lang/CharSequence;II)V

    .line 106
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextClassifierImpl;->getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;

    move-result-object v8

    .line 108
    .local v8, "smartSelection":Landroid/view/textclassifier/SmartSelection;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "string":Ljava/lang/String;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v8, v11, v0, v1}, Landroid/view/textclassifier/SmartSelection;->suggest(Ljava/lang/String;II)[I

    move-result-object v10

    .line 111
    .local v10, "startEnd":[I
    const/4 v14, 0x0

    aget v9, v10, v14

    .line 112
    .local v9, "start":I
    const/4 v14, 0x1

    aget v4, v10, v14

    .line 113
    .local v4, "end":I
    if-gt v9, v4, :cond_1

    .line 114
    if-ltz v9, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v4, v14, :cond_1

    .line 115
    move/from16 v0, p2

    if-gt v9, v0, :cond_1

    move/from16 v0, p3

    if-lt v4, v0, :cond_1

    .line 116
    new-instance v13, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-direct {v13, v9, v4}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    .line 120
    .local v13, "tsBuilder":Landroid/view/textclassifier/TextSelection$Builder;
    invoke-static {v11, v9, v4}, Landroid/view/textclassifier/TextClassifierImpl;->getHintFlags(Ljava/lang/CharSequence;II)I

    move-result v14

    .line 118
    invoke-virtual {v8, v11, v9, v4, v14}, Landroid/view/textclassifier/SmartSelection;->classifyText(Ljava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    move-result-object v6

    .line 121
    .local v6, "results":[Landroid/view/textclassifier/SmartSelection$ClassificationResult;
    array-length v7, v6

    .line 122
    .local v7, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 123
    aget-object v14, v6, v5

    iget-object v14, v14, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    aget-object v15, v6, v5

    iget v15, v15, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    invoke-virtual {v13, v14, v15}, Landroid/view/textclassifier/TextSelection$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;

    .line 122
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    :cond_0
    const-string/jumbo v14, "TextClassifierImpl"

    .line 125
    invoke-virtual {v13, v14}, Landroid/view/textclassifier/TextSelection$Builder;->setLogSource(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v14

    .line 127
    invoke-direct/range {p0 .. p0}, Landroid/view/textclassifier/TextClassifierImpl;->getVersionInfo()Ljava/lang/String;

    move-result-object v15

    .line 125
    invoke-virtual {v14, v15}, Landroid/view/textclassifier/TextSelection$Builder;->setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v14

    return-object v14

    .line 131
    .end local v5    # "i":I
    .end local v6    # "results":[Landroid/view/textclassifier/SmartSelection$ClassificationResult;
    .end local v7    # "size":I
    .end local v13    # "tsBuilder":Landroid/view/textclassifier/TextSelection$Builder;
    :cond_1
    const-string/jumbo v14, "TextClassifierImpl"

    const-string/jumbo v15, "Got bad indices for input text. Ignoring result."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v4    # "end":I
    .end local v8    # "smartSelection":Landroid/view/textclassifier/SmartSelection;
    .end local v9    # "start":I
    .end local v10    # "startEnd":[I
    .end local v11    # "string":Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v14, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v14, v0, v1, v2, v3}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;

    move-result-object v14

    return-object v14

    .line 134
    :catch_0
    move-exception v12

    .line 136
    .local v12, "t":Ljava/lang/Throwable;
    const-string/jumbo v14, "TextClassifierImpl"

    .line 137
    const-string/jumbo v15, "Error suggesting selection for text. No changes to selection suggested."

    .line 136
    invoke-static {v14, v15, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
