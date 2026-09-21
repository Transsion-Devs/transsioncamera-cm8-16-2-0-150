.class public final Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;
    .registers 13

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->valueOf(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;-><init>(Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;JJIIIILjava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult$Creator;->newArray(I)[Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;

    move-result-object p0

    return-object p0
.end method
