.class public Lcom/android/settingslib/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# static fields
.field public static final ENABLE_SPLIT_POLICIES:Z


# instance fields
.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .locals 1
    .param p1, "policyManager"    # Landroid/net/NetworkPolicyManager;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    .line 57
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 58
    return-void
.end method

.method private static buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 14
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 137
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 138
    invoke-static {}, Landroid/util/RecurrenceRule;->buildNever()Landroid/util/RecurrenceRule;

    move-result-object v3

    .line 139
    .local v3, "cycleRule":Landroid/util/RecurrenceRule;
    const/4 v12, 0x0

    .line 146
    .local v12, "metered":Z
    :goto_0
    new-instance v1, Landroid/net/NetworkPolicy;

    .line 147
    const/4 v13, 0x1

    move-object v2, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    .line 146
    invoke-direct/range {v1 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    return-object v1

    .line 141
    .end local v3    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v12    # "metered":Z
    :cond_0
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    .line 142
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Landroid/util/RecurrenceRule;->buildRecurringMonthly(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v3

    .line 143
    .restart local v3    # "cycleRule":Landroid/util/RecurrenceRule;
    const/4 v12, 0x1

    .restart local v12    # "metered":Z
    goto :goto_0
.end method

.method private static buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;
    .locals 5
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v3, 0x0

    .line 264
    if-nez p0, :cond_0

    return-object v3

    .line 265
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "networkId":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "strippedNetworkId":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    new-instance v2, Landroid/net/NetworkTemplate;

    .line 269
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-direct {v2, v3, v4, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 271
    :cond_1
    return-object v3
.end method

.method private setPolicyWarningBytesInner(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "warningBytes"    # J

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 176
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 178
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    .line 180
    return-void
.end method


# virtual methods
.method public getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 106
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-nez v0, :cond_0

    .line 107
    invoke-static {p1}, Lcom/android/settingslib/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    return-object v0
.end method

.method public getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "policy$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 115
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    return-object v0

    .line 119
    .end local v0    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getPolicyCycleDay(Landroid/net/NetworkTemplate;)I
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 153
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v1}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, v0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v1

    return v1

    .line 156
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 193
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 124
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    .line 125
    return-object v0

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/NetworkPolicyEditor;->buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    return-object v1
.end method

.method public getPolicyMetered(Landroid/net/NetworkTemplate;)Z
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 213
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    .line 214
    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    return v1

    .line 216
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 171
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 101
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public read()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 61
    iget-object v3, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 63
    .local v1, "policies":[Landroid/net/NetworkPolicy;
    const/4 v0, 0x0

    .line 64
    .local v0, "modified":Z
    iget-object v3, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 65
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    .line 67
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-wide v6, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 68
    iput-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 69
    const/4 v0, 0x1

    .line 71
    :cond_0
    iget-wide v6, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 72
    iput-wide v8, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 73
    const/4 v0, 0x1

    .line 76
    :cond_1
    iget-object v5, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    .line 81
    :cond_3
    return-void
.end method

.method public setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleDay"    # I
    .param p3, "cycleTimezone"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 163
    .local v0, "policy":Landroid/net/NetworkPolicy;
    invoke-static {p3}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v1

    iput-object v1, v0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 165
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 166
    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    .line 167
    return-void
.end method

.method public setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "limitBytes"    # J

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 200
    .local v2, "warningBytes":J
    cmp-long v1, v2, p2

    if-lez v1, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v1, p2, v4

    if-eqz v1, :cond_0

    .line 201
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytesInner(Landroid/net/NetworkTemplate;J)V

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 205
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 207
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 208
    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    .line 209
    return-void
.end method

.method public setPolicyMetered(Landroid/net/NetworkTemplate;Z)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "metered"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "modified":Z
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 224
    .local v1, "policy":Landroid/net/NetworkPolicy;
    if-eqz p2, :cond_4

    .line 225
    if-nez v1, :cond_3

    .line 226
    invoke-static {p1}, Lcom/android/settingslib/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 227
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 228
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 229
    iget-object v4, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const/4 v0, 0x1

    .line 248
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/NetworkPolicyEditor;->buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 249
    .local v2, "unquoted":Landroid/net/NetworkTemplate;
    invoke-virtual {p0, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 250
    .local v3, "unquotedPolicy":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_1

    .line 251
    iget-object v4, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    const/4 v0, 0x1

    .line 255
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    .line 256
    :cond_2
    return-void

    .line 231
    .end local v2    # "unquoted":Landroid/net/NetworkTemplate;
    .end local v3    # "unquotedPolicy":Landroid/net/NetworkPolicy;
    :cond_3
    iget-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-nez v4, :cond_0

    .line 232
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 233
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 234
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :cond_4
    if-eqz v1, :cond_0

    .line 240
    iget-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_0

    .line 241
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 242
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 243
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "warningBytes"    # J

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .line 186
    .local v0, "limitBytes":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 188
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytesInner(Landroid/net/NetworkTemplate;J)V

    .line 189
    return-void

    .line 186
    :cond_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    goto :goto_0
.end method

.method public write([Landroid/net/NetworkPolicy;)V
    .locals 1
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 97
    return-void
.end method

.method public writeAsync()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 86
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/NetworkPolicyEditor$1;-><init>(Lcom/android/settingslib/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method
