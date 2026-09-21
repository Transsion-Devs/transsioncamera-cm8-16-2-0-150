.class public final enum Lcom/transsion/camera/app/common/IAppUI$UIState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/IAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/IAppUI$UIState;

.field public static final enum OFF:Lcom/transsion/camera/app/common/IAppUI$UIState;

.field public static final enum ON:Lcom/transsion/camera/app/common/IAppUI$UIState;

.field public static final enum UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 3

    .line 300
    sget-object v0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    sget-object v1, Lcom/transsion/camera/app/common/IAppUI$UIState;->ON:Lcom/transsion/camera/app/common/IAppUI$UIState;

    sget-object v2, Lcom/transsion/camera/app/common/IAppUI$UIState;->OFF:Lcom/transsion/camera/app/common/IAppUI$UIState;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 301
    new-instance v0, Lcom/transsion/camera/app/common/IAppUI$UIState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    new-instance v0, Lcom/transsion/camera/app/common/IAppUI$UIState;

    const-string v1, "ON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IAppUI$UIState;->ON:Lcom/transsion/camera/app/common/IAppUI$UIState;

    new-instance v0, Lcom/transsion/camera/app/common/IAppUI$UIState;

    const-string v1, "OFF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IAppUI$UIState;->OFF:Lcom/transsion/camera/app/common/IAppUI$UIState;

    .line 300
    invoke-static {}, Lcom/transsion/camera/app/common/IAppUI$UIState;->$values()[Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/IAppUI$UIState;->$VALUES:[Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 300
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 300
    const-class v0, Lcom/transsion/camera/app/common/IAppUI$UIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 1

    .line 300
    sget-object v0, Lcom/transsion/camera/app/common/IAppUI$UIState;->$VALUES:[Lcom/transsion/camera/app/common/IAppUI$UIState;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/IAppUI$UIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object v0
.end method
