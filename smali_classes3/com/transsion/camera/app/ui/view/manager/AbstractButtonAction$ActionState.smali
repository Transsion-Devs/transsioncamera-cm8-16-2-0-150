.class public final enum Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

.field public static final enum ACTIVATE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

.field public static final enum CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

.field public static final enum IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;
    .registers 3

    .line 35
    sget-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    sget-object v1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    sget-object v2, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 37
    new-instance v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    const-string v1, "ACTIVATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 38
    new-instance v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    const-string v1, "CONSUME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 35
    invoke-static {}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->$values()[Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->$VALUES:[Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;
    .registers 2

    .line 35
    const-class v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;
    .registers 1

    .line 35
    sget-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->$VALUES:[Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    return-object v0
.end method
