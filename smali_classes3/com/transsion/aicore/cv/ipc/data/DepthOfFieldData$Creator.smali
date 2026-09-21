.class public final Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;
    .registers 8

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;

    const-class p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/transsion/aicore/cv/ipc/UsageInfo;

    sget-object v3, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;-><init>(Lcom/transsion/aicore/cv/ipc/ErrorCode;Lcom/transsion/aicore/cv/ipc/UsageInfo;Lcom/transsion/aicore/cv/ipc/keyguardDepth/KeyguardImageData;Landroid/graphics/RectF;F)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData$Creator;->newArray(I)[Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;

    move-result-object p0

    return-object p0
.end method
