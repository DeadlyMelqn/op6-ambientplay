.class public Landroid/app/ActivityManager$StackInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$StackInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field public displayId:I

.field public position:I

.field public stackId:I

.field public taskBounds:[Landroid/graphics/Rect;

.field public taskIds:[I

.field public taskNames:[Ljava/lang/String;

.field public taskUserIds:[I

.field public topActivity:Landroid/content/ComponentName;

.field public userId:I

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2933
    new-instance v0, Landroid/app/ActivityManager$StackInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$StackInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2857
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2859
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    .line 2945
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2859
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    .line 2948
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$StackInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2949
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$StackInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/app/ActivityManager$StackInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$StackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2873
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 2907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 2908
    new-instance v3, Landroid/graphics/Rect;

    .line 2909
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2908
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    .line 2910
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 2911
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 2912
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2913
    .local v0, "boundsCount":I
    if-lez v0, :cond_0

    .line 2914
    new-array v3, v0, [Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 2915
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2916
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v3, v1

    .line 2917
    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    .line 2918
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2917
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2915
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2921
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 2923
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    .line 2924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 2925
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 2926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 2927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/ActivityManager$StackInfo;->position:I

    .line 2928
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_3

    .line 2929
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 2931
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2977
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$StackInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2952
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2953
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Stack id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2954
    const-string/jumbo v2, " bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2955
    const-string/jumbo v2, " displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2956
    const-string/jumbo v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2957
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2959
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2960
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2961
    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 2963
    const-string/jumbo v2, " bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    :cond_0
    const-string/jumbo v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2966
    const-string/jumbo v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2967
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 2968
    const-string/jumbo v2, " topActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2970
    :cond_1
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2959
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2972
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2878
    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2879
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2880
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2881
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2882
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2883
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2884
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2885
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 2886
    .local v0, "boundsCount":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2887
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2888
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2889
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2890
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2891
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2887
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2885
    .end local v0    # "boundsCount":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    array-length v0, v2

    .restart local v0    # "boundsCount":I
    goto :goto_0

    .line 2893
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2894
    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->displayId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2895
    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    iget-boolean v2, p0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2897
    iget v2, p0, Landroid/app/ActivityManager$StackInfo;->position:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2898
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    .line 2899
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2900
    iget-object v2, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, p1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2904
    :goto_3
    return-void

    :cond_2
    move v2, v4

    .line 2896
    goto :goto_2

    .line 2902
    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
