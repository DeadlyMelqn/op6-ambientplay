.class final Lcom/android/server/notification/NotificationRecord$Light;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Light"
.end annotation


# instance fields
.field public final color:I

.field public final offMs:I

.field public final onMs:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iput p1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 928
    iput p2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    .line 929
    iput p3, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    .line 930
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 934
    if-ne p0, p1, :cond_0

    return v1

    .line 935
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord$Light;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 937
    check-cast v0, Lcom/android/server/notification/NotificationRecord$Light;

    .line 939
    .local v0, "light":Lcom/android/server/notification/NotificationRecord$Light;
    iget v3, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v4, v0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    if-eq v3, v4, :cond_3

    return v2

    .line 940
    :cond_3
    iget v3, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v4, v0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    if-eq v3, v4, :cond_4

    return v2

    .line 941
    :cond_4
    iget v3, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    iget v4, v0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    if-ne v3, v4, :cond_5

    :goto_0
    return v1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 947
    iget v0, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 948
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    add-int v0, v1, v2

    .line 949
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    add-int v0, v1, v2

    .line 950
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Light{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 956
    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 957
    const-string/jumbo v1, ", onMs="

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 957
    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 958
    const-string/jumbo v1, ", offMs="

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 958
    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 959
    const/16 v1, 0x7d

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
