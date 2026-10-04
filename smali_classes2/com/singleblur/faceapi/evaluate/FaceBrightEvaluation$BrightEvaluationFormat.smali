.class public final enum Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrightEvaluationFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

.field public static final enum BGRA8888:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

.field public static final enum Gray_BGRA:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

.field public static final enum Gray_RGBA:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

.field public static final enum Gray_YUV:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

.field public static final enum RGBA8888:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

.field public static final enum YUV:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;


# instance fields
.field private final nativeInt:I


# direct methods
.method private static synthetic $values()[Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;
    .registers 6

    .line 62
    sget-object v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->RGBA8888:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    sget-object v1, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->BGRA8888:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    sget-object v2, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->YUV:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    sget-object v3, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->Gray_YUV:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    sget-object v4, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->Gray_BGRA:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    sget-object v5, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->Gray_RGBA:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    filled-new-array/range {v0 .. v5}, [Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 63
    new-instance v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    const-string v1, "RGBA8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->RGBA8888:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    .line 64
    new-instance v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    const-string v1, "BGRA8888"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->BGRA8888:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    .line 65
    new-instance v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    const-string v1, "YUV"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->YUV:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    .line 66
    new-instance v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    const-string v1, "Gray_YUV"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->Gray_YUV:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    .line 67
    new-instance v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    const-string v1, "Gray_BGRA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->Gray_BGRA:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    .line 68
    new-instance v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    const-string v1, "Gray_RGBA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->Gray_RGBA:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    .line 62
    invoke-static {}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->$values()[Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    move-result-object v0

    sput-object v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->$VALUES:[Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;
    .registers 2

    .line 62
    const-class v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;
    .registers 1

    .line 62
    sget-object v0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->$VALUES:[Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->nativeInt:I

    return p0
.end method
