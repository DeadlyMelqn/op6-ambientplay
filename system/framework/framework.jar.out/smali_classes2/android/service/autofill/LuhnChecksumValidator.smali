.class public final Landroid/service/autofill/LuhnChecksumValidator;
.super Landroid/service/autofill/InternalValidator;
.source "LuhnChecksumValidator.java"

# interfaces
.implements Landroid/service/autofill/Validator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/LuhnChecksumValidator$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/autofill/LuhnChecksumValidator;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LuhnChecksumValidator"


# instance fields
.field private final mIds:[Landroid/view/autofill/AutofillId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Landroid/service/autofill/LuhnChecksumValidator$1;

    invoke-direct {v0}, Landroid/service/autofill/LuhnChecksumValidator$1;-><init>()V

    .line 115
    sput-object v0, Landroid/service/autofill/LuhnChecksumValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public varargs constructor <init>([Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/service/autofill/InternalValidator;-><init>()V

    .line 48
    const-string/jumbo v0, "ids"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    .line 49
    return-void
.end method

.method private static isLuhnChecksumValid(Ljava/lang/String;)Z
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x9

    const/4 v5, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, "sum":I
    const/4 v3, 0x0

    .line 60
    .local v3, "isDoubled":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .end local v3    # "isDoubled":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v1, v6, -0x30

    .line 62
    .local v1, "digit":I
    if-ltz v1, :cond_0

    if-le v1, v7, :cond_1

    .line 60
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 68
    :cond_1
    if-eqz v3, :cond_3

    .line 69
    mul-int/lit8 v0, v1, 0x2

    .line 70
    .local v0, "addend":I
    if-le v0, v7, :cond_2

    .line 71
    add-int/lit8 v0, v0, -0x9

    .line 76
    :cond_2
    :goto_2
    add-int/2addr v4, v0

    .line 77
    xor-int/lit8 v3, v3, 0x1

    .local v3, "isDoubled":Z
    goto :goto_1

    .line 74
    .end local v0    # "addend":I
    .end local v3    # "isDoubled":Z
    :cond_3
    move v0, v1

    .restart local v0    # "addend":I
    goto :goto_2

    .line 80
    .end local v0    # "addend":I
    .end local v1    # "digit":I
    :cond_4
    rem-int/lit8 v6, v4, 0xa

    if-nez v6, :cond_5

    const/4 v5, 0x1

    :cond_5
    return v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isValid(Landroid/service/autofill/ValueFinder;)Z
    .locals 7
    .param p1, "finder"    # Landroid/service/autofill/ValueFinder;

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v3, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    array-length v3, v3

    if-nez v3, :cond_1

    :cond_0
    return v4

    .line 89
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v1, "number":Ljava/lang/StringBuilder;
    iget-object v5, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v0, v5, v3

    .line 91
    .local v0, "id":Landroid/view/autofill/AutofillId;
    invoke-interface {p1, v0}, Landroid/service/autofill/ValueFinder;->findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "partialNumber":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 93
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "LuhnChecksumValidator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No partial number for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    return v4

    .line 96
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "id":Landroid/view/autofill/AutofillId;
    .end local v2    # "partialNumber":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/service/autofill/LuhnChecksumValidator;->isLuhnChecksumValid(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 112
    iget-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 113
    return-void
.end method
