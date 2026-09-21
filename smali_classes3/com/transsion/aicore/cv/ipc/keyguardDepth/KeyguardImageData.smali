.class public final Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imageBytes:Ljava/lang/String;

.field private imageMd5:Ljava/lang/String;

.field private imageType:I

.field private imageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData$Creator;

    invoke-direct {v0}, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData$Creator;-><init>()V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageBytes:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageUrl:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageMd5:Ljava/lang/String;

    .line 11
    iput p4, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageType:I

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
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageBytes:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageBytes:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageMd5:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageMd5:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget p0, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageType:I

    iget p1, p1, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageType:I

    if-eq p0, p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageBytes:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageUrl:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageMd5:Ljava/lang/String;

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_23
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageBytes:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageMd5:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyguardImageData(imageBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", imageUrl="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", imageMd5="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", imageType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageBytes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->imageType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
