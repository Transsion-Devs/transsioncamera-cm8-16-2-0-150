.class final enum Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/MediaChainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MediaChainState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .registers 4

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    sget-object v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    sget-object v2, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    sget-object v3, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v1, "STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 48
    new-instance v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v1, "STATE_ALGORITHM_LOADED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 49
    new-instance v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v1, "STATE_PROCESSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 50
    new-instance v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v1, "STATE_PROCESS_END"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 46
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->$values()[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->$VALUES:[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .registers 2

    .line 46
    const-class v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .registers 1

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->$VALUES:[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object v0
.end method
