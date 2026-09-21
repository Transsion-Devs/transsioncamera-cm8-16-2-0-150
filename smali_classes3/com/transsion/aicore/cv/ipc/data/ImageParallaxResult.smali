.class public final Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult$CREATOR;


# instance fields
.field private final errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

.field private final imageParallaxList:Ljava/util/List;

.field private final usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;->CREATOR:Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult$CREATOR;

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
    sget-object v1, Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo;->CREATOR:Lcom/transsion/aicore/cv/ipc/parallax/ImageParallaxInfo$CREATOR;

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
    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;-><init>(Lcom/transsion/aicore/cv/ipc/ErrorCode;Ljava/util/List;Lcom/transsion/aicore/cv/ipc/UsageInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/aicore/cv/ipc/ErrorCode;Ljava/util/List;Lcom/transsion/aicore/cv/ipc/UsageInfo;)V
    .registers 5

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageParallaxList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usageInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    .line 11
    iput-object p2, p0, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;->imageParallaxList:Ljava/util/List;

    .line 12
    iput-object p3, p0, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;->errorCode:Lcom/transsion/aicore/cv/ipc/ErrorCode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 23
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;->imageParallaxList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 24
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;->usageInfo:Lcom/transsion/aicore/cv/ipc/UsageInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
