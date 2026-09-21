.class public final Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult$CREATOR;


# instance fields
.field private final isUseMlKit:Z

.field private final langIndex:I

.field private final points:Ljava/util/List;

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->CREATOR:Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult$CREATOR;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->langIndex:I

    .line 9
    iput-boolean p2, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->isUseMlKit:Z

    .line 10
    iput-object p3, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->text:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->points:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 17
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 13
    :goto_1e
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;-><init>(IZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
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
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;

    iget v1, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->langIndex:I

    iget v3, p1, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->langIndex:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->isUseMlKit:Z

    iget-boolean v3, p1, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->isUseMlKit:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->points:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->points:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->langIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->isUseMlKit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->text:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->points:Ljava/util/List;

    if-nez p0, :cond_24

    goto :goto_28

    :cond_24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_28
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->langIndex:I

    iget-boolean v1, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->isUseMlKit:Z

    iget-object v2, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->text:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->points:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OCRItemResult(langIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isUseMlKit="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", text="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", points="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget p2, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->langIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-boolean p2, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->isUseMlKit:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 24
    iget-object p2, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/ocr/OCRItemResult;->points:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
