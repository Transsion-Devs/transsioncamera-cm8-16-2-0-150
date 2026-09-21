.class public final Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private code:I

.field private contours:Lcom/transsion/aicore/cv/ipc/smartMatting/PointsData;

.field private msg:Ljava/lang/String;

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData$Creator;

    invoke-direct {v0}, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData$Creator;-><init>()V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;Lcom/transsion/aicore/cv/ipc/smartMatting/PointsData;Landroid/graphics/RectF;)V
    .registers 7

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contours"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectF"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->code:I

    .line 12
    iput-object p2, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->msg:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->bitmap:Landroid/graphics/Bitmap;

    .line 14
    iput-object p4, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->contours:Lcom/transsion/aicore/cv/ipc/smartMatting/PointsData;

    .line 15
    iput-object p5, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->rectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;

    iget v1, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->code:I

    iget v3, p1, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->code:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->msg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->contours:Lcom/transsion/aicore/cv/ipc/smartMatting/PointsData;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->contours:Lcom/transsion/aicore/cv/ipc/smartMatting/PointsData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->rectF:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->rectF:Landroid/graphics/RectF;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    return v2

    :cond_3f
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->contours:Lcom/transsion/aicore/cv/ipc/smartMatting/PointsData;

    invoke-virtual {v1}, Lcom/transsion/aicore/cv/ipc/smartMatting/PointsData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->code:I

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->contours:Lcom/transsion/aicore/cv/ipc/smartMatting/PointsData;

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->rectF:Landroid/graphics/RectF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartMattingData(code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bitmap="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contours="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rectF="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->contours:Lcom/transsion/aicore/cv/ipc/smartMatting/PointsData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
