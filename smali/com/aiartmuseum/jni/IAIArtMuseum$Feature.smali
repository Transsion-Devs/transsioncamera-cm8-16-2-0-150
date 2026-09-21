.class public final enum Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

.field public static final enum PARTIAL:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

.field public static final enum STYLE:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

.field public static final enum STYLE_SYNC:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

.field public static final enum TRAVEL:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;


# direct methods
.method private static synthetic $values()[Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;
    .registers 4

    .line 19
    sget-object v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->STYLE:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    sget-object v1, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->PARTIAL:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    sget-object v2, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->TRAVEL:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    sget-object v3, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->STYLE_SYNC:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    filled-new-array {v0, v1, v2, v3}, [Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    const-string v1, "STYLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->STYLE:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    .line 21
    new-instance v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    const-string v1, "PARTIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->PARTIAL:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    .line 22
    new-instance v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    const-string v1, "TRAVEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->TRAVEL:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    .line 23
    new-instance v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    const-string v1, "STYLE_SYNC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->STYLE_SYNC:Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    .line 19
    invoke-static {}, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->$values()[Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    move-result-object v0

    sput-object v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->$VALUES:[Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;
    .registers 2

    .line 19
    const-class v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    return-object p0
.end method

.method public static values()[Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;
    .registers 1

    .line 19
    sget-object v0, Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->$VALUES:[Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    invoke-virtual {v0}, [Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aiartmuseum/jni/IAIArtMuseum$Feature;

    return-object v0
.end method
