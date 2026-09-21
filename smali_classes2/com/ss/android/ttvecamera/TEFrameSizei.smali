.class public Lcom/ss/android/ttvecamera/TEFrameSizei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
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

    .line 36
    new-instance v0, Lcom/ss/android/ttvecamera/TEFrameSizei$1;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/TEFrameSizei$1;-><init>()V

    sput-object v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d0

    .line 10
    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    const/16 v0, 0x500

    .line 11
    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 18
    iput p2, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d0

    .line 10
    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    const/16 v0, 0x500

    .line 11
    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

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
    instance-of v0, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 58
    :cond_6
    check-cast p1, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 59
    iget v0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-ne v0, v2, :cond_16

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 3

    const v0, 0x10001

    .line 65
    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    add-int/2addr v1, p0

    return v1
.end method

.method public isValid()Z
    .registers 2

    .line 69
    iget v0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-lez v0, :cond_a

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public toSize()Landroid/util/Size;
    .registers 3

    .line 85
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(II)V
    .registers 3

    .line 32
    iput p1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 33
    iput p2, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    return-void
.end method

.method public update(Lcom/ss/android/ttvecamera/TEFrameSizei;)V
    .registers 3

    .line 27
    iget v0, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 28
    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iput p1, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 79
    iget p2, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
