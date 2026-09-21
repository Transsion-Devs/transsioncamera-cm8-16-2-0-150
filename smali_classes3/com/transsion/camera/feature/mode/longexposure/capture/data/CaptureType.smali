.class public enum Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

.field public static final enum CANCEL:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

.field public static final enum NORMAL:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

.field public static final enum STOP:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;
    .registers 3

    .line 16
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->NORMAL:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    sget-object v1, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->CANCEL:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    sget-object v2, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->STOP:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 18
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType$1;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType$1;-><init>(Ljava/lang/String;ILcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType-IA;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->NORMAL:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType$2;

    const-string v1, "CANCEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType$2;-><init>(Ljava/lang/String;ILcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType-IA;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->CANCEL:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    .line 34
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType$3;

    const-string v1, "STOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType$3;-><init>(Ljava/lang/String;ILcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType-IA;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->STOP:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    .line 16
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->$values()[Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->$VALUES:[Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;
    .registers 2

    .line 16
    const-class v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;
    .registers 1

    .line 16
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->$VALUES:[Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    return-object v0
.end method
