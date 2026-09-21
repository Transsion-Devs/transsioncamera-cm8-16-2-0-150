.class public final Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

.field private imageData:Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;

.field private rectF:Landroid/graphics/RectF;

.field private subjectAreaRatio:F

.field private usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData$Creator;

    invoke-direct {v0}, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData$Creator;-><init>()V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/aicore/cv/ipc/ErrorCode;Lcom/transsion/aicore/cv/ipc/UsageInfo;Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;Landroid/graphics/RectF;F)V
    .registers 7

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usageInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectF"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    .line 14
    iput-object p2, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    .line 15
    iput-object p3, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->imageData:Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;

    .line 16
    iput-object p4, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->rectF:Landroid/graphics/RectF;

    .line 17
    iput p5, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->subjectAreaRatio:F

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
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->imageData:Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->imageData:Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->rectF:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->rectF:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget p0, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->subjectAreaRatio:F

    iget p1, p1, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->subjectAreaRatio:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-virtual {v0}, Lcom/transsion/aicore/cv/ipc/ErrorCode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    invoke-virtual {v1}, Lcom/transsion/aicore/cv/ipc/UsageInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->imageData:Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;

    invoke-virtual {v1}, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->subjectAreaRatio:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    iget-object v2, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->imageData:Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;

    iget-object v3, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->rectF:Landroid/graphics/RectF;

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->subjectAreaRatio:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DepthOfFieldData(errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", usageInfo="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", imageData="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rectF="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", subjectAreaRatio="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->imageData:Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;->subjectAreaRatio:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
