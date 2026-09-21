.class public final enum Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ICameraMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModeType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field public static final enum PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field public static final enum VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 2

    .line 167
    sget-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 168
    new-instance v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 169
    new-instance v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 167
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->$values()[Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->$VALUES:[Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 2

    .line 167
    const-class v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 167
    sget-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->$VALUES:[Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object v0
.end method
