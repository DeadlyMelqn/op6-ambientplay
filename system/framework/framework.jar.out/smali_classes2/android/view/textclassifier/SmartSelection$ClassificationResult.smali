.class final Landroid/view/textclassifier/SmartSelection$ClassificationResult;
.super Ljava/lang/Object;
.source "SmartSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SmartSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClassificationResult"
.end annotation


# instance fields
.field final mCollection:Ljava/lang/String;

.field final mScore:F


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .locals 0
    .param p1, "collection"    # Ljava/lang/String;
    .param p2, "score"    # F

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    .line 114
    iput p2, p0, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    .line 115
    return-void
.end method
