.class public final Lcom/transsion/aicore/cv/ipc/imageDepth/PointData$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/aicore/cv/ipc/imageDepth/PointData$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;
    .registers 2

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance p0, Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    invoke-direct {p0, p1}, Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/imageDepth/PointData$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;
    .registers 2

    .line 31
    new-array p0, p1, [Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/imageDepth/PointData$CREATOR;->newArray(I)[Lcom/transsion/aicore/cv/ipc/imageDepth/PointData;

    move-result-object p0

    return-object p0
.end method
