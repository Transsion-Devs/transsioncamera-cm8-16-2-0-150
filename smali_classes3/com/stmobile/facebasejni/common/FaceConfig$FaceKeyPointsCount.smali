.class public final enum Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stmobile/facebasejni/common/FaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceKeyPointsCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

.field public static final enum POINT_COUNT_106:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

.field public static final enum POINT_COUNT_137:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

.field public static final enum POINT_COUNT_21:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

.field public static final enum POINT_COUNT_240:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

.field public static final enum POINT_COUNT_296:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 34
    new-instance v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    const/4 v1, 0x0

    const/16 v2, 0x1000

    const-string v3, "POINT_COUNT_21"

    invoke-direct {v0, v3, v1, v2}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_21:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    .line 35
    new-instance v1, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    const/4 v2, 0x1

    const/16 v3, 0x2000

    const-string v4, "POINT_COUNT_106"

    invoke-direct {v1, v4, v2, v3}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_106:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    .line 36
    new-instance v2, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    const/4 v3, 0x2

    const/16 v4, 0x4000

    const-string v5, "POINT_COUNT_137"

    invoke-direct {v2, v5, v3, v4}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_137:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    .line 37
    new-instance v3, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    const/4 v4, 0x3

    const v5, 0x8000

    const-string v6, "POINT_COUNT_240"

    invoke-direct {v3, v6, v4, v5}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_240:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    .line 38
    new-instance v4, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    const-string v7, "POINT_COUNT_296"

    invoke-direct {v4, v7, v5, v6}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_296:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    .line 33
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    move-result-object v0

    sput-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->$VALUES:[Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;
    .registers 2

    .line 33
    const-class v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    return-object p0
.end method

.method public static values()[Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;
    .registers 1

    .line 33
    sget-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->$VALUES:[Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    invoke-virtual {v0}, [Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 47
    iget p0, p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->value:I

    return p0
.end method
