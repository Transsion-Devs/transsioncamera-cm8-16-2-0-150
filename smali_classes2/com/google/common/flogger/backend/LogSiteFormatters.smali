.class public abstract enum Lcom/google/common/flogger/backend/LogSiteFormatters;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/flogger/backend/LogSiteFormatter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/flogger/backend/LogSiteFormatters;",
        ">;",
        "Lcom/google/common/flogger/backend/LogSiteFormatter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/flogger/backend/LogSiteFormatters;

.field public static final enum DEFAULT:Lcom/google/common/flogger/backend/LogSiteFormatters;

.field public static final enum NO_OP:Lcom/google/common/flogger/backend/LogSiteFormatters;

.field public static final enum SIMPLE_CLASSNAME:Lcom/google/common/flogger/backend/LogSiteFormatters;


# direct methods
.method private static synthetic $values()[Lcom/google/common/flogger/backend/LogSiteFormatters;
    .registers 3

    .line 22
    sget-object v0, Lcom/google/common/flogger/backend/LogSiteFormatters;->DEFAULT:Lcom/google/common/flogger/backend/LogSiteFormatters;

    sget-object v1, Lcom/google/common/flogger/backend/LogSiteFormatters;->NO_OP:Lcom/google/common/flogger/backend/LogSiteFormatters;

    sget-object v2, Lcom/google/common/flogger/backend/LogSiteFormatters;->SIMPLE_CLASSNAME:Lcom/google/common/flogger/backend/LogSiteFormatters;

    filled-new-array {v0, v1, v2}, [Lcom/google/common/flogger/backend/LogSiteFormatters;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Lcom/google/common/flogger/backend/LogSiteFormatters$1;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/flogger/backend/LogSiteFormatters$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flogger/backend/LogSiteFormatters;->DEFAULT:Lcom/google/common/flogger/backend/LogSiteFormatters;

    .line 38
    new-instance v0, Lcom/google/common/flogger/backend/LogSiteFormatters$2;

    const-string v1, "NO_OP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/flogger/backend/LogSiteFormatters$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flogger/backend/LogSiteFormatters;->NO_OP:Lcom/google/common/flogger/backend/LogSiteFormatters;

    .line 45
    new-instance v0, Lcom/google/common/flogger/backend/LogSiteFormatters$3;

    const-string v1, "SIMPLE_CLASSNAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/flogger/backend/LogSiteFormatters$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/flogger/backend/LogSiteFormatters;->SIMPLE_CLASSNAME:Lcom/google/common/flogger/backend/LogSiteFormatters;

    .line 22
    invoke-static {}, Lcom/google/common/flogger/backend/LogSiteFormatters;->$values()[Lcom/google/common/flogger/backend/LogSiteFormatters;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/LogSiteFormatters;->$VALUES:[Lcom/google/common/flogger/backend/LogSiteFormatters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/flogger/backend/LogSiteFormatters$1;)V
    .registers 4

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/backend/LogSiteFormatters;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/flogger/backend/LogSiteFormatters;
    .registers 2

    .line 22
    const-class v0, Lcom/google/common/flogger/backend/LogSiteFormatters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/backend/LogSiteFormatters;

    return-object p0
.end method

.method public static values()[Lcom/google/common/flogger/backend/LogSiteFormatters;
    .registers 1

    .line 22
    sget-object v0, Lcom/google/common/flogger/backend/LogSiteFormatters;->$VALUES:[Lcom/google/common/flogger/backend/LogSiteFormatters;

    invoke-virtual {v0}, [Lcom/google/common/flogger/backend/LogSiteFormatters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/flogger/backend/LogSiteFormatters;

    return-object v0
.end method
