.class public final enum Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/NexusFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

.field public static final enum DEBUG:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

.field public static final enum ERROR:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

.field public static final enum INFO:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

.field public static final enum NONE:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

.field public static final enum VERBOSE:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

.field public static final enum WARN:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;
    .registers 6

    sget-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->VERBOSE:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    sget-object v1, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->DEBUG:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    sget-object v2, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->INFO:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    sget-object v3, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->WARN:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    sget-object v4, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->ERROR:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    sget-object v5, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->NONE:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->VERBOSE:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    .line 2
    new-instance v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->DEBUG:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    .line 3
    new-instance v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->INFO:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    .line 4
    new-instance v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    const-string v1, "WARN"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v3}, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->WARN:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    .line 5
    new-instance v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    const-string v1, "ERROR"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->ERROR:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    .line 6
    new-instance v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    const-string v1, "NONE"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->NONE:Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    invoke-static {}, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->$values()[Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->$VALUES:[Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;
    .registers 2

    const-class v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;
    .registers 1

    sget-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->$VALUES:[Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->value:I

    return p0
.end method
