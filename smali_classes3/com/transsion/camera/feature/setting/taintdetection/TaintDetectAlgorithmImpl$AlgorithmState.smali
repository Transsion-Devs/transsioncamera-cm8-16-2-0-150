.class final enum Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AlgorithmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

.field public static final enum ERROR:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

.field public static final enum IDLE:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

.field public static final enum INIT_STARTING:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

.field public static final enum INIT_SUCCESS:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

.field public static final enum RESOURCE_CHECKING:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

.field public static final enum RESOURCE_READY:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;
    .registers 6

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->IDLE:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    sget-object v1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->RESOURCE_CHECKING:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    sget-object v2, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->RESOURCE_READY:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    sget-object v3, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->INIT_STARTING:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    sget-object v4, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->INIT_SUCCESS:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    sget-object v5, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->ERROR:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->IDLE:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 50
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    const-string v1, "RESOURCE_CHECKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->RESOURCE_CHECKING:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 51
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    const-string v1, "RESOURCE_READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->RESOURCE_READY:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 52
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    const-string v1, "INIT_STARTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->INIT_STARTING:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 53
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    const-string v1, "INIT_SUCCESS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->INIT_SUCCESS:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 54
    new-instance v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->ERROR:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 48
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->$values()[Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->$VALUES:[Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;
    .registers 2

    .line 48
    const-class v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;
    .registers 1

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->$VALUES:[Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    return-object v0
.end method
