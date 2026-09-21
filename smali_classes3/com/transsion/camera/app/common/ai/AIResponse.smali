.class public Lcom/transsion/camera/app/common/ai/AIResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ai/AIResponse$Builder;
    }
.end annotation


# static fields
.field public static final AIGC_ERROR_CODE_FACE_ALIGNMENT_FAIL:I = 0x49593

.field public static final AIGC_ERROR_CODE_FACE_ANGLE_WRONG:I = 0x49592

.field public static final AIGC_ERROR_CODE_FACE_OCCLUDED:I = 0x49591

.field public static final AIGC_ERROR_CODE_NO_FACE:I = 0x49590

.field public static final AIGC_ERROR_CODE_TEMPLATE_ERROR:I = 0x49594

.field public static final AI_ERROR_CODE_TIMESTAMP_EXPIRED:I = 0x49444

.field public static final AI_ERROR_UNKNOWN:I = -0x1


# instance fields
.field private final mJpeg:[B

.field private final mMessage:Ljava/lang/String;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[B)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIResponse;->mStatusCode:I

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/app/common/ai/AIResponse;->mMessage:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/transsion/camera/app/common/ai/AIResponse;->mJpeg:[B

    return-void
.end method


# virtual methods
.method public getJpeg()[B
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIResponse;->mJpeg:[B

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIResponse;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/ai/AIResponse;->mStatusCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AIResponse{mStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ai/AIResponse;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ai/AIResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mJpeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIResponse;->mJpeg:[B

    if-nez p0, :cond_25

    const-string p0, "null"

    goto :goto_2a

    :cond_25
    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_2a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
