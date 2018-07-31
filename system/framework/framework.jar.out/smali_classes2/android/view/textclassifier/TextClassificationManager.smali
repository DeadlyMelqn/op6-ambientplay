.class public final Landroid/view/textclassifier/TextClassificationManager;
.super Ljava/lang/Object;
.source "TextClassificationManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private final mTextClassifierLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    .line 38
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/view/textclassifier/TextClassifierImpl;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/textclassifier/TextClassifierImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 49
    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2
    .param p1, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 62
    return-void

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
