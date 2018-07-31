.class final Landroid/service/autofill/OptionalValidators;
.super Landroid/service/autofill/InternalValidator;
.source "OptionalValidators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/OptionalValidators$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/autofill/OptionalValidators;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValidators:[Landroid/service/autofill/InternalValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Landroid/service/autofill/OptionalValidators$1;

    invoke-direct {v0}, Landroid/service/autofill/OptionalValidators$1;-><init>()V

    .line 78
    sput-object v0, Landroid/service/autofill/OptionalValidators;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method constructor <init>([Landroid/service/autofill/InternalValidator;)V
    .locals 1
    .param p1, "validators"    # [Landroid/service/autofill/InternalValidator;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/service/autofill/InternalValidator;-><init>()V

    .line 40
    const-string/jumbo v0, "validators"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/autofill/InternalValidator;

    iput-object v0, p0, Landroid/service/autofill/OptionalValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isValid(Landroid/service/autofill/ValueFinder;)Z
    .locals 6
    .param p1, "finder"    # Landroid/service/autofill/ValueFinder;

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v4, p0, Landroid/service/autofill/OptionalValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 46
    .local v1, "validator":Landroid/service/autofill/InternalValidator;
    invoke-virtual {v1, p1}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v0

    .line 47
    .local v0, "valid":Z
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    return v2

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "valid":Z
    .end local v1    # "validator":Landroid/service/autofill/InternalValidator;
    :cond_1
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/service/autofill/InternalValidator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OptionalValidators: [validators="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/OptionalValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "]"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget-object v0, p0, Landroid/service/autofill/OptionalValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 76
    return-void
.end method
