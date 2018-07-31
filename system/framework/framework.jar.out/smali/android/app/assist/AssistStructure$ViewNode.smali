.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final FLAGS_ACTIVATED:I = 0x2000

.field static final FLAGS_ALL_CONTROL:I = -0x100000

.field static final FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final FLAGS_CHECKABLE:I = 0x100

.field static final FLAGS_CHECKED:I = 0x200

.field static final FLAGS_CLICKABLE:I = 0x400

.field static final FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final FLAGS_DISABLED:I = 0x1

.field static final FLAGS_FOCUSABLE:I = 0x10

.field static final FLAGS_FOCUSED:I = 0x20

.field static final FLAGS_HAS_ALPHA:I = 0x20000000

.field static final FLAGS_HAS_AUTOFILL_DATA:I = -0x80000000

.field static final FLAGS_HAS_CHILDREN:I = 0x100000

.field static final FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final FLAGS_HAS_EXTRAS:I = 0x400000

.field static final FLAGS_HAS_ID:I = 0x200000

.field static final FLAGS_HAS_INPUT_TYPE:I = 0x40000

.field static final FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final FLAGS_HAS_LOCALE_LIST:I = 0x10000

.field static final FLAGS_HAS_MATRIX:I = 0x40000000

.field static final FLAGS_HAS_SCROLL:I = 0x8000000

.field static final FLAGS_HAS_TEXT:I = 0x1000000

.field static final FLAGS_HAS_URL:I = 0x80000

.field static final FLAGS_LONG_CLICKABLE:I = 0x800

.field static final FLAGS_OPAQUE:I = 0x8000

.field static final FLAGS_SELECTED:I = 0x40

.field static final FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final TEXT_STYLE_BOLD:I = 0x1

.field public static final TEXT_STYLE_ITALIC:I = 0x2

.field public static final TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field mAlpha:F

