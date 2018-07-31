.class public Landroid/text/AutoText;
.super Ljava/lang/Object;
.source "AutoText.java"


# static fields
.field private static final DEFAULT:I = 0x3801

.field private static final INCREMENT:I = 0x400

.field private static final RIGHT:I = 0x2454

.field private static final TRIE_C:I = 0x0

.field private static final TRIE_CHILD:I = 0x2

.field private static final TRIE_NEXT:I = 0x3

.field private static final TRIE_NULL:C = '\uffff'

.field private static final TRIE_OFF:I = 0x1

.field private static final TRIE_ROOT:I = 0x0

.field private static final TRIE_SIZEOF:I = 0x4

.field private static sInstance:Landroid/text/AutoText;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mSize:I

.field private mText:Ljava/lang/String;

.field private mTrie:[C

.field private mTrieUsed:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/text/AutoText;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    .line 77
    invoke-direct {p0, p1}, Landroid/text/AutoText;->init(Landroid/content/res/Resources;)V

    .line 78
    return-void
.end method

.method private add(Ljava/lang/String;C)V
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "off"    # C

    .prologue
    const v8, 0xffff

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 213
    .local v5, "slen":I
    const/4 v2, 0x0

    .line 215
    .local v2, "herep":I
    iget v6, p0, Landroid/text/AutoText;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/text/AutoText;->mSize:I

    .line 217
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_5

    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 219
    .local v0, "c":C
    const/4 v1, 0x0

    .line 221
    .local v1, "found":Z
    :goto_1
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    if-eq v6, v8, :cond_1

    .line 223
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x0

    aget-char v6, v6, v7

    if-ne v0, v6, :cond_2

    .line 227
    add-int/lit8 v6, v5, -0x1

    if-ne v3, v6, :cond_0

    .line 228
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x1

    aput-char p2, v6, v7

    .line 229
    return-void

    .line 235
    :cond_0
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    add-int/lit8 v2, v6, 0x2

    .line 236
    const/4 v1, 0x1

    .line 241
    :cond_1
    if-nez v1, :cond_4

    .line 244
    invoke-direct {p0}, Landroid/text/AutoText;->newTrieNode()C

    move-result v4

    .line 245
    .local v4, "node":C
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aput-char v4, v6, v2

    .line 247
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x0

    aput-char v0, v6, v7

    .line 248
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x1

    aput-char v8, v6, v7

    .line 249
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x3

    aput-char v8, v6, v7

    .line 250
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x2

    aput-char v8, v6, v7

    .line 254
    add-int/lit8 v6, v5, -0x1

    if-ne v3, v6, :cond_3

    .line 255
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x1

    aput-char p2, v6, v7

    .line 256
    return-void

    .line 222
    .end local v4    # "node":C
    :cond_2
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    add-int/lit8 v2, v6, 0x3

    goto :goto_1

    .line 261
    .restart local v4    # "node":C
    :cond_3
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    add-int/lit8 v2, v6, 0x2

    .line 217
    .end local v4    # "node":C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_5
    return-void
.end method

.method public static get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-static {p3}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Landroid/text/AutoText;->lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Landroid/view/View;)Landroid/text/AutoText;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 88
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 91
    .local v1, "locale":Ljava/util/Locale;
    sget-object v4, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 92
    :try_start_0
    sget-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 94
    .local v0, "instance":Landroid/text/AutoText;
    iget-object v3, v0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    new-instance v0, Landroid/text/AutoText;

    .end local v0    # "instance":Landroid/text/AutoText;
    invoke-direct {v0, v2}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    .line 96
    .restart local v0    # "instance":Landroid/text/AutoText;
    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 100
    return-object v0

    .line 91
    .end local v0    # "instance":Landroid/text/AutoText;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getSize()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/text/AutoText;->mSize:I

    return v0
.end method

.method public static getSize(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-static {p0}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0}, Landroid/text/AutoText;->getSize()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 13
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 161
    const v10, 0x1170002

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 163
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x2454

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    .local v8, "right":Ljava/lang/StringBuilder;
    const/16 v10, 0x3801

    new-array v10, v10, [C

    iput-object v10, p0, Landroid/text/AutoText;->mTrie:[C

    .line 165
    iget-object v10, p0, Landroid/text/AutoText;->mTrie:[C

    const v11, 0xffff

    const/4 v12, 0x0

    aput-char v11, v10, v12

    .line 166
    const/4 v10, 0x1

    iput-char v10, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 169
    :try_start_0
    const-string/jumbo v10, "words"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v4, ""

    .line 171
    .local v4, "odest":Ljava/lang/String;
    const/4 v6, 0x0

    .line 174
    .local v6, "ooff":C
    :cond_0
    :goto_0
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 176
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "element":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v10, "word"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 208
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    .line 209
    return-void

    .line 181
    :cond_2
    :try_start_1
    const-string/jumbo v10, "src"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, "src":Ljava/lang/String;
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 183
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "dest":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 171
    const/4 v5, 0x0

    .line 194
    :goto_1
    invoke-direct {p0, v9, v5}, Landroid/text/AutoText;->add(Ljava/lang/String;C)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    .end local v0    # "dest":Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "odest":Ljava/lang/String;
    .end local v6    # "ooff":C
    .end local v9    # "src":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v10

    .line 205
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 204
    throw v10

    .line 189
    .restart local v0    # "dest":Ljava/lang/String;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v4    # "odest":Ljava/lang/String;
    .restart local v6    # "ooff":C
    .restart local v9    # "src":Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    int-to-char v5, v10

    .line 190
    .local v5, "off":C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 202
    .end local v0    # "dest":Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "odest":Ljava/lang/String;
    .end local v5    # "off":C
    .end local v6    # "ooff":C
    .end local v9    # "src":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 9
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v8, 0x0

    const v7, 0xffff

    .line 132
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v6, 0x0

    aget-char v1, v5, v6

    .line 134
    .local v1, "here":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_4

    .line 135
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 137
    .local v0, "c":C
    :goto_1
    if-eq v1, v7, :cond_1

    .line 138
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x0

    aget-char v5, v5, v6

    if-ne v0, v5, :cond_2

    .line 139
    add-int/lit8 v5, p3, -0x1

    if-ne v2, v5, :cond_0

    .line 140
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x1

    aget-char v5, v5, v6

    if-eq v5, v7, :cond_0

    .line 141
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x1

    aget-char v4, v5, v6

    .line 142
    .local v4, "off":I
    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 144
    .local v3, "len":I
    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 147
    .end local v3    # "len":I
    .end local v4    # "off":I
    :cond_0
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x2

    aget-char v1, v5, v6

    .line 152
    :cond_1
    if-ne v1, v7, :cond_3

    .line 153
    return-object v8

    .line 137
    :cond_2
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x3

    aget-char v1, v5, v6

    goto :goto_1

    .line 134
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "c":C
    :cond_4
    return-object v8
.end method

.method private newTrieNode()C
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 267
    iget-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 268
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v2, v2

    add-int/lit16 v2, v2, 0x400

    new-array v0, v2, [C

    .line 269
    .local v0, "copy":[C
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v3, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 270
    iput-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    .line 273
    .end local v0    # "copy":[C
    :cond_0
    iget-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 274
    .local v1, "ret":C
    iget-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    iput-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 276
    return v1
.end method
