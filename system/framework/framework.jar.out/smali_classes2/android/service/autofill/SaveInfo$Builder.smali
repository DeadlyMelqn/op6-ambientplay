.class public final Landroid/service/autofill/SaveInfo$Builder;
.super Ljava/lang/Object;
.source "SaveInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCustomDescription:Landroid/service/autofill/CustomDescription;

.field private mDescription:Ljava/lang/CharSequence;

.field private mDestroyed:Z

.field private mFlags:I

.field private mNegativeActionListener:Landroid/content/IntentSender;

.field private mNegativeButtonStyle:I

.field private mOptionalIds:[Landroid/view/autofill/AutofillId;

.field private final mRequiredIds:[Landroid/view/autofill/AutofillId;

.field private final mType:I

.field private mValidator:Landroid/service/autofill/InternalValidator;


# direct methods
.method static synthetic -get0(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/CustomDescription;
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/SaveInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/SaveInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/SaveInfo$Builder;

    .prologue
    iget v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    return v0
.end method

.method static synthetic -get3(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/SaveInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method static synthetic -get4(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/SaveInfo$Builder;

    .prologue
    iget v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    return v0
.end method

.method static synthetic -get5(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/SaveInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic -get6(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/SaveInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic -get7(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/SaveInfo$Builder;

    .prologue
    iget v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    return v0
.end method

.method static synthetic -get8(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/InternalValidator;
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/SaveInfo$Builder;

    .prologue
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    .line 348
    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 350
    return-void
.end method

.method public constructor <init>(I[Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "requiredIds"    # [Landroid/view/autofill/AutofillId;

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    .line 328
    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    .line 329
    invoke-direct {p0, p2}, Landroid/service/autofill/SaveInfo$Builder;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 330
    return-void
.end method

.method private assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;
    .locals 7
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 353
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    move v2, v3

    .line 354
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "must have at least one id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 356
    aget-object v1, p1, v0

    .line 357
    .local v1, "id":Landroid/view/autofill/AutofillId;
    if-eqz v1, :cond_1

    move v2, v3

    .line 358
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cannot have null id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_0
    move v2, v4

    .line 353
    goto :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_1
    move v2, v4

    .line 357
    goto :goto_2

    .line 360
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    :cond_2
    return-object p1
.end method

.method private throwIfDestroyed()V
    .locals 2

    .prologue
    .line 549
    iget-boolean v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/service/autofill/SaveInfo;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 540
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 542
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 543
    :goto_0
    const-string/jumbo v2, "must have at least one required or optional id"

    .line 541
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 544
    iput-boolean v1, p0, Landroid/service/autofill/SaveInfo$Builder;->mDestroyed:Z

    .line 545
    new-instance v0, Landroid/service/autofill/SaveInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo;)V

    return-object v0

    :cond_0
    move v0, v1

    .line 542
    goto :goto_0
.end method

.method public setCustomDescription(Landroid/service/autofill/CustomDescription;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 2
    .param p1, "customDescription"    # Landroid/service/autofill/CustomDescription;

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 427
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 428
    :goto_0
    const-string/jumbo v1, "Can call setDescription() or setCustomDescription(), but not both"

    .line 427
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 429
    iput-object p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    .line 430
    return-object p0

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 407
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 408
    :goto_0
    const-string/jumbo v1, "Can call setDescription() or setCustomDescription(), but not both"

    .line 407
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 409
    iput-object p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 410
    return-object p0

    .line 407
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlags(I)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 370
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 372
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    .line 373
    return-object p0
.end method

.method public setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3
    .param p1, "style"    # I
    .param p2, "listener"    # Landroid/content/IntentSender;

    .prologue
    .line 454
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 455
    if-eqz p1, :cond_0

    .line 456
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    .line 460
    iput-object p2, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    .line 461
    return-object p0
.end method

.method public setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .prologue
    .line 388
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 389
    invoke-direct {p0, p1}, Landroid/service/autofill/SaveInfo$Builder;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    .line 390
    return-object p0
.end method

.method public setValidator(Landroid/service/autofill/Validator;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3
    .param p1, "validator"    # Landroid/service/autofill/Validator;

    .prologue
    .line 525
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 526
    instance-of v0, p1, Landroid/service/autofill/InternalValidator;

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not provided by Android System: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 528
    check-cast p1, Landroid/service/autofill/InternalValidator;

    .end local p1    # "validator":Landroid/service/autofill/Validator;
    iput-object p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mValidator:Landroid/service/autofill/InternalValidator;

    .line 529
    return-object p0
.end method
