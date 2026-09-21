.class public final enum Lcom/alibaba/sdk/android/oss/common/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/oss/common/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/oss/common/LogLevel;

.field public static final enum DEBUG:Lcom/alibaba/sdk/android/oss/common/LogLevel;

.field public static final enum ERROR:Lcom/alibaba/sdk/android/oss/common/LogLevel;

.field public static final enum INFO:Lcom/alibaba/sdk/android/oss/common/LogLevel;

.field public static final enum VERBOSE:Lcom/alibaba/sdk/android/oss/common/LogLevel;

.field public static final enum WARN:Lcom/alibaba/sdk/android/oss/common/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 4
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/common/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/LogLevel;->INFO:Lcom/alibaba/sdk/android/oss/common/LogLevel;

    .line 5
    new-instance v1, Lcom/alibaba/sdk/android/oss/common/LogLevel;

    const-string v2, "VERBOSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/alibaba/sdk/android/oss/common/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/sdk/android/oss/common/LogLevel;->VERBOSE:Lcom/alibaba/sdk/android/oss/common/LogLevel;

    .line 6
    new-instance v2, Lcom/alibaba/sdk/android/oss/common/LogLevel;

    const-string v3, "WARN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/alibaba/sdk/android/oss/common/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alibaba/sdk/android/oss/common/LogLevel;->WARN:Lcom/alibaba/sdk/android/oss/common/LogLevel;

    .line 7
    new-instance v3, Lcom/alibaba/sdk/android/oss/common/LogLevel;

    const-string v4, "DEBUG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/alibaba/sdk/android/oss/common/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/sdk/android/oss/common/LogLevel;->DEBUG:Lcom/alibaba/sdk/android/oss/common/LogLevel;

    .line 8
    new-instance v4, Lcom/alibaba/sdk/android/oss/common/LogLevel;

    const-string v5, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/alibaba/sdk/android/oss/common/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alibaba/sdk/android/oss/common/LogLevel;->ERROR:Lcom/alibaba/sdk/android/oss/common/LogLevel;

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/alibaba/sdk/android/oss/common/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/LogLevel;->$VALUES:[Lcom/alibaba/sdk/android/oss/common/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/common/LogLevel;
    .registers 2

    .line 3
    const-class v0, Lcom/alibaba/sdk/android/oss/common/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/common/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/common/LogLevel;
    .registers 1

    .line 3
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/LogLevel;->$VALUES:[Lcom/alibaba/sdk/android/oss/common/LogLevel;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/common/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/oss/common/LogLevel;

    return-object v0
.end method
