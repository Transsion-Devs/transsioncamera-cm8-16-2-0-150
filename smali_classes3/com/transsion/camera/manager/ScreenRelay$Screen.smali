.class public abstract enum Lcom/transsion/camera/manager/ScreenRelay$Screen;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ScreenRelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Screen"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/manager/ScreenRelay$Screen;

.field public static final enum PRIMARY:Lcom/transsion/camera/manager/ScreenRelay$Screen;

.field public static final enum SECONDARY:Lcom/transsion/camera/manager/ScreenRelay$Screen;

.field public static final enum UNKNOWN:Lcom/transsion/camera/manager/ScreenRelay$Screen;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/manager/ScreenRelay$Screen;
    .registers 3

    .line 33
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->UNKNOWN:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    sget-object v1, Lcom/transsion/camera/manager/ScreenRelay$Screen;->PRIMARY:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    sget-object v2, Lcom/transsion/camera/manager/ScreenRelay$Screen;->SECONDARY:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/manager/ScreenRelay$Screen;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 34
    new-instance v0, Lcom/transsion/camera/manager/ScreenRelay$Screen$1;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/manager/ScreenRelay$Screen$1;-><init>(Ljava/lang/String;ILcom/transsion/camera/manager/ScreenRelay-IA;)V

    sput-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->UNKNOWN:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    .line 41
    new-instance v0, Lcom/transsion/camera/manager/ScreenRelay$Screen$2;

    const-string v1, "PRIMARY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/manager/ScreenRelay$Screen$2;-><init>(Ljava/lang/String;ILcom/transsion/camera/manager/ScreenRelay-IA;)V

    sput-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->PRIMARY:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    .line 48
    new-instance v0, Lcom/transsion/camera/manager/ScreenRelay$Screen$3;

    const-string v1, "SECONDARY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/manager/ScreenRelay$Screen$3;-><init>(Ljava/lang/String;ILcom/transsion/camera/manager/ScreenRelay-IA;)V

    sput-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->SECONDARY:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    .line 33
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay$Screen;->$values()[Lcom/transsion/camera/manager/ScreenRelay$Screen;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->$VALUES:[Lcom/transsion/camera/manager/ScreenRelay$Screen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/transsion/camera/manager/ScreenRelay-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/manager/ScreenRelay$Screen;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/manager/ScreenRelay$Screen;
    .registers 2

    .line 33
    const-class v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/manager/ScreenRelay$Screen;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/manager/ScreenRelay$Screen;
    .registers 1

    .line 33
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->$VALUES:[Lcom/transsion/camera/manager/ScreenRelay$Screen;

    invoke-virtual {v0}, [Lcom/transsion/camera/manager/ScreenRelay$Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/manager/ScreenRelay$Screen;

    return-object v0
.end method
