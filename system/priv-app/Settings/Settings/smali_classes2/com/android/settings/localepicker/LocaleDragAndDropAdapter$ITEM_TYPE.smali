.class public final enum Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;
.super Ljava/lang/Enum;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ITEM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

.field public static final enum ITEM1:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

.field public static final enum ITEM2:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    const-string/jumbo v1, "ITEM1"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->ITEM1:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    .line 66
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    const-string/jumbo v1, "ITEM2"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->ITEM2:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    sget-object v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->ITEM1:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->ITEM2:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->$VALUES:[Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->$VALUES:[Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    return-object v0
.end method
