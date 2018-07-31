.class public Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntInOutMatcher"
.end annotation


# static fields
.field private static final OUT_PREFIX:C = '!'

.field private static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field private final mDefaultIsIn:Z

.field private final mIsIn:Landroid/util/SparseBooleanArray;

.field final mSpec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Spec must not be empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, "defaultIsIn":Z
    const/4 v1, 0x0

    .line 201
    .local v1, "foundWildcard":Z
    iput-object p1, p0, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    .line 202
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    .line 204
    const-string/jumbo v6, ","

    const/4 v8, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    .end local v0    # "defaultIsIn":Z
    :goto_0
    if-ge v6, v9, :cond_8

    aget-object v4, v8, v6

    .line 205
    .local v4, "itemPrefixed":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 206
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, must not have zero-length items: `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 206
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 209
    :cond_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x21

    if-eq v10, v11, :cond_2

    const/4 v2, 0x1

    .line 210
    .local v2, "isIn":Z
    :goto_1
    if-eqz v2, :cond_3

    move-object v3, v4

    .line 212
    .local v3, "item":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 213
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, must not have zero-length items: `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 209
    .end local v2    # "isIn":Z
    .end local v3    # "item":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isIn":Z
    goto :goto_1

    .line 210
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "item":Ljava/lang/String;
    goto :goto_2

    .line 217
    :cond_4
    const-string/jumbo v10, "*"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 218
    if-eqz v1, :cond_5

    .line 219
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, `*` must not appear multiple times in `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 220
    const-string/jumbo v8, "`"

    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 222
    :cond_5
    move v0, v2

    .line 223
    .local v0, "defaultIsIn":Z
    const/4 v1, 0x1

    .line 204
    .end local v0    # "defaultIsIn":Z
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 225
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 226
    .local v5, "key":I
    iget-object v10, p0, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_7

    .line 227
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 228
    const-string/jumbo v8, "` must not appear multiple times in `"

    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 228
    const-string/jumbo v8, "`"

    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 230
    :cond_7
    iget-object v10, p0, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 234
    .end local v2    # "isIn":Z
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "itemPrefixed":Ljava/lang/String;
    .end local v5    # "key":I
    :cond_8
    if-nez v1, :cond_9

    .line 235
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Illegal spec, must specify either * or !*"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 238
    :cond_9
    iput-boolean v0, p0, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mDefaultIsIn:Z

    .line 239
    return-void
.end method


# virtual methods
.method public isIn(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mDefaultIsIn:Z

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method
