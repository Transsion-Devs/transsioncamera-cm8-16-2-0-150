.class public final Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo$CREATOR;


# instance fields
.field private final confidence:F

.field private final landmark:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field private final pointData:Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->CREATOR:Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    :cond_d
    invoke-static {v0}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->valueOf(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    move-result-object v0

    .line 15
    const-class v1, Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    if-nez v1, :cond_25

    new-instance v1, Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;-><init>(FF)V

    .line 16
    :cond_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 13
    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;-><init>(Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;F)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;F)V
    .registers 5

    const-string v0, "landmark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->landmark:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 10
    iput-object p2, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->pointData:Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    .line 11
    iput p3, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->confidence:F

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
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->landmark:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->landmark:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->pointData:Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->pointData:Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget p0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->confidence:F

    iget p1, p1, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->confidence:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->landmark:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->pointData:Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->confidence:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->landmark:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->pointData:Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->confidence:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LandmarkInfo(landmark="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pointData="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", confidence="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->landmark:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->pointData:Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 23
    iget p0, p0, Lcom/transsion/aicore/cv/ipc/imageDepth/LandmarkInfo;->confidence:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
