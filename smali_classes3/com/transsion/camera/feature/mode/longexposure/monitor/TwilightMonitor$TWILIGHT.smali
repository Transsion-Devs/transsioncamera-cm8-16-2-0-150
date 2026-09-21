.class public enum Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "TWILIGHT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

.field public static final enum DAY:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

.field public static final enum NIGHT:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;
    .registers 2

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;->DAY:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    sget-object v1, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;->NIGHT:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 38
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT$1;

    const-string v1, "DAY"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT$1;-><init>(Ljava/lang/String;ILcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor-IA;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;->DAY:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    .line 45
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT$2;

    const-string v1, "NIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT$2;-><init>(Ljava/lang/String;ILcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor-IA;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;->NIGHT:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    .line 37
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;->$values()[Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;->$VALUES:[Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;
    .registers 2

    .line 37
    const-class v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;
    .registers 1

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;->$VALUES:[Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;

    return-object v0
.end method
