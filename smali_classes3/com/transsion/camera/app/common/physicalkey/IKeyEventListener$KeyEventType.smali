.class public final enum Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyEventType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

.field public static final enum FROM_BROADCAST:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

.field public static final enum FROM_SETTING:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;
    .registers 2

    .line 4
    sget-object v0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->FROM_BROADCAST:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    sget-object v1, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->FROM_SETTING:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 5
    new-instance v0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    const-string v1, "FROM_BROADCAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->FROM_BROADCAST:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    new-instance v0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    const-string v1, "FROM_SETTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->FROM_SETTING:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    .line 4
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->$values()[Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->$VALUES:[Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;
    .registers 2

    .line 4
    const-class v0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;
    .registers 1

    .line 4
    sget-object v0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->$VALUES:[Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    return-object v0
.end method
