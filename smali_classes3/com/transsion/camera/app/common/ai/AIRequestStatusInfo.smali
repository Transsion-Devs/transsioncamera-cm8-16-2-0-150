.class public Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;
    }
.end annotation


# instance fields
.field private final mCompletedSize:I

.field private final mCurrentDayFailedSize:I

.field private final mFailedSize:I

.field private final mProcessingSize:I

.field private final mQueuingSize:I


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->-$$Nest$fgetmProcessingSize(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mProcessingSize:I

    .line 30
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->-$$Nest$fgetmQueuingSize(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mQueuingSize:I

    .line 31
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->-$$Nest$fgetmCompletedSize(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mCompletedSize:I

    .line 32
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->-$$Nest$fgetmFailedSize(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mFailedSize:I

    .line 33
    invoke-static {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->-$$Nest$fgetmCurrentDayFailedSize(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mCurrentDayFailedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;-><init>(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public completedSize()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mCompletedSize:I

    return p0
.end method

.method public currentDayFailedSize()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mCurrentDayFailedSize:I

    return p0
.end method

.method public failedSize()I
    .registers 1

    .line 49
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mFailedSize:I

    return p0
.end method

.method public processingSize()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mProcessingSize:I

    return p0
.end method

.method public queuingSize()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mQueuingSize:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AIRequestStatusInfo{mProcessingSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mProcessingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mQueuingSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mQueuingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCompletedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mCompletedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFailedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mFailedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentDayFailedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->mCurrentDayFailedSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
