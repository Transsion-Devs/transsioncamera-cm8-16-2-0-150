.class public final Lcom/transsion/aicore/cv/ipc/easypic/SearchResult$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;
    .registers 10

    .line 0
    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1f
    if-eq v0, p0, :cond_2f

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2f
    new-instance v0, Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;

    invoke-direct/range {v0 .. v6}, Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/easypic/SearchResult$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/cv/ipc/easypic/SearchResult$Creator;->newArray(I)[Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;

    move-result-object p0

    return-object p0
.end method