.field mAutofillHints:[Ljava/lang/String;

.field mAutofillId:Landroid/view/autofill/AutofillId;

.field mAutofillOptions:[Ljava/lang/CharSequence;

.field mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

.field mAutofillType:I

.field mAutofillValue:Landroid/view/autofill/AutofillValue;

.field mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field mClassName:Ljava/lang/String;

.field mContentDescription:Ljava/lang/CharSequence;

.field mElevation:F

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mHeight:I

.field mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

.field mId:I

.field mIdEntry:Ljava/lang/String;

.field mIdPackage:Ljava/lang/String;

.field mIdType:Ljava/lang/String;

.field mInputType:I

.field mLocaleList:Landroid/os/LocaleList;

.field mMatrix:Landroid/graphics/Matrix;

.field mSanitized:Z

.field mScrollX:I

.field mScrollY:I

.field mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field mWebDomain:Ljava/lang/String;

.field mWidth:I

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 632
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 684
    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .locals 12
    .param p1, "reader"    # Landroid/app/assist/AssistStructure$ParcelTransferReader;
    .param p2, "nestingLevel"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const/4 v7, -0x1

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 613
    iput v9, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 632
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 687
    const v7, 0x22222222

    invoke-virtual {p1, v7, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v3

    .line 688
    .local v3, "in":Landroid/os/Parcel;
    iget v7, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    .line 689
    iget-object v5, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    .line 690
    .local v5, "preader":Landroid/os/PooledStringReader;
    invoke-virtual {v5}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    .line 691
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 692
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 693
    .local v1, "flags":I
    const/high16 v7, 0x200000

    and-int/2addr v7, v1

    if-eqz v7, :cond_0

    .line 694
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 695
    iget v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eqz v7, :cond_0

    .line 696
    invoke-virtual {v5}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    .line 697
    iget-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 698
    invoke-virtual {v5}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    .line 699
    invoke-virtual {v5}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    .line 704
    :cond_0
    const/high16 v7, -0x80000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_1

    .line 705
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v8, :cond_c

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    .line 706
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 707
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 708
    invoke-virtual {v3}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    .line 709
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillValue;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 710
    invoke-virtual {v3}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    .line 711
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    .line 712
    .local v4, "p":Landroid/os/Parcelable;
    instance-of v7, v4, Landroid/view/ViewStructure$HtmlInfo;

    if-eqz v7, :cond_1

    .line 713
    check-cast v4, Landroid/view/ViewStructure$HtmlInfo;

    .end local v4    # "p":Landroid/os/Parcelable;
    iput-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    .line 716
    :cond_1
    const/high16 v7, 0x4000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_d

    .line 717
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 718
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 719
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 720
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    .line 729
    :goto_1
    const/high16 v7, 0x8000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_2

    .line 730
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    .line 731
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    .line 733
    :cond_2
    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v7, v1

    if-eqz v7, :cond_3

    .line 734
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    .line 735
    iget-object v7, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 736
    iget-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v10, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v7, v10}, Landroid/graphics/Matrix;->setValues([F)V

    .line 738
    :cond_3
    const/high16 v7, 0x10000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_4

    .line 739
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    .line 741
    :cond_4
    const/high16 v7, 0x20000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_5

    .line 742
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 744
    :cond_5
    const/high16 v7, 0x2000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_6

    .line 745
    sget-object v7, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 747
    :cond_6
    const/high16 v7, 0x1000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_7

    .line 748
    new-instance v7, Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v10, 0x800000

    and-int/2addr v10, v1

    if-nez v10, :cond_e

    :goto_2
    invoke-direct {v7, v3, v8}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 750
    :cond_7
    const/high16 v7, 0x40000

    and-int/2addr v7, v1

    if-eqz v7, :cond_8

    .line 751
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    .line 753
    :cond_8
    const/high16 v7, 0x80000

    and-int/2addr v7, v1

    if-eqz v7, :cond_9

    .line 754
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    .line 756
    :cond_9
    const/high16 v7, 0x10000

    and-int/2addr v7, v1

    if-eqz v7, :cond_a

    .line 757
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/LocaleList;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    .line 759
    :cond_a
    const/high16 v7, 0x400000

    and-int/2addr v7, v1

    if-eqz v7, :cond_b

    .line 760
    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    .line 762
    :cond_b
    const/high16 v7, 0x100000

    and-int/2addr v7, v1

    if-eqz v7, :cond_f

    .line 763
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 768
    .local v0, "NCHILDREN":I
    new-array v7, v0, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    .line 769
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_f

    .line 770
    iget-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v8, Landroid/app/assist/AssistStructure$ViewNode;

    add-int/lit8 v9, p2, 0x1

    invoke-direct {v8, p1, v9}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    aput-object v8, v7, v2

    .line 769
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "NCHILDREN":I
    .end local v2    # "i":I
    :cond_c
    move v7, v9

    .line 705
    goto/16 :goto_0

    .line 722
    :cond_d
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 723
    .local v6, "val":I
    and-int/lit16 v7, v6, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 724
    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 725
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 726
    and-int/lit16 v7, v6, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 727
    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    goto/16 :goto_1

    .end local v6    # "val":I
    :cond_e
    move v8, v9

    .line 748
    goto :goto_2

    .line 773
    :cond_f
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 1138
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return v0
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getAutofillOptions()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    .prologue
    .line 977
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1429
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 1126
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1407
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 926
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    return v0
.end method

.method public getIdEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getIdPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    return v0
.end method

.method public getLocaleList()Landroid/os/LocaleList;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 1080
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 1088
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1299
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method public getTextBackgroundColor()I
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTextLineBaselines()[I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1399
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    :cond_0
    return-object v0
.end method

.method public getTextLineCharOffsets()[I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1386
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    :cond_0
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTextSelectionStart()I
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextStyle()I
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    return v0
.end method

.method public getTransformation()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getWebDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1095
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1190
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isActivated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1218
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAssistBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1153
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1197
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1204
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClickable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1167
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isContextClickable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1237
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1160
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1174
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1182
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1230
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOpaque()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1224
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSanitized()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    return v0
.end method

.method public isSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1211
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V
    .locals 0
    .param p1, "overlay"    # Landroid/app/assist/AssistStructure$AutofillOverlay;

    .prologue
    .line 1009
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    .line 1010
    return-void
.end method

.method public updateAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .locals 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .prologue
    .line 1052
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 1053
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-nez v0, :cond_0

    .line 1055
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 1057
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 1059
    :cond_1
    return-void
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[F)I
    .locals 11
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p3, "sanitizeOnWrite"    # Z
    .param p4, "tmpMatrix"    # [F

    .prologue
    const/high16 v10, 0x10000

    const/high16 v9, -0x80000000

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 778
    const/4 v2, 0x1

    .line 780
    .local v2, "writeSensitive":Z
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v7, 0xfffff

    and-int v0, v4, v7

    .line 782
    .local v0, "flags":I
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 783
    const/high16 v4, 0x200000

    or-int/2addr v0, v4

    .line 785
    :cond_0
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    if-eqz v4, :cond_1

    .line 786
    or-int/2addr v0, v9

    .line 788
    :cond_1
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    and-int/lit16 v4, v4, -0x8000

    if-nez v4, :cond_2

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    and-int/lit16 v4, v4, -0x8000

    if-eqz v4, :cond_1f

    .line 790
    :cond_2
    :goto_0
    const/high16 v4, 0x4000000

    or-int/2addr v0, v4

    .line 792
    :cond_3
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    if-nez v4, :cond_4

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    if-eqz v4, :cond_5

    .line 793
    :cond_4
    const/high16 v4, 0x8000000

    or-int/2addr v0, v4

    .line 795
    :cond_5
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_6

    .line 796
    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v0, v4

    .line 798
    :cond_6
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_7

    .line 799
    const/high16 v4, 0x10000000

    or-int/2addr v0, v4

    .line 801
    :cond_7
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_8

    .line 802
    const/high16 v4, 0x20000000

    or-int/2addr v0, v4

    .line 804
    :cond_8
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    .line 805
    const/high16 v4, 0x2000000

    or-int/2addr v0, v4

    .line 807
    :cond_9
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v4, :cond_a

    .line 808
    const/high16 v4, 0x1000000

    or-int/2addr v0, v4

    .line 809
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    move-result v4

    if-nez v4, :cond_a

    .line 810
    const/high16 v4, 0x800000

    or-int/2addr v0, v4

    .line 813
    :cond_a
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    if-eqz v4, :cond_b

    .line 814
    const/high16 v4, 0x40000

    or-int/2addr v0, v4

    .line 816
    :cond_b
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 817
    const/high16 v4, 0x80000

    or-int/2addr v0, v4

    .line 819
    :cond_c
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v4, :cond_d

    .line 820
    or-int/2addr v0, v10

    .line 822
    :cond_d
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_e

    .line 823
    const/high16 v4, 0x400000

    or-int/2addr v0, v4

    .line 825
    :cond_e
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v4, :cond_f

    .line 826
    const/high16 v4, 0x100000

    or-int/2addr v0, v4

    .line 829
    :cond_f
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 831
    move v3, v0

    .line 832
    .local v3, "writtenFlags":I
    and-int v4, v0, v9

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v4, :cond_10

    xor-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_11

    .line 834
    :cond_10
    and-int/lit16 v3, v0, -0x201

    .line 836
    :cond_11
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v4, :cond_12

    .line 837
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-boolean v4, v4, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v4, :cond_22

    .line 838
    or-int/lit8 v3, v3, 0x20

    .line 844
    :cond_12
    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_13

    .line 846
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eqz v4, :cond_13

    .line 848
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 849
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 850
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 851
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 856
    :cond_13
    and-int v4, v0, v9

    if-eqz v4, :cond_14

    .line 857
    iget-boolean v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v4, :cond_23

    xor-int/lit8 v2, p3, 0x1

    .line 858
    .end local v2    # "writeSensitive":Z
    :goto_2
    iget-boolean v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-eqz v4, :cond_24

    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 860
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 863
    if-eqz v2, :cond_25

    .line 864
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 870
    :goto_4
    invoke-virtual {p1, v1, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 871
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 872
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    instance-of v4, v4, Landroid/os/Parcelable;

    if-eqz v4, :cond_27

    .line 873
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 878
    :cond_14
    :goto_5
    const/high16 v4, 0x4000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_28

    .line 879
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    :goto_6
    const/high16 v4, 0x8000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_15

    .line 888
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    :cond_15
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, v0

    if-eqz v4, :cond_16

    .line 892
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 893
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 895
    :cond_16
    const/high16 v4, 0x10000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_17

    .line 896
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 898
    :cond_17
    const/high16 v4, 0x20000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_18

    .line 899
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 901
    :cond_18
    const/high16 v4, 0x2000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_19

    .line 902
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v4, p1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 904
    :cond_19
    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1a

    .line 905
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v7, 0x800000

    and-int/2addr v7, v0

    if-nez v7, :cond_29

    :goto_7
    invoke-virtual {v4, p1, v5, v2}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;ZZ)V

    .line 907
    :cond_1a
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1b

    .line 908
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    :cond_1b
    const/high16 v4, 0x80000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1c

    .line 911
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 913
    :cond_1c
    and-int v4, v0, v10

    if-eqz v4, :cond_1d

    .line 914
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 916
    :cond_1d
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1e

    .line 917
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 919
    :cond_1e
    return v0

    .line 789
    .end local v3    # "writtenFlags":I
    .restart local v2    # "writeSensitive":Z
    :cond_1f
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    and-int/lit16 v4, v4, -0x8000

    if-eqz v4, :cond_20

    move v4, v5

    :goto_8
    iget v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    and-int/lit16 v7, v7, -0x8000

    if-eqz v7, :cond_21

    move v7, v5

    :goto_9
    or-int/2addr v4, v7

    .line 788
    if-eqz v4, :cond_3

    goto/16 :goto_0

    :cond_20
    move v4, v6

    .line 789
    goto :goto_8

    :cond_21
    move v7, v6

    goto :goto_9

    .line 840
    .restart local v3    # "writtenFlags":I
    :cond_22
    and-int/lit8 v3, v3, -0x21

    goto/16 :goto_1

    .line 857
    :cond_23
    const/4 v2, 0x1

    goto/16 :goto_2

    .end local v2    # "writeSensitive":Z
    :cond_24
    move v4, v6

    .line 858
    goto/16 :goto_3

    .line 865
    :cond_25
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v4, v4, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    if-eqz v4, :cond_26

    .line 866
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v1, v4, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .local v1, "sanitizedValue":Landroid/view/autofill/AutofillValue;
    goto/16 :goto_4

    .line 868
    .end local v1    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_26
    const/4 v1, 0x0

    .local v1, "sanitizedValue":Landroid/view/autofill/AutofillValue;
    goto/16 :goto_4

    .line 875
    .end local v1    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_27
    invoke-virtual {p1, v8, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/16 :goto_5

    .line 884
    :cond_28
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    shl-int/lit8 v4, v4, 0x10

    iget v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    or-int/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    shl-int/lit8 v4, v4, 0x10

    iget v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    or-int/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_6

    :cond_29
    move v5, v6

    .line 905
    goto :goto_7
.end method
