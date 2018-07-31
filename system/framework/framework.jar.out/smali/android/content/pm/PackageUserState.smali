.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public appLinkGeneration:I

.field public categoryHint:I

.field public ceDataInode:J

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hidden:Z

.field public installReason:I

.field public installed:Z

.field public instantApp:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public overlayPaths:[Ljava/lang/String;

.field public stopped:Z

.field public suspended:Z

.field public virtualPreload:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 63
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 64
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 65
    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 66
    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 68
    iput v1, p0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 4
    .param p1, "o"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 72
    iget-wide v2, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iput-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 73
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 74
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 75
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 76
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 77
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 78
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 79
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 80
    iget v1, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 81
    iget-object v1, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 82
    iget v1, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 83
    iget v1, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 84
    iget v1, p1, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 85
    iget v1, p1, Landroid/content/pm/PackageUserState;->installReason:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 86
    iget-object v1, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 87
    iget-object v1, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 89
    iget-object v1, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 88
    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    .line 90
    return-void

    .line 89
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 174
    instance-of v2, p1, Landroid/content/pm/PackageUserState;

    if-nez v2, :cond_0

    .line 175
    return v6

    :cond_0
    move-object v1, p1

    .line 177
    check-cast v1, Landroid/content/pm/PackageUserState;

    .line 178
    .local v1, "oldState":Landroid/content/pm/PackageUserState;
    iget-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iget-wide v4, v1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 179
    return v6

    .line 181
    :cond_1
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->installed:Z

    if-eq v2, v3, :cond_2

    .line 182
    return v6

    .line 184
    :cond_2
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eq v2, v3, :cond_3

    .line 185
    return v6

    .line 187
    :cond_3
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eq v2, v3, :cond_4

    .line 188
    return v6

    .line 190
    :cond_4
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eq v2, v3, :cond_5

    .line 191
    return v6

    .line 193
    :cond_5
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v2, v3, :cond_6

    .line 194
    return v6

    .line 196
    :cond_6
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eq v2, v3, :cond_7

    .line 197
    return v6

    .line 199
    :cond_7
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eq v2, v3, :cond_8

    .line 200
    return v6

    .line 202
    :cond_8
    iget v2, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v2, v3, :cond_9

    .line 203
    return v6

    .line 205
    :cond_9
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 208
    :cond_a
    return v6

    .line 206
    :cond_b
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 207
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 205
    if-nez v2, :cond_a

    .line 210
    :cond_c
    iget v2, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eq v2, v3, :cond_d

    .line 211
    return v6

    .line 213
    :cond_d
    iget v2, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eq v2, v3, :cond_e

    .line 214
    return v6

    .line 216
    :cond_e
    iget v2, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->categoryHint:I

    if-eq v2, v3, :cond_f

    .line 217
    return v6

    .line 219
    :cond_f
    iget v2, p0, Landroid/content/pm/PackageUserState;->installReason:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->installReason:I

    if-eq v2, v3, :cond_10

    .line 220
    return v6

    .line 222
    :cond_10
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_12

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_12

    .line 224
    :cond_11
    return v6

    .line 223
    :cond_12
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_13

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_11

    .line 226
    :cond_13
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_16

    .line 227
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eq v2, v3, :cond_14

    .line 228
    return v6

    .line 230
    :cond_14
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_16

    .line 231
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 232
    return v6

    .line 230
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_16
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_18

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_18

    .line 238
    :cond_17
    return v6

    .line 237
    :cond_18
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_19

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_17

    .line 240
    :cond_19
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_1c

    .line 241
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 242
    return v6

    .line 244
    :cond_1a
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1c

    .line 245
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 246
    return v6

    .line 244
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 250
    .end local v0    # "i":I
    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public isAvailable(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    const/high16 v4, 0x400000

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 99
    .local v0, "matchAnyUser":Z
    :goto_0
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 100
    .local v1, "matchUninstalled":Z
    :goto_1
    if-nez v0, :cond_2

    .line 101
    iget-boolean v4, p0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_4

    .line 102
    iget-boolean v3, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v3, :cond_3

    .line 100
    .end local v1    # "matchUninstalled":Z
    :goto_2
    return v1

    .line 98
    .end local v0    # "matchAnyUser":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "matchAnyUser":Z
    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "matchUninstalled":Z
    goto :goto_1

    :cond_2
    move v1, v2

    .line 100
    goto :goto_2

    :cond_3
    move v1, v2

    .line 102
    goto :goto_2

    :cond_4
    move v1, v3

    .line 101
    goto :goto_2
.end method

.method public isEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .locals 4
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_0

    .line 139
    return v3

    .line 144
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :cond_1
    :pswitch_0
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    return v3

    .line 147
    :pswitch_1
    return v2

    .line 149
    :pswitch_2
    const v0, 0x8000

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 150
    return v2

    .line 153
    :cond_2
    :pswitch_3
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1

    .line 154
    return v2

    .line 165
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    return v2

    .line 169
    :cond_4
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    return v0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isMatch(Landroid/content/pm/ComponentInfo;I)Z
    .locals 6
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    .line 116
    .local v0, "isSystemApp":Z
    const v5, 0x402000

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    .line 117
    .local v1, "matchUninstalled":Z
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    if-eqz v0, :cond_1

    .end local v1    # "matchUninstalled":Z
    :goto_1
    xor-int/lit8 v5, v1, 0x1

    .line 117
    if-eqz v5, :cond_2

    .line 118
    return v4

    .line 116
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "matchUninstalled":Z
    goto :goto_0

    :cond_1
    move v1, v4

    .line 118
    goto :goto_1

    .line 119
    .end local v1    # "matchUninstalled":Z
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageUserState;->isEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result v5

    if-nez v5, :cond_3

    return v4

    .line 121
    :cond_3
    const/high16 v5, 0x100000

    and-int/2addr v5, p2

    if-eqz v5, :cond_4

    .line 122
    if-nez v0, :cond_4

    .line 123
    return v4

    .line 127
    :cond_4
    const/high16 v4, 0x40000

    and-int/2addr v4, p2

    if-eqz v4, :cond_5

    .line 128
    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    xor-int/lit8 v3, v4, 0x1

    .line 129
    :goto_2
    const/high16 v4, 0x80000

    and-int/2addr v4, p2

    if-eqz v4, :cond_6

    .line 130
    iget-boolean v2, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 131
    :goto_3
    if-nez v3, :cond_7

    :goto_4
    return v2

    .line 127
    :cond_5
    const/4 v3, 0x0

    .local v3, "matchesUnaware":Z
    goto :goto_2

    .line 129
    .end local v3    # "matchesUnaware":Z
    :cond_6
    const/4 v2, 0x0

    .local v2, "matchesAware":Z
    goto :goto_3

    .line 131
    .end local v2    # "matchesAware":Z
    :cond_7
    const/4 v2, 0x1

    goto :goto_4
.end method
