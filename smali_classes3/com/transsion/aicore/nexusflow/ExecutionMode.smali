.class public final enum Lcom/transsion/aicore/nexusflow/ExecutionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/aicore/nexusflow/ExecutionMode;

.field public static final enum ASYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

.field public static final enum SYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/aicore/nexusflow/ExecutionMode;
    .registers 2

    sget-object v0, Lcom/transsion/aicore/nexusflow/ExecutionMode;->SYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    sget-object v1, Lcom/transsion/aicore/nexusflow/ExecutionMode;->ASYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    filled-new-array {v0, v1}, [Lcom/transsion/aicore/nexusflow/ExecutionMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/transsion/aicore/nexusflow/ExecutionMode;

    const-string v1, "SYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/ExecutionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/ExecutionMode;->SYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    .line 2
    new-instance v0, Lcom/transsion/aicore/nexusflow/ExecutionMode;

    const-string v1, "ASYNC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/ExecutionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/ExecutionMode;->ASYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    invoke-static {}, Lcom/transsion/aicore/nexusflow/ExecutionMode;->$values()[Lcom/transsion/aicore/nexusflow/ExecutionMode;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/ExecutionMode;->$VALUES:[Lcom/transsion/aicore/nexusflow/ExecutionMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/ExecutionMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/ExecutionMode;
    .registers 2

    const-class v0, Lcom/transsion/aicore/nexusflow/ExecutionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/transsion/aicore/nexusflow/ExecutionMode;

    return-object p0
.end method

.method public static values()[Lcom/transsion/aicore/nexusflow/ExecutionMode;
    .registers 1

    sget-object v0, Lcom/transsion/aicore/nexusflow/ExecutionMode;->$VALUES:[Lcom/transsion/aicore/nexusflow/ExecutionMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/transsion/aicore/nexusflow/ExecutionMode;

    return-object v0
.end method
