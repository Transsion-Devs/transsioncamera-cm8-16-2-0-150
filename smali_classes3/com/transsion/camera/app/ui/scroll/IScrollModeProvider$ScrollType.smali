.class public final enum Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

.field public static final enum BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

.field public static final enum BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

.field public static final enum LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

.field public static final enum RIGHT_LEFT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

.field public static final enum TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

.field public static final enum TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;
    .registers 6

    .line 4
    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    sget-object v2, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    sget-object v3, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    sget-object v4, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    sget-object v5, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->RIGHT_LEFT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 5
    new-instance v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    const-string v1, "TOP_BOTTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_BOTTOM:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    .line 6
    new-instance v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    const-string v1, "BOTTOM_TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_TOP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    .line 7
    new-instance v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    const-string v1, "TOP_DOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    .line 8
    new-instance v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    const-string v1, "BOTTOM_UP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    .line 9
    new-instance v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    const-string v1, "LEFT_RIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    .line 10
    new-instance v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    const-string v1, "RIGHT_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->RIGHT_LEFT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    .line 4
    invoke-static {}, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->$values()[Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->$VALUES:[Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;
    .registers 2

    .line 4
    const-class v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;
    .registers 1

    .line 4
    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->$VALUES:[Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    return-object v0
.end method
