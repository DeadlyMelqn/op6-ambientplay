.class public Landroid/telephony/SubscriptionPlan$Builder;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final plan:Landroid/telephony/SubscriptionPlan;


# direct methods
.method public constructor <init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V
    .locals 3
    .param p1, "start"    # Ljava/time/ZonedDateTime;
    .param p2, "end"    # Ljava/time/ZonedDateTime;
    .param p3, "period"    # Ljava/time/Period;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Landroid/telephony/SubscriptionPlan;

    new-instance v1, Landroid/util/RecurrenceRule;

    invoke-direct {v1, p1, p2, p3}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/util/RecurrenceRule;Landroid/telephony/SubscriptionPlan;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    .line 204
    return-void
.end method

.method public static createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p0, "start"    # Ljava/time/ZonedDateTime;
    .param p1, "end"    # Ljava/time/ZonedDateTime;

    .prologue
    .line 211
    invoke-virtual {p1, p0}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isn\'t after start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static createRecurringDaily(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p0, "start"    # Ljava/time/ZonedDateTime;

    .prologue
    .line 242
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p0, "start"    # Ljava/time/ZonedDateTime;

    .prologue
    .line 226
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/time/Period;->ofMonths(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static createRecurringWeekly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p0, "start"    # Ljava/time/ZonedDateTime;

    .prologue
    .line 234
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/telephony/SubscriptionPlan;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    return-object v0
.end method

.method public setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3
    .param p1, "dataLimitBytes"    # J
    .param p3, "dataLimitBehavior"    # I

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Limit bytes must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    if-gez p3, :cond_1

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Limit behavior must be defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionPlan;->-set1(Landroid/telephony/SubscriptionPlan;J)J

    .line 278
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p3}, Landroid/telephony/SubscriptionPlan;->-set0(Landroid/telephony/SubscriptionPlan;I)I

    .line 279
    return-object p0
.end method

.method public setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 5
    .param p1, "dataUsageBytes"    # J
    .param p3, "dataUsageTime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 290
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Usage bytes must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Usage time must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionPlan;->-set2(Landroid/telephony/SubscriptionPlan;J)J

    .line 297
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p3, p4}, Landroid/telephony/SubscriptionPlan;->-set3(Landroid/telephony/SubscriptionPlan;J)J

    .line 298
    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 257
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->-set4(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 258
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 251
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->-set5(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 252
    return-object p0
.end method
