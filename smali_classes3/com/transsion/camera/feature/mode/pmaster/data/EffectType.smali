.class public final enum Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

.field public static final enum CAMERA_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

.field public static final enum CAMERA_NOT_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

.field public static final enum LIVE_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

.field public static final enum LIVE_NOT_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;
    .registers 4

    .line 3
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->CAMERA_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    sget-object v2, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->CAMERA_NOT_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->LIVE_NOT_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    const-string v1, "CAMERA_ASIA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->CAMERA_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    .line 5
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    const-string v1, "LIVE_ASIA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    .line 6
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    const-string v1, "CAMERA_NOT_ASIA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->CAMERA_NOT_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    .line 7
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    const-string v1, "LIVE_NOT_ASIA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->LIVE_NOT_ASIA:Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    .line 3
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->$values()[Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->$VALUES:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;
    .registers 2

    .line 3
    const-class v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;
    .registers 1

    .line 3
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->$VALUES:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/pmaster/data/EffectType;

    return-object v0
.end method
