.class public final enum Lcom/transsion/camera/app/common/IAppUI$AnimationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/IAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/IAppUI$AnimationType;

.field public static final enum ENTER_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

.field public static final enum EXIT_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

.field public static final enum NORMAL:Lcom/transsion/camera/app/common/IAppUI$AnimationType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/IAppUI$AnimationType;
    .registers 3

    .line 304
    sget-object v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->ENTER_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    sget-object v1, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->EXIT_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    sget-object v2, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->NORMAL:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 305
    new-instance v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    const-string v1, "ENTER_DV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->ENTER_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    new-instance v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    const-string v1, "EXIT_DV"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->EXIT_DV:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    new-instance v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    const-string v1, "NORMAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->NORMAL:Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    .line 304
    invoke-static {}, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->$values()[Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->$VALUES:[Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$AnimationType;
    .registers 2

    .line 304
    const-class v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/IAppUI$AnimationType;
    .registers 1

    .line 304
    sget-object v0, Lcom/transsion/camera/app/common/IAppUI$AnimationType;->$VALUES:[Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/IAppUI$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/IAppUI$AnimationType;

    return-object v0
.end method
