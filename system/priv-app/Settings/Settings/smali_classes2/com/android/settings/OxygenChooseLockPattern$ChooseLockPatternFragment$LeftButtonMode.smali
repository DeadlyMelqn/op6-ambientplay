.class final enum Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "OxygenChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Cancel:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum CancelDisabled:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Gone:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Retry:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum RetryDisabled:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    new-instance v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0f06bf

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 261
    new-instance v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string/jumbo v1, "CancelDisabled"

    const v2, 0x7f0f06bf

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->CancelDisabled:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 262
    new-instance v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string/jumbo v1, "Retry"

    const v2, 0x7f0f0ad5

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 263
    new-instance v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string/jumbo v1, "RetryDisabled"

    const v2, 0x7f0f0ad5

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 264
    new-instance v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string/jumbo v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 259
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->CancelDisabled:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "text"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 272
    iput p3, p0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    .line 273
    iput-boolean p4, p0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    .line 274
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    const-class v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method