.class public final enum Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

.field public static final enum GESTURE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

.field public static final enum MAKEUP:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

.field public static final enum MAKEUP3D:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

.field public static final enum QRCODE:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

.field public static final enum SMILE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

.field public static final enum TAINT_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

.field public static final enum VLOG:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

.field public static final enum VOICE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;
    .registers 8

    .line 29
    sget-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->MAKEUP:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    sget-object v1, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->MAKEUP3D:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    sget-object v2, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->VLOG:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    sget-object v3, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->QRCODE:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->SMILE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    sget-object v5, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->VOICE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    sget-object v6, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->GESTURE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    sget-object v7, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->TAINT_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    filled-new-array/range {v0 .. v7}, [Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    const-string v1, "MAKEUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->MAKEUP:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    new-instance v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    const-string v1, "MAKEUP3D"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->MAKEUP3D:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    new-instance v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    const-string v1, "VLOG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->VLOG:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    new-instance v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    const-string v1, "QRCODE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->QRCODE:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    new-instance v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    const-string v1, "SMILE_DETECTION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->SMILE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    new-instance v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    const-string v1, "VOICE_DETECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->VOICE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    new-instance v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    const-string v1, "GESTURE_DETECTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->GESTURE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    new-instance v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    const-string v1, "TAINT_DETECTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->TAINT_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->$values()[Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->$VALUES:[Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;
    .registers 2

    .line 29
    const-class v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;
    .registers 1

    .line 29
    sget-object v0, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->$VALUES:[Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    return-object v0
.end method
