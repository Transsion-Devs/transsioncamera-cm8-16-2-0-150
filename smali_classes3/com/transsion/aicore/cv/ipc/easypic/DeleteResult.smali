.class public final Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deletedCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult$Creator;

    invoke-direct {v0}, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult$Creator;-><init>()V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;->deletedCount:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;->deletedCount:I

    iget p1, p1, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;->deletedCount:I

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;->deletedCount:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;->deletedCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteResult(deletedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;->deletedCount:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
