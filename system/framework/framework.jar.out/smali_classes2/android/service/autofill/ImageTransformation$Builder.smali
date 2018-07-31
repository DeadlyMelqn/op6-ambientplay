.class public Landroid/service/autofill/ImageTransformation$Builder;
.super Ljava/lang/Object;
.source "ImageTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private final mId:Landroid/view/autofill/AutofillId;

.field private final mOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/service/autofill/ImageTransformation$Builder;)Landroid/view/autofill/AutofillId;
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/ImageTransformation$Builder;

    .prologue
    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/autofill/ImageTransformation$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/ImageTransformation$Builder;

    .prologue
    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "regex"    # Ljava/util/regex/Pattern;
    .param p3, "resId"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    .line 121
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    .line 123
    invoke-virtual {p0, p2, p3}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    .line 124
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "Already called build()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 156
    return-void
.end method


# virtual methods
.method public addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;
    .locals 3
    .param p1, "regex"    # Ljava/util/regex/Pattern;
    .param p2, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Landroid/service/autofill/ImageTransformation$Builder;->throwIfDestroyed()V

    .line 138
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 141
    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p0
.end method

.method public build()Landroid/service/autofill/ImageTransformation;
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/service/autofill/ImageTransformation$Builder;->throwIfDestroyed()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mDestroyed:Z

    .line 151
    new-instance v0, Landroid/service/autofill/ImageTransformation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/ImageTransformation;-><init>(Landroid/service/autofill/ImageTransformation$Builder;Landroid/service/autofill/ImageTransformation;)V

    return-object v0
.end method
