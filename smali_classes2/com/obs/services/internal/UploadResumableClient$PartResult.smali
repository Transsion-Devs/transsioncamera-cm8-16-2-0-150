.class Lcom/obs/services/internal/UploadResumableClient$PartResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/UploadResumableClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PartResult"
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private isFailed:Z

.field private length:J

.field private offset:J

.field private partNumber:I


# direct methods
.method public constructor <init>(IJJ)V
    .registers 6

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput p1, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->partNumber:I

    .line 691
    iput-wide p2, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->offset:J

    .line 692
    iput-wide p4, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->length:J

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .registers 1

    .line 728
    iget-object p0, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public getLength()J
    .registers 3

    .line 712
    iget-wide v0, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->length:J

    return-wide v0
.end method

.method public getOffset()J
    .registers 3

    .line 704
    iget-wide v0, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->offset:J

    return-wide v0
.end method

.method public getpartNumber()I
    .registers 1

    .line 696
    iget p0, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->partNumber:I

    return p0
.end method

.method public isFailed()Z
    .registers 1

    .line 720
    iget-boolean p0, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->isFailed:Z

    return p0
.end method

.method public setException(Ljava/lang/Exception;)V
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setFailed(Z)V
    .registers 2

    .line 724
    iput-boolean p1, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->isFailed:Z

    return-void
.end method

.method public setLength(J)V
    .registers 3

    .line 716
    iput-wide p1, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->length:J

    return-void
.end method

.method public setOffset(J)V
    .registers 3

    .line 708
    iput-wide p1, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->offset:J

    return-void
.end method

.method public setpartNumber(I)V
    .registers 2

    .line 700
    iput p1, p0, Lcom/obs/services/internal/UploadResumableClient$PartResult;->partNumber:I

    return-void
.end method
