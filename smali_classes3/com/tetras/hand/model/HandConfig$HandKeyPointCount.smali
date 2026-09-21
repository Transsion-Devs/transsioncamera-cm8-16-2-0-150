.class public final enum Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tetras/hand/model/HandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandKeyPointCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

.field public static final enum POINT_COUNT_106:Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

.field public static final enum POINT_COUNT_21:Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

.field public static final enum POINT_COUNT_240:Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 40
    new-instance v0, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    const/4 v1, 0x0

    const/16 v2, 0x100

    const-string v3, "POINT_COUNT_21"

    invoke-direct {v0, v3, v1, v2}, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;->POINT_COUNT_21:Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    .line 41
    new-instance v1, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    const/4 v2, 0x1

    const/16 v3, 0x200

    const-string v4, "POINT_COUNT_106"

    invoke-direct {v1, v4, v2, v3}, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;->POINT_COUNT_106:Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    .line 42
    new-instance v2, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    const/4 v3, 0x2

    const/16 v4, 0x400

    const-string v5, "POINT_COUNT_240"

    invoke-direct {v2, v5, v3, v4}, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;->POINT_COUNT_240:Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    .line 38
    filled-new-array {v0, v1, v2}, [Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    move-result-object v0

    sput-object v0, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;->$VALUES:[Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;
    .registers 2

    .line 38
    const-class v0, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    return-object p0
.end method

.method public static values()[Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;
    .registers 1

    .line 38
    sget-object v0, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;->$VALUES:[Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    invoke-virtual {v0}, [Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/tetras/hand/model/HandConfig$HandKeyPointCount;->value:I

    return p0
.end method
