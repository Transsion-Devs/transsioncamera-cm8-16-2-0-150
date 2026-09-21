.class public Lcom/ss/android/ttvecamera/TEFrameRateRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/ttvecamera/TEFrameRateRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fpsUnitFactor:I

.field public max:I

.field public min:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/ss/android/ttvecamera/TEFrameRateRange$1;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/TEFrameRateRange$1;-><init>()V

    sput-object v0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    .line 18
    iput p1, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    .line 19
    iput p2, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    const/16 p1, 0x3e8

    if-le p2, p1, :cond_f

    move v0, p1

    .line 20
    :cond_f
    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    return-void
.end method

.method public static getFpsUnitFactor(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)I"
        }
    .end annotation

    .line 100
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 104
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    aget p0, p0, v1

    const/16 v0, 0x3e8

    if-le p0, v0, :cond_16

    return v0

    :cond_16
    return v1
.end method

.method public static mul(Lcom/ss/android/ttvecamera/TEFrameRateRange;I)Lcom/ss/android/ttvecamera/TEFrameRateRange;
    .registers 4

    .line 108
    new-instance v0, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    mul-int/2addr v1, p1

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    mul-int/2addr p0, p1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 86
    instance-of v0, p1, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 89
    :cond_6
    check-cast p1, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    .line 90
    iget v0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    if-ne v0, v2, :cond_16

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public getRealFpsRange()[I
    .registers 3

    .line 75
    iget v0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr v0, v1

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    div-int/2addr p0, v1

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    const v0, 0x10001

    .line 96
    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    add-int/2addr v1, p0

    return v1
.end method

.method public isValid()Z
    .registers 3

    .line 71
    iget v0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    if-ltz v0, :cond_e

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    if-lt v1, v0, :cond_e

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    if-lez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public mulFactor(I)[I
    .registers 4

    .line 112
    iget v0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    div-int/2addr p0, v1

    mul-int/2addr p0, p1

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public setFpsUnitFactor(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)I"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gtz p0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    .line 58
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    aget p0, p0, v0

    const/16 p1, 0x3e8

    if-le p0, p1, :cond_16

    return p1

    :cond_16
    return v0
.end method

.method public setFpsUnitFactor([Landroid/util/Range;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 63
    array-length p0, p1

    const/4 v0, 0x1

    if-gtz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    .line 67
    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x3e8

    if-ge p0, p1, :cond_17

    return p1

    :cond_17
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    iget v2, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 31
    iget p2, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget p2, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
