.class Landroid/util/RecurrenceRule$NonrecurringIterator;
.super Ljava/lang/Object;
.source "RecurrenceRule.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/RecurrenceRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonrecurringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/time/ZonedDateTime;",
        "Ljava/time/ZonedDateTime;",
        ">;>;"
    }
.end annotation


# instance fields
.field hasNext:Z

.field final synthetic this$0:Landroid/util/RecurrenceRule;


# direct methods
.method public constructor <init>(Landroid/util/RecurrenceRule;)V
    .locals 2
    .param p1, "this$0"    # Landroid/util/RecurrenceRule;

    .prologue
    const/4 v0, 0x0

    .line 171
    iput-object p1, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iget-object v1, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->hasNext:Z

    .line 173
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->hasNext:Z

    return v0
.end method

.method public next()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/time/ZonedDateTime;",
            "Ljava/time/ZonedDateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->hasNext:Z

    .line 183
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v1, v1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v2, p0, Landroid/util/RecurrenceRule$NonrecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/util/RecurrenceRule$NonrecurringIterator;->next()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
