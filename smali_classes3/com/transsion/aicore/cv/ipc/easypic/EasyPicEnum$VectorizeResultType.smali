.class public final enum Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

.field public static final enum FINISH:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

.field public static final enum PROGRESS:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

.field public static final enum UNKNOW:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;
    .registers 3

    sget-object v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->PROGRESS:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    sget-object v1, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->FINISH:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    sget-object v2, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->UNKNOW:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 5
    new-instance v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    const-string v1, "PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->PROGRESS:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    new-instance v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    const-string v1, "FINISH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->FINISH:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    new-instance v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    const-string v1, "UNKNOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->UNKNOW:Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    invoke-static {}, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->$values()[Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->$VALUES:[Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;
    .registers 2

    const-class v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 6
    check-cast p0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;
    .registers 1

    sget-object v0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;->$VALUES:[Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, [Lcom/transsion/aicore/cv/ipc/easypic/EasyPicEnum$VectorizeResultType;

    return-object v0
.end method
