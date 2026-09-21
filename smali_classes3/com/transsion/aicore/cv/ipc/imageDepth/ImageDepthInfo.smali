.class public final Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo$CREATOR;


# instance fields
.field private final bodyLandmarkInfo:Ljava/util/List;

.field private final bodyRatio:F

.field private final headRatio:F

.field private final isSupportImageDepth:Z

.field private final portraitMask:Landroid/graphics/Bitmap;

.field private final portraitMaskUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->CREATOR:Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 19
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/Bitmap;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 21
    sget-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->CREATOR:Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2d

    :goto_2a
    move-object v1, p0

    move-object v7, p1

    goto :goto_32

    :cond_2d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_2a

    .line 15
    :goto_32
    invoke-direct/range {v1 .. v7}, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;-><init>(ZFFLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ZFFLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/List;)V
    .registers 8

    const-string v0, "bodyLandmarkInfo"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->isSupportImageDepth:Z

    .line 9
    iput p2, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->headRatio:F

    .line 10
    iput p3, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyRatio:F

    .line 11
    iput-object p4, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMask:Landroid/graphics/Bitmap;

    .line 12
    iput-object p5, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMaskUrl:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyLandmarkInfo:Ljava/util/List;

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
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;

    iget-boolean v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->isSupportImageDepth:Z

    iget-boolean v3, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->isSupportImageDepth:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->headRatio:F

    iget v3, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->headRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyRatio:F

    iget v3, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMask:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMask:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMaskUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMaskUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyLandmarkInfo:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyLandmarkInfo:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->isSupportImageDepth:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->headRatio:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyRatio:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMask:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    move v1, v2

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMaskUrl:Ljava/lang/String;

    if-nez v1, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyLandmarkInfo:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget-boolean v0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->isSupportImageDepth:Z

    iget v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->headRatio:F

    iget v2, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyRatio:F

    iget-object v3, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMask:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMaskUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyLandmarkInfo:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImageDepthInfo(isSupportImageDepth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", headRatio="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", bodyRatio="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", portraitMask="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", portraitMaskUrl="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bodyLandmarkInfo="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-boolean v0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->isSupportImageDepth:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 26
    iget v0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->headRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 27
    iget v0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 28
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMask:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    iget-object p2, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->portraitMaskUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->bodyLandmarkInfo:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
