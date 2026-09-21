.class public Lcom/transsion/camera/app/common/tzservice/TZEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mImgReaderId:I

.field public final mJpegData:[B

.field public final mState:I

.field public final mTimestamp:J


# direct methods
.method public constructor <init>([BJ)V
    .registers 10

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/tzservice/TZEvent;-><init>([BJII)V

    return-void
.end method

.method public constructor <init>([BJI)V
    .registers 11

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/tzservice/TZEvent;-><init>([BJII)V

    return-void
.end method

.method public constructor <init>([BJII)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mJpegData:[B

    .line 25
    iput-wide p2, p0, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    .line 26
    iput p4, p0, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mState:I

    .line 27
    iput p5, p0, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mImgReaderId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TZEvent{ mJpegData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mJpegData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
