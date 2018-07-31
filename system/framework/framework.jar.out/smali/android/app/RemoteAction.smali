.class public final Landroid/app/RemoteAction;
.super Ljava/lang/Object;
.source "RemoteAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/RemoteAction$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RemoteAction"


# instance fields
.field private final mActionIntent:Landroid/app/PendingIntent;

.field private final mContentDescription:Ljava/lang/CharSequence;

.field private mEnabled:Z

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Landroid/app/RemoteAction$1;

    invoke-direct {v0}, Landroid/app/RemoteAction$1;-><init>()V

    .line 140
    sput-object v0, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Expected icon, title, content description and action callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 60
    iput-object p1, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    .line 61
    iput-object p2, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    .line 62
    iput-object p3, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    .line 63
    iput-object p4, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/RemoteAction;->mEnabled:Z

    .line 65
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    .line 48
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    .line 49
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    .line 50
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/RemoteAction;->mEnabled:Z

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Landroid/app/RemoteAction;
    .locals 5

    .prologue
    .line 111
    new-instance v0, Landroid/app/RemoteAction;

    iget-object v1, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 112
    .local v0, "action":Landroid/app/RemoteAction;
    iget-boolean v1, p0, Landroid/app/RemoteAction;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 113
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/app/RemoteAction;->clone()Landroid/app/RemoteAction;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 131
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/RemoteAction;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 138
    return-void
.end method

.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/app/RemoteAction;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Landroid/app/RemoteAction;->mEnabled:Z

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget-object v0, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 124
    iget-object v0, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 125
    iget-object v0, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 126
    iget-object v0, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget-boolean v0, p0, Landroid/app/RemoteAction;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 128
    return-void
.end method
