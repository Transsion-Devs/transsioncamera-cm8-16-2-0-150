.class public final enum Lcom/transsion/camera/feature/mode/doc/object/Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/doc/object/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/doc/object/Type;

.field public static final enum LINE:Lcom/transsion/camera/feature/mode/doc/object/Type;

.field public static final enum LINECOLOR:Lcom/transsion/camera/feature/mode/doc/object/Type;

.field public static final enum POINT:Lcom/transsion/camera/feature/mode/doc/object/Type;

.field public static final enum POINTCOLOR:Lcom/transsion/camera/feature/mode/doc/object/Type;

.field public static final enum POINTSIZE:Lcom/transsion/camera/feature/mode/doc/object/Type;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/doc/object/Type;
    .registers 5

    .line 3
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Type;->POINT:Lcom/transsion/camera/feature/mode/doc/object/Type;

    sget-object v1, Lcom/transsion/camera/feature/mode/doc/object/Type;->POINTCOLOR:Lcom/transsion/camera/feature/mode/doc/object/Type;

    sget-object v2, Lcom/transsion/camera/feature/mode/doc/object/Type;->POINTSIZE:Lcom/transsion/camera/feature/mode/doc/object/Type;

    sget-object v3, Lcom/transsion/camera/feature/mode/doc/object/Type;->LINE:Lcom/transsion/camera/feature/mode/doc/object/Type;

    sget-object v4, Lcom/transsion/camera/feature/mode/doc/object/Type;->LINECOLOR:Lcom/transsion/camera/feature/mode/doc/object/Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/camera/feature/mode/doc/object/Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/object/Type;

    const-string v1, "POINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/object/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/Type;->POINT:Lcom/transsion/camera/feature/mode/doc/object/Type;

    .line 5
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/object/Type;

    const-string v1, "POINTCOLOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/object/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/Type;->POINTCOLOR:Lcom/transsion/camera/feature/mode/doc/object/Type;

    .line 6
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/object/Type;

    const-string v1, "POINTSIZE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/object/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/Type;->POINTSIZE:Lcom/transsion/camera/feature/mode/doc/object/Type;

    .line 7
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/object/Type;

    const-string v1, "LINE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/object/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/Type;->LINE:Lcom/transsion/camera/feature/mode/doc/object/Type;

    .line 8
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/object/Type;

    const-string v1, "LINECOLOR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/object/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/Type;->LINECOLOR:Lcom/transsion/camera/feature/mode/doc/object/Type;

    .line 3
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/object/Type;->$values()[Lcom/transsion/camera/feature/mode/doc/object/Type;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/Type;->$VALUES:[Lcom/transsion/camera/feature/mode/doc/object/Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/doc/object/Type;
    .registers 2

    .line 3
    const-class v0, Lcom/transsion/camera/feature/mode/doc/object/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/doc/object/Type;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/doc/object/Type;
    .registers 1

    .line 3
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Type;->$VALUES:[Lcom/transsion/camera/feature/mode/doc/object/Type;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/doc/object/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/doc/object/Type;

    return-object v0
.end method
