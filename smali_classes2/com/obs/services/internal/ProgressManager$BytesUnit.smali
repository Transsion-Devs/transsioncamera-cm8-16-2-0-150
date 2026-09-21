.class Lcom/obs/services/internal/ProgressManager$BytesUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/ProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BytesUnit"
.end annotation


# instance fields
.field bytes:J

.field dateTime:J


# direct methods
.method constructor <init>(JJ)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/obs/services/internal/ProgressManager$BytesUnit;->dateTime:J

    .line 30
    iput-wide p3, p0, Lcom/obs/services/internal/ProgressManager$BytesUnit;->bytes:J

    return-void
.end method
