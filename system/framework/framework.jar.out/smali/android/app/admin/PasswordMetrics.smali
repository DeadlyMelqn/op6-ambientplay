.class public Landroid/app/admin/PasswordMetrics;
.super Ljava/lang/Object;
.source "PasswordMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PasswordMetrics$1;
    }
.end annotation


# static fields
.field private static final CHAR_DIGIT:I = 0x2

.field private static final CHAR_LOWER_CASE:I = 0x0

.field private static final CHAR_SYMBOL:I = 0x3

.field private static final CHAR_UPPER_CASE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3


# instance fields
.field public length:I

.field public letters:I

.field public lowerCase:I

.field public nonLetter:I

.field public numeric:I

.field public quality:I

.field public symbols:I

.field public upperCase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Landroid/app/admin/PasswordMetrics$1;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics$1;-><init>()V

    .line 99
    sput-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 39
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 40
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 41
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 42
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 43
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 44
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 45
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 47
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "quality"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 39
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 40
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 41
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 42
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 43
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 44
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 45
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 50
    iput p1, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 51
    iput p2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 52
    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "upperCase"    # I
    .param p5, "lowerCase"    # I
    .param p6, "numeric"    # I
    .param p7, "symbols"    # I
    .param p8, "nonLetter"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    .line 57
    iput p3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 58
    iput p4, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 59
    iput p5, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 60
    iput p6, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 61
    iput p7, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 62
    iput p8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 39
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 40
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 41
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 42
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 43
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 44
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 45
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/PasswordMetrics;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/app/admin/PasswordMetrics;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/admin/PasswordMetrics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static categoryChar(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 235
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 236
    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 237
    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    .line 238
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public static computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;
    .locals 13
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "letters":I
    const/4 v4, 0x0

    .line 114
    .local v4, "upperCase":I
    const/4 v5, 0x0

    .line 115
    .local v5, "lowerCase":I
    const/4 v6, 0x0

    .line 116
    .local v6, "numeric":I
    const/4 v7, 0x0

    .line 117
    .local v7, "symbols":I
    const/4 v8, 0x0

    .line 118
    .local v8, "nonLetter":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 119
    .local v2, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v2, :cond_0

    .line 120
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 122
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    .line 123
    add-int/lit8 v5, v5, 0x1

    .line 124
    goto :goto_1

    .line 126
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 128
    goto :goto_1

    .line 130
    :pswitch_2
    add-int/lit8 v6, v6, 0x1

    .line 131
    add-int/lit8 v8, v8, 0x1

    .line 132
    goto :goto_1

    .line 134
    :pswitch_3
    add-int/lit8 v7, v7, 0x1

    .line 135
    add-int/lit8 v8, v8, 0x1

    .line 136
    goto :goto_1

    .line 141
    :cond_0
    if-lez v6, :cond_1

    const/4 v10, 0x1

    .line 142
    .local v10, "hasNumeric":Z
    :goto_2
    add-int v0, v3, v7

    if-lez v0, :cond_2

    const/4 v9, 0x1

    .line 144
    .local v9, "hasNonNumeric":Z
    :goto_3
    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    .line 145
    const/high16 v1, 0x50000

    .line 156
    .local v1, "quality":I
    :goto_4
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct/range {v0 .. v8}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIII)V

    return-object v0

    .line 141
    .end local v1    # "quality":I
    .end local v9    # "hasNonNumeric":Z
    .end local v10    # "hasNumeric":Z
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "hasNumeric":Z
    goto :goto_2

    .line 142
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "hasNonNumeric":Z
    goto :goto_3

    .line 146
    :cond_3
    if-eqz v9, :cond_4

    .line 147
    const/high16 v1, 0x40000

    .restart local v1    # "quality":I
    goto :goto_4

    .line 148
    .end local v1    # "quality":I
    :cond_4
    if-eqz v10, :cond_6

    .line 149
    invoke-static {p0}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence(Ljava/lang/String;)I

    move-result v0

    const/4 v12, 0x3

    if-le v0, v12, :cond_5

    .line 150
    const/high16 v1, 0x20000

    .restart local v1    # "quality":I
    goto :goto_4

    .line 151
    .end local v1    # "quality":I
    :cond_5
    const/high16 v1, 0x30000

    .restart local v1    # "quality":I
    goto :goto_4

    .line 153
    .end local v1    # "quality":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "quality":I
    goto :goto_4

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static maxDiffCategory(I)I
    .locals 1
    .param p0, "category"    # I

    .prologue
    .line 242
    packed-switch p0, :pswitch_data_0

    .line 249
    const/4 v0, 0x0

    return v0

    .line 245
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 247
    :pswitch_1
    const/16 v0, 0xa

    return v0

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 12
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    return v11

    .line 195
    :cond_0
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 196
    .local v8, "previousChar":C
    invoke-static {v8}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v0

    .line 197
    .local v0, "category":I
    const/4 v5, 0x0

    .line 198
    .local v5, "diff":I
    const/4 v6, 0x0

    .line 199
    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    .line 200
    .local v7, "maxLength":I
    const/4 v9, 0x0

    .line 201
    .local v9, "startSequence":I
    const/4 v2, 0x1

    .local v2, "current":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 202
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 203
    .local v3, "currentChar":C
    invoke-static {v3}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v1

    .line 204
    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    .line 205
    .local v4, "currentDiff":I
    if-ne v1, v0, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2

    .line 206
    :cond_1
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 207
    move v9, v2

    .line 208
    const/4 v6, 0x0

    .line 209
    move v0, v1

    .line 219
    :goto_1
    move v8, v3

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_2
    if-eqz v6, :cond_3

    if-eq v4, v5, :cond_3

    .line 213
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 214
    add-int/lit8 v9, v2, -0x1

    .line 216
    :cond_3
    move v5, v4

    .line 217
    const/4 v6, 0x1

    goto :goto_1

    .line 221
    .end local v1    # "categoryCurrent":I
    .end local v3    # "currentChar":C
    .end local v4    # "currentDiff":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 222
    return v7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 162
    instance-of v2, p1, Landroid/app/admin/PasswordMetrics;

    if-nez v2, :cond_0

    .line 163
    return v1

    :cond_0
    move-object v0, p1

    .line 165
    check-cast v0, Landroid/app/admin/PasswordMetrics;

    .line 166
    .local v0, "o":Landroid/app/admin/PasswordMetrics;
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    if-ne v2, v3, :cond_1

    .line 167
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->length:I

    if-ne v2, v3, :cond_1

    .line 168
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ne v2, v3, :cond_1

    .line 169
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ne v2, v3, :cond_1

    .line 170
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ne v2, v3, :cond_1

    .line 171
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ne v2, v3, :cond_1

    .line 172
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ne v2, v3, :cond_1

    .line 173
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 166
    :cond_1
    return v1
.end method

.method public isDefault()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    iget v1, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    if-nez v1, :cond_0

    .line 78
    iget v1, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-nez v1, :cond_0

    .line 79
    iget v1, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 77
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 89
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method
