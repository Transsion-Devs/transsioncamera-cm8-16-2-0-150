.class public Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCompletedSize:I

.field private mCurrentDayFailedSize:I

.field private mFailedSize:I

.field private mProcessingSize:I

.field private mQueuingSize:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCompletedSize(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->mCompletedSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentDayFailedSize(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->mCurrentDayFailedSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFailedSize(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->mFailedSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessingSize(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->mProcessingSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueuingSize(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->mQueuingSize:I

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;
    .registers 3

    .line 106
    new-instance v0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;-><init>(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo-IA;)V

    return-object v0
.end method

.method public completedSize(I)Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;
    .registers 2

    .line 91
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->mCompletedSize:I

    return-object p0
.end method

.method public currentDayFailedSize(I)Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;
    .registers 2

    .line 101
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->mCurrentDayFailedSize:I

    return-object p0
.end method

.method public failedSize(I)Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;
    .registers 2

    .line 96
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->mFailedSize:I

    return-object p0
.end method

.method public processingSize(I)Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;
    .registers 2

    .line 81
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->mProcessingSize:I

    return-object p0
.end method

.method public queuingSize(I)Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;
    .registers 2

    .line 86
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo$Builder;->mQueuingSize:I

    return-object p0
.end method
