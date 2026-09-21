.class public final Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;
    .registers 10

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-class p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_3a
    if-eq v0, p0, :cond_4a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_4a
    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;

    invoke-direct/range {v0 .. v6}, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Lcom/transsion/aicore/cv/ipc/portraitMatting/PointWrapper;Landroid/graphics/RectF;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData$Creator;->newArray(I)[Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;

    move-result-object p0

    return-object p0
.end method
