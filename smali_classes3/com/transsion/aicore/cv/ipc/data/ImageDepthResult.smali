.class public final Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult$CREATOR;


# instance fields
.field private final errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

.field private final imageDepthInfoList:Ljava/util/List;

.field private final usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->CREATOR:Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-class v0, Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/aicore/cv/ipc/ErrorCode;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/transsion/aicore/cv/ipc/ErrorCode;

    const/4 v1, -0x1

    const-string/jumbo v2, "unknown error"

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/ErrorCode;-><init>(ILjava/lang/String;)V

    .line 16
    :cond_1c
    sget-object v1, Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo;->CREATOR:Lcom/transsion/aicore/cv/ipc/imageDepth/ImageDepthInfo$CREATOR;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_25

    goto :goto_29

    :cond_25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 17
    :goto_29
    const-class v2, Lcom/transsion/aicore/cv/ipc/UsageInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/aicore/cv/ipc/UsageInfo;

    if-nez p1, :cond_3f

    new-instance p1, Lcom/transsion/aicore/cv/ipc/UsageInfo;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p1, v4, v4, v2, v3}, Lcom/transsion/aicore/cv/ipc/UsageInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    :cond_3f
    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;-><init>(Lcom/transsion/aicore/cv/ipc/ErrorCode;Ljava/util/List;Lcom/transsion/aicore/cv/ipc/UsageInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/aicore/cv/ipc/ErrorCode;Ljava/util/List;Lcom/transsion/aicore/cv/ipc/UsageInfo;)V
    .registers 5

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDepthInfoList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usageInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    .line 11
    iput-object p2, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->imageDepthInfoList:Ljava/util/List;

    .line 12
    iput-object p3, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

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
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->imageDepthInfoList:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->imageDepthInfoList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    iget-object p1, p1, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-virtual {v0}, Lcom/transsion/aicore/cv/ipc/ErrorCode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->imageDepthInfoList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    invoke-virtual {p0}, Lcom/transsion/aicore/cv/ipc/UsageInfo;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->imageDepthInfoList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageDepthResult(errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", imageDepthInfoList="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", usageInfo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 22
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 23
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->imageDepthInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 24
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
