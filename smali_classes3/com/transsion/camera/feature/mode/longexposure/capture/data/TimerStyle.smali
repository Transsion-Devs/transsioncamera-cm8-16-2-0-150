.class public enum Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

.field public static final enum COUNT_DOWN:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

.field public static final enum COUNT_UP:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;
    .registers 2

    .line 16
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->COUNT_UP:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    sget-object v1, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->COUNT_DOWN:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 18
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle$1;

    const-string v1, "COUNT_UP"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle$1;-><init>(Ljava/lang/String;ILcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle-IA;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->COUNT_UP:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle$2;

    const-string v1, "COUNT_DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle$2;-><init>(Ljava/lang/String;ILcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle-IA;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->COUNT_DOWN:Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    .line 16
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->$values()[Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->$VALUES:[Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;
    .registers 2

    .line 16
    const-class v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;
    .registers 1

    .line 16
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->$VALUES:[Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/longexposure/capture/data/TimerStyle;

    return-object v0
.end method
