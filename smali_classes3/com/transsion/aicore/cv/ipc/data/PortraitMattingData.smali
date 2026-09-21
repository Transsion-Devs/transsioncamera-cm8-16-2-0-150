.class public final Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private code:I

.field private colors:Ljava/util/List;

.field private contours:Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;

.field private msg:Ljava/lang/String;

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData$Creator;

    invoke-direct {v0}, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData$Creator;-><init>()V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;Landroid/graphics/RectF;Ljava/util/List;)V
    .registers 8

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contours"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectF"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->code:I

    .line 12
    iput-object p2, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->msg:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->bitmap:Landroid/graphics/Bitmap;

    .line 14
    iput-object p4, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->contours:Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;

    .line 15
    iput-object p5, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->rectF:Landroid/graphics/RectF;

    .line 16
    iput-object p6, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->colors:Ljava/util/List;

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
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;

    iget v1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->code:I

    iget v3, p1, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->code:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->msg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->contours:Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->contours:Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->rectF:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->rectF:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->colors:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->colors:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->contours:Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;

    invoke-virtual {v1}, Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->colors:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget v0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->code:I

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->contours:Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;

    iget-object v4, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->rectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->colors:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PortraitMattingData(code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bitmap="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contours="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rectF="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", colors="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->contours:Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;->colors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    :cond_3f
    return-void
.end method
