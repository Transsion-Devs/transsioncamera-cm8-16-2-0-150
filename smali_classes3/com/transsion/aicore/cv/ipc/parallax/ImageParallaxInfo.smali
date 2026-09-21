.class public final Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo$CREATOR;


# instance fields
.field private final imageType:Lcom/transsion/aicore/cv/ipc/parallax/ImageType;

.field private final imageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->CREATOR:Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    :cond_d
    invoke-static {v0}, Lcom/transsion/aicore/cv/ipc/parallax/ImageType;->valueOf(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/parallax/ImageType;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;-><init>(Lcom/transsion/aicore/cv/ipc/parallax/ImageType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/aicore/cv/ipc/parallax/ImageType;Ljava/lang/String;)V
    .registers 4

    const-string v0, "imageType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageType:Lcom/transsion/aicore/cv/ipc/parallax/ImageType;

    .line 8
    iput-object p2, p0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageUrl:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageType:Lcom/transsion/aicore/cv/ipc/parallax/ImageType;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageType:Lcom/transsion/aicore/cv/ipc/parallax/ImageType;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageType:Lcom/transsion/aicore/cv/ipc/parallax/ImageType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageUrl:Ljava/lang/String;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_12
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageType:Lcom/transsion/aicore/cv/ipc/parallax/ImageType;

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageParallaxInfo(imageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", imageUrl="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageType:Lcom/transsion/aicore/cv/ipc/parallax/ImageType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
