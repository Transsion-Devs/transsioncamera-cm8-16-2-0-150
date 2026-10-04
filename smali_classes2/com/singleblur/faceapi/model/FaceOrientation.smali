.class public final enum Lcom/singleblur/faceapi/model/FaceOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/FaceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum DOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum LEFT:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum RIGHT:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum UP:Lcom/singleblur/faceapi/model/FaceOrientation;

.field private static sFaceOrientations:[Lcom/singleblur/faceapi/model/FaceOrientation;


# instance fields
.field final nativeInt:I


# direct methods
.method private static synthetic $values()[Lcom/singleblur/faceapi/model/FaceOrientation;
    .registers 5

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    sget-object v1, Lcom/singleblur/faceapi/model/FaceOrientation;->LEFT:Lcom/singleblur/faceapi/model/FaceOrientation;

    sget-object v2, Lcom/singleblur/faceapi/model/FaceOrientation;->DOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    sget-object v3, Lcom/singleblur/faceapi/model/FaceOrientation;->RIGHT:Lcom/singleblur/faceapi/model/FaceOrientation;

    sget-object v4, Lcom/singleblur/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/singleblur/faceapi/model/FaceOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 17

    .line 5
    new-instance v2, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v0, "UP"

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 6
    new-instance v0, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v1, "LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->LEFT:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 7
    new-instance v5, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v1, "DOWN"

    const/4 v3, 0x4

    invoke-direct {v5, v1, v4, v3}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/singleblur/faceapi/model/FaceOrientation;->DOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 8
    new-instance v9, Lcom/singleblur/faceapi/model/FaceOrientation;

    const/4 v1, 0x3

    const/16 v4, 0x8

    const-string v6, "RIGHT"

    invoke-direct {v9, v6, v1, v4}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/singleblur/faceapi/model/FaceOrientation;->RIGHT:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 9
    new-instance v1, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v4, "UNKNOWN"

    const/16 v6, 0xf

    invoke-direct {v1, v4, v3, v6}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/singleblur/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 3
    invoke-static {}, Lcom/singleblur/faceapi/model/FaceOrientation;->$values()[Lcom/singleblur/faceapi/model/FaceOrientation;

    move-result-object v3

    sput-object v3, Lcom/singleblur/faceapi/model/FaceOrientation;->$VALUES:[Lcom/singleblur/faceapi/model/FaceOrientation;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v0

    .line 17
    filled-new-array/range {v1 .. v16}, [Lcom/singleblur/faceapi/model/FaceOrientation;

    move-result-object v0

    sput-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->sFaceOrientations:[Lcom/singleblur/faceapi/model/FaceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/singleblur/faceapi/model/FaceOrientation;->nativeInt:I

    return-void
.end method

.method public static nativeToOrientation(I)Lcom/singleblur/faceapi/model/FaceOrientation;
    .registers 2

    .line 27
    sget-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->sFaceOrientations:[Lcom/singleblur/faceapi/model/FaceOrientation;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/FaceOrientation;
    .registers 2

    .line 3
    const-class v0, Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/FaceOrientation;
    .registers 1

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->$VALUES:[Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/FaceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 23
    iget p0, p0, Lcom/singleblur/faceapi/model/FaceOrientation;->nativeInt:I

    return p0
.end method
