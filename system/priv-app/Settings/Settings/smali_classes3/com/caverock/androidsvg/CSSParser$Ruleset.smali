.class public Lcom/caverock/androidsvg/CSSParser$Ruleset;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ruleset"
.end annotation


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    .line 150
    return-void
.end method


# virtual methods
.method public add(Lcom/caverock/androidsvg/CSSParser$Rule;)V
    .locals 4
    .param p1, "rule"    # Lcom/caverock/androidsvg/CSSParser$Rule;

    .prologue
    .line 157
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 159
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 162
    .local v1, "nextRule":Lcom/caverock/androidsvg/CSSParser$Rule;
    iget-object v2, v1, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    iget v2, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    iget-object v3, p1, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    iget v3, v3, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    if-gt v2, v3, :cond_1

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    .end local v0    # "i":I
    .end local v1    # "nextRule":Lcom/caverock/androidsvg/CSSParser$Rule;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    goto :goto_0

    .line 163
    .restart local v0    # "i":I
    .restart local v1    # "nextRule":Lcom/caverock/androidsvg/CSSParser$Rule;
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 164
    return-void

    .line 167
    .end local v1    # "nextRule":Lcom/caverock/androidsvg/CSSParser$Rule;
    :cond_2
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V
    .locals 4
    .param p1, "rules"    # Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .prologue
    .line 172
    iget-object v2, p1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 176
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_3_R":Ljava/lang/Object;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 177
    .local v1, "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v1    # "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    :cond_0
    return-void

    .line 175
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    goto :goto_0

    .line 179
    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 194
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_3_R":Ljava/lang/Object;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 198
    .local v1, "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    invoke-virtual {v1}, Lcom/caverock/androidsvg/CSSParser$Rule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 195
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v1    # "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v3, ""

    return-object v3

    .line 199
    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
