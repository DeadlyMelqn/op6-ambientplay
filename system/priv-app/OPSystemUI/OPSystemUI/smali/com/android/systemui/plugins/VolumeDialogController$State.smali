.class public final Lcom/android/systemui/plugins/VolumeDialogController$State;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static NO_ACTIVE_STREAM:I = 0x0

.field public static final VERSION:I = 0x1


# instance fields
.field public activeStream:I

.field public effectsSuppressor:Landroid/content/ComponentName;

.field public effectsSuppressorName:Ljava/lang/String;

.field public ringerModeExternal:I

.field public ringerModeInternal:I

.field public final states:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/plugins/VolumeDialogController$StreamState;",
            ">;"
        }
    .end annotation
.end field

.field public zenMode:I

.field public zenModeConfig:Landroid/service/notification/ZenModeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->NO_ACTIVE_STREAM:I

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 103
    sget v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->NO_ACTIVE_STREAM:I

    iput v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 91
    return-void
.end method

.method private static sep(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "indent"    # I

    .prologue
    .line 161
    if-lez p1, :cond_0

    .line 162
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 164
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :cond_1
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 5

    .prologue
    .line 109
    new-instance v1, Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-direct {v1}, Lcom/android/systemui/plugins/VolumeDialogController$State;-><init>()V

    .line 110
    .local v1, "rt":Lcom/android/systemui/plugins/VolumeDialogController$State;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 111
    iget-object v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-virtual {v2}, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->copy()Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    iput v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    .line 114
    iget v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    iput v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 115
    iget v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    iput v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 116
    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    .line 123
    :cond_2
    iget v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 124
    return-object v1
.end method

.method public getManualExitCondition()Landroid/service/notification/Condition;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 173
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6
    .param p1, "indent"    # I

    .prologue
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-lez p1, :cond_0

    invoke-static {v1, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    .line 135
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 136
    if-lez v0, :cond_1

    .line 137
    invoke-static {v1, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    .line 139
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 140
    .local v3, "stream":I
    iget-object v4, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 141
    .local v2, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    invoke-static {v3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 142
    const/16 v5, 0x5b

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 142
    iget v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 142
    const-string/jumbo v5, ".."

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 142
    iget v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 143
    const/16 v5, 0x5d

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    iget-boolean v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, " [MUTED]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_2
    iget-boolean v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, " [DYNAMIC]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .end local v3    # "stream":I
    :cond_4
    invoke-static {v1, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v4, "ringerModeExternal:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {v1, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v4, "ringerModeInternal:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {v1, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v4, "zenMode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    invoke-static {v1, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v4, "effectsSuppressor:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {v1, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v4, "effectsSuppressorName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {v1, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v4, "zenModeConfig:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {v1, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v4, "activeStream:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    if-lez p1, :cond_5

    invoke-static {v1, p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    .line 157
    :cond_5
    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
