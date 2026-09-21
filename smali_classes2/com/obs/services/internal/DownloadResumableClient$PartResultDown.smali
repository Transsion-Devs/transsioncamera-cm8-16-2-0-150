.class Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/DownloadResumableClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PartResultDown"
.end annotation


# instance fields
.field private end:J

.field private exception:Ljava/lang/Exception;

.field private isFailed:Z

.field private partNumber:I

.field private start:J


# direct methods
.method public constructor <init>(IJJ)V
    .registers 6

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput p1, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->partNumber:I

    .line 838
    iput-wide p2, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->start:J

    .line 839
    iput-wide p4, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->end:J

    return-void
.end method


# virtual methods
.method public getEnd()J
    .registers 3

    .line 867
    iget-wide v0, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->end:J

    return-wide v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 1

    .line 914
    iget-object p0, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public getStart()J
    .registers 3

    .line 848
    iget-wide v0, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->start:J

    return-wide v0
.end method

.method public getpartNumber()I
    .registers 1

    .line 886
    iget p0, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->partNumber:I

    return p0
.end method

.method public isFailed()Z
    .registers 1

    .line 895
    iget-boolean p0, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->isFailed:Z

    return p0
.end method

.method public setEnd(J)V
    .registers 3

    .line 877
    iput-wide p1, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->end:J

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .registers 2

    .line 924
    iput-object p1, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setFailed(Z)V
    .registers 2

    .line 905
    iput-boolean p1, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->isFailed:Z

    return-void
.end method

.method public setStart(J)V
    .registers 3

    .line 858
    iput-wide p1, p0, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->start:J

    return-void
.end method
