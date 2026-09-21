.class public Lcom/ss/android/vesdk/VESize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VESize;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/ss/android/vesdk/VESize$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VESize$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VESize;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 22
    iput p2, p0, Lcom/ss/android/vesdk/VESize;->height:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d0

    .line 12
    iput v0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    const/16 v0, 0x500

    .line 13
    iput v0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VESize;->height:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 55
    instance-of v0, p1, Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 56
    iget v0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    check-cast p1, Lcom/ss/android/vesdk/VESize;

    iget v2, p1, Lcom/ss/android/vesdk/VESize;->width:I

    if-ne v0, v2, :cond_15

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    if-ne p0, p1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method

.method public isValid()Z
    .registers 2

    .line 63
    iget v0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    if-lez v0, :cond_a

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 32
    iget p2, p0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
