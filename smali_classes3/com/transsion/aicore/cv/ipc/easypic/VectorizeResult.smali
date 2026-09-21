.class public final Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentItemCusTime:J

.field private failureCount:I

.field private failureList:Ljava/util/List;

.field private insertCount:I

.field private resultType:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

.field private succeedCount:I

.field private totalCusTime:J

.field private updateCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult$Creator;

    invoke-direct {v0}, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult$Creator;-><init>()V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;JJIIIILjava/util/List;)V
    .registers 12

    const-string v0, "resultType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->resultType:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    .line 9
    iput-wide p2, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->currentItemCusTime:J

    iput-wide p4, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->totalCusTime:J

    .line 10
    iput p6, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->updateCount:I

    iput p7, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->insertCount:I

    .line 11
    iput p8, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->succeedCount:I

    iput p9, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureCount:I

    .line 12
    iput-object p10, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;

    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->resultType:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    iget-object v3, p1, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->resultType:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->currentItemCusTime:J

    iget-wide v5, p1, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->currentItemCusTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget-wide v3, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->totalCusTime:J

    iget-wide v5, p1, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->totalCusTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->updateCount:I

    iget v3, p1, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->updateCount:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->insertCount:I

    iget v3, p1, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->insertCount:I

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->succeedCount:I

    iget v3, p1, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->succeedCount:I

    if-eq v1, v3, :cond_3a

    return v2

    :cond_3a
    iget v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureCount:I

    iget v3, p1, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureCount:I

    if-eq v1, v3, :cond_41

    return v2

    :cond_41
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureList:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureList:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    return v2

    :cond_4c
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->resultType:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->currentItemCusTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->totalCusTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->updateCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->insertCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->succeedCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureList:Ljava/util/List;

    if-nez p0, :cond_44

    const/4 p0, 0x0

    goto :goto_48

    :cond_44
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_48
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->resultType:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    iget-wide v1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->currentItemCusTime:J

    iget-wide v3, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->totalCusTime:J

    iget v5, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->updateCount:I

    iget v6, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->insertCount:I

    iget v7, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->succeedCount:I

    iget v8, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureCount:I

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureList:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VectorizeResult(resultType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", currentItemCusTime="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalCusTime="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", updateCount="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", insertCount="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", succeedCount="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", failureCount="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", failureList="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->resultType:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->currentItemCusTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->totalCusTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->updateCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->insertCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->succeedCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;->failureList:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
