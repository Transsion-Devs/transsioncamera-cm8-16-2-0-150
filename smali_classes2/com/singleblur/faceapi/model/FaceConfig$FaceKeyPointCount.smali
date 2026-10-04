.class public final enum Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singleblur/faceapi/model/FaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceKeyPointCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

.field public static final enum POINT_COUNT_106:Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

.field public static final enum POINT_COUNT_21:Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;


# instance fields
.field final value:I


# direct methods
.method private static synthetic $values()[Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;
    .registers 2

    .line 33
    sget-object v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->POINT_COUNT_21:Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    sget-object v1, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->POINT_COUNT_106:Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    filled-new-array {v0, v1}, [Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 35
    new-instance v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    const/4 v1, 0x0

    const/16 v2, 0x100

    const-string v3, "POINT_COUNT_21"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->POINT_COUNT_21:Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    .line 36
    new-instance v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    const/4 v1, 0x1

    const/16 v2, 0x200

    const-string v3, "POINT_COUNT_106"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->POINT_COUNT_106:Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    .line 33
    invoke-static {}, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->$values()[Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    move-result-object v0

    sput-object v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->$VALUES:[Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;
    .registers 2

    .line 33
    const-class v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;
    .registers 1

    .line 33
    sget-object v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->$VALUES:[Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->value:I

    return p0
.end method
