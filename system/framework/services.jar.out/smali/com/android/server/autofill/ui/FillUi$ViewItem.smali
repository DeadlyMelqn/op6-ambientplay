.class Lcom/android/server/autofill/ui/FillUi$ViewItem;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewItem"
.end annotation


# instance fields
.field private final mDataset:Landroid/service/autofill/Dataset;

.field private final mValue:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/server/autofill/ui/FillUi$ViewItem;)Landroid/service/autofill/Dataset;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/ui/FillUi$ViewItem;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->mDataset:Landroid/service/autofill/Dataset;

    return-object v0
.end method

.method constructor <init>(Landroid/service/autofill/Dataset;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->mDataset:Landroid/service/autofill/Dataset;

    .line 337
    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->mValue:Ljava/lang/String;

    .line 338
    iput-object p3, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->mView:Landroid/view/View;

    .line 339
    return-void
.end method


# virtual methods
.method public getDataset()Landroid/service/autofill/Dataset;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->mDataset:Landroid/service/autofill/Dataset;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->mValue:Ljava/lang/String;

    return-object v0
.end method
