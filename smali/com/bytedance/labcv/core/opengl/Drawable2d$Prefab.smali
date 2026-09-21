.class public final enum Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/core/opengl/Drawable2d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Prefab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

.field public static final enum FULL_RECTANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

.field public static final enum RECTANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

.field public static final enum TRIANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;


# direct methods
.method private static synthetic $values()[Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;
    .registers 3

    .line 147
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->TRIANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    sget-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->RECTANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    sget-object v2, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    filled-new-array {v0, v1, v2}, [Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 148
    new-instance v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    const-string v1, "TRIANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->TRIANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    new-instance v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->RECTANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    new-instance v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    const-string v1, "FULL_RECTANGLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    .line 147
    invoke-static {}, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->$values()[Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->$VALUES:[Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;
    .registers 2

    .line 147
    const-class v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;
    .registers 1

    .line 147
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->$VALUES:[Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    return-object v0
.end method
