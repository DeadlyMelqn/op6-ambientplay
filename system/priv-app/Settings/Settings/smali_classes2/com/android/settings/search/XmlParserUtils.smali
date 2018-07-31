.class public Lcom/android/settings/search/XmlParserUtils;
.super Ljava/lang/Object;
.source "XmlParserUtils.java"


# static fields
.field private static final ENTRIES_SEPARATOR:Ljava/lang/String; = "|"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 92
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public static getDataChildFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    .line 87
    const/16 v1, 0xd

    .line 86
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/search/XmlParserUtils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    .line 67
    const/4 v1, 0x0

    .line 65
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/search/XmlParserUtils;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 99
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 101
    .local v5, "tv":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 102
    .local v1, "data":[Ljava/lang/String;
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 103
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 107
    .end local v1    # "data":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 108
    .local v0, "count":I
    :goto_0
    if-nez v0, :cond_2

    .line 109
    return-object v8

    .line 107
    .end local v0    # "count":I
    :cond_1
    array-length v0, v1

    .restart local v0    # "count":I
    goto :goto_0

    .line 111
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 113
    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getDataIcon(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 76
    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    .line 75
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 78
    .local v0, "dataIcon":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return v0
.end method

.method public static getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    .line 37
    const/4 v1, 0x6

    .line 35
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/search/XmlParserUtils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/16 v1, 0x22

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/search/XmlParserUtils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    .line 49
    const/4 v1, 0x7

    .line 47
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/search/XmlParserUtils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    .line 61
    const/4 v1, 0x1

    .line 59
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/search/XmlParserUtils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    .line 55
    const/4 v1, 0x0

    .line 53
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/search/XmlParserUtils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    .line 43
    const/4 v1, 0x4

    .line 41
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/search/XmlParserUtils;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
